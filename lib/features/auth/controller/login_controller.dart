import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/api/login_api.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/splash_ad_screen/splash_screen_ad.dart';
import 'package:smartbazar/network_service/smart-client.dart';



final authRepositoryProvider = Provider<LoginApi>((ref) {
  return LoginApi();
});

final loginController = StateNotifierProvider<LoginController, GenericState>((ref) {
  return LoginController(ref.read(authRepositoryProvider));
});

class LoginController extends StateNotifier<GenericState> {
  final LoginApi _loginApi;

  LoginController(this._loginApi) : super(InitialState());

  Future<void> login(BuildContext context,
      {required WidgetRef ref, required String email, required String password}) async {
    state = LoadingState();

    try {
      final loginData = await _loginApi.login(email, password);
      state = LoadedState<LoginData>(response: loginData);
      _storeUserData(loginData);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const BottomNavigationScreen()),
      );
    } catch (e) {
      print("Login error: $e");
      _handleError(context, e);
    }
  }

  Future<void> continueSession(BuildContext context) async {
    final sessionData = await _getSessionData();
    final accessToken = await _getAccessToken();


    state = LoadingState();

    if (sessionData == null || accessToken == null || accessToken.isEmpty) {
      _navigateToLoginScreen(context, "Session expired. Please log in again.");
      return;
    }

    try {
      final session = json.decode(sessionData);
      final userId = session['result']?['id']?.toString() ?? '';
      if (userId.isNotEmpty) {
        state = LoadedState<LoginData>(response: LoginData.fromJson(session));
        SmartClient.userId = userId;
        SmartClient.refresh=session['extra']['refresh'];
        SmartClient.token  =session['extra']['authToken'];
    // TODO: SmartClient.token is not set here

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const AdSplashScreen()),
        );
      } else {
        _navigateToLoginScreen(context, "Invalid session. Please log in again.");
      }
    } catch (e) {
      print("Session continuation error: $e");
      _navigateToLoginScreen(context, "An error occurred. Please log in again.");
    }
  }

  Future<void> refreshTokenIfExpired(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final refreshToken = prefs.getString("refreshToken");

    if (refreshToken != null && refreshToken.isNotEmpty) {
      try {
        final newTokens = await _loginApi.refreshToken(refreshToken);
        await _storeNewTokens(newTokens);
      } catch (e) {
        _navigateToLoginScreen(context, "Session expired. Please log in again.");
      }
    }
  }

  void _storeUserData(LoginData loginData) async {
    final prefs = await SharedPreferences.getInstance();
    SmartClient.userId = loginData.result.id.toString();
    SmartClient.userName = loginData.result.name;
    SmartClient.token = loginData.extra.authToken;
    SmartClient.refresh = loginData.extra.refreshToken;

    await prefs.setString("session", json.encode(loginData.toJson()));
    await prefs.setString("accessToken", SmartClient.token);
    await prefs.setString("refreshToken", SmartClient.refresh);
  }

  Future<String?> _getSessionData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('session');
  }

  Future<String?> _getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  void _navigateToLoginScreen(BuildContext context, String message) {
    _showErrorDialog(context, message);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void _handleError(BuildContext context, dynamic error) {
    String errorMessage = 'An unexpected error occurred.';
    if (error is DioException) {
      final responseData = error.response?.data;
      if (responseData is Map<String, dynamic>) {
        errorMessage = responseData['message'] ?? 'An unexpected error occurred.';
      } else if (responseData is String) {
        errorMessage = responseData;
      }
    }
    state = ErrorState(errorMessage);
    _showErrorDialog(context, errorMessage);
  }

  Future<void> _storeNewTokens(Map<String, dynamic> newTokens) async {
    final prefs = await SharedPreferences.getInstance();
    SmartClient.token = newTokens['authToken'];
    SmartClient.refresh = newTokens['refreshToken'];

    await prefs.setString("accessToken", SmartClient.token);
    await prefs.setString("refreshToken", SmartClient.refresh);
  }
}

