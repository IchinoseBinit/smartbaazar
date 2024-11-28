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
      // Use _loginApi instead of creating a new instance
      final loginData = await _loginApi.login(email, password);
      state = LoadedState<LoginData>(response: loginData);

      final String userId = loginData!.result.id.toString();
      final String userName = loginData.result.name;
      final String useremail = loginData.result.email?.toString() ?? '';
      final String phone = loginData.result.phone?.toString() ?? '';
      // print("useremail$useremail");
      final prefs = await SharedPreferences.getInstance();
      SmartClinet.userId = userId; // Set userId in SmartClinet
      SmartClinet.userName = userName; // Set userName in SmartClinet
      SmartClinet.userEmail = useremail; // Set userEmail in SmartClinet

      await prefs.setString('userId', userId);
      await prefs.setString('userName', userName);
      await prefs.setString('userEmail', useremail);
      await prefs.setString('phone', phone);
      // Navigate to the bottom navigation screen, replacing the login screen
      await Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => const BottomNavigationScreen()));
    } catch (e) {
      String errorMessage = 'An unexpected error occurred.';

      if (e is DioException) {
        if (e.response != null) {
          final responseData = e.response!.data;
          if (responseData is Map<String, dynamic>) {
            errorMessage =
                responseData['message'] ?? 'An unexpected error occurred.';

            // Handle specific server error messages for better user feedback
            // if (responseData['message'] ==
            //     "These credentials do not match our records.") {
            //   errorMessage = "Invalid username or password. Please try again.";
            // }
          } else if (responseData is String) {
            errorMessage = responseData;
          }
        } else {
          errorMessage = 'Network error: Unable to connect to the server.';
        }
      } else if (e is Exception) {
        errorMessage = e.toString().replaceAll('Exception: ', '');
      }

      print("Error: $errorMessage");
      print("Error details: ${e.toString()}");
      state = ErrorState(errorMessage);
      print("Error type: ${e.runtimeType}");
    }
  }

  Future<void> continueSession(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();
    final sessionString = pref.getString('session');
    SmartClinet.token = pref.getString('accessToken') ?? '';
    SmartClinet.refresh = pref.getString('refreshToken') ?? '';
    state = LoadingState();

    try {
      if (sessionString != null) {
        final session = json.decode(sessionString);
        String userId = session['result']?['id']?.toString() ?? '';

        if (userId.isNotEmpty) {
          state = LoadedState<LoginData>(response: LoginData.fromJson(session));
          SmartClinet.userId = userId;
          await pref.setString('userId', userId);
          await Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const AdSplashScreen(),
            ),
          );
        } else {
          await Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const LoginScreen(),
            ),
          );
        }
      } else {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      }
    } catch (e) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ),
      );
    }
  }
}
