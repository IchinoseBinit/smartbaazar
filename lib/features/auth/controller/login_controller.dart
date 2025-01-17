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
import 'package:smartbazar/network_service/smart-clinet.dart';

final authRepositoryProvider = Provider<LoginApi>((ref) {
  return LoginApi();
});

final loginController =
    StateNotifierProvider<LoginController, GenericState>((ref) {
  return LoginController(ref.read(authRepositoryProvider));
});

class LoginController extends StateNotifier<GenericState> {
  final LoginApi _loginApi;

  LoginController(this._loginApi) : super(InitialState());

  Future<void> login(BuildContext context,
      {required WidgetRef ref,
      required String email,
      required String password}) async {
    state = LoadingState();
    try {
      final loginData = await _loginApi.login(email, password);
      state = LoadedState<LoginData>(response: loginData);

      final prefs = await SharedPreferences.getInstance();
      // Save user data in SmartClinet for global access
      _saveUserDataToSmartClinet(loginData!);

      // Save user data in SharedPreferences for persistence
      await _saveUserDataToPreferences(prefs, loginData);

      // Navigate to the bottom navigation screen
      _navigateToScreen(context, const BottomNavigationScreen());
    } catch (e) {
      print("Login error: $e");
      String errorMessage = _getErrorMessage(e);
      state = ErrorState(errorMessage);
    }
  }

Future<void> continueSession(BuildContext context) async {
  final pref = await SharedPreferences.getInstance();
  final sessionString = pref.getString('session');
  SmartClinet.token = pref.getString('accessToken') ?? '';
  SmartClinet.refresh = pref.getString('refreshToken') ?? '';
  state = LoadingState();

  if (sessionString == null) {
    _navigateToLoginScreen(context);
    return;
  }

  try {
    final session = json.decode(sessionString);
    final userId = session['result']?['id']?.toString() ?? '';
    if (userId.isNotEmpty) {
      state = LoadedState<LoginData>(response: LoginData.fromJson(session));
      SmartClinet.userId = userId;
      await pref.setString('userId', userId);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const AdSplashScreen()),
      );
    } else {
      _navigateToLoginScreen(context);
    }
  } catch (e) {
    print("Error during session continuation: $e");
    _navigateToLoginScreen(context);
  }
}



  String _getErrorMessage(dynamic e) {
    if (e is DioException) {
      final responseData = e.response?.data;
      if (responseData is Map<String, dynamic>) {
        return responseData['message'] ?? 'An unexpected error occurred.';
      }
      return responseData is String
          ? responseData
          : 'An unexpected error occurred.';
    }
    return e.toString();
  }

  void _saveUserDataToSmartClinet(LoginData loginData) {
    SmartClinet.userId = loginData.result.id.toString();
    SmartClinet.userName = loginData.result.name;
    SmartClinet.userEmail = loginData.result.email ?? '';
  }

  Future<void> _saveUserDataToPreferences(SharedPreferences prefs, LoginData loginData) async {
    await prefs.setString('userId', SmartClinet.userId);
    await prefs.setString('userName', SmartClinet.userName);
    await prefs.setString('userEmail', SmartClinet.userEmail);
  }

  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }
}
