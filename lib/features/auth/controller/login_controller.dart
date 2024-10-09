import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/api/login_api.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/custom_exception.dart';

final authRepositoryProvider = Provider<LoginApi>((ref) {
  return LoginApi();
});
final loginController =
    StateNotifierProvider<LoginController, GenericState>((ref) {
  return LoginController(LoginApi());
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
      final loginData = await LoginApi().login(email, password);
      state = LoadedState<LoginData>(response: loginData);
      await Navigator.push(context,
          MaterialPageRoute(builder: (_) => const BottomNavigationScreen()));
    } catch (e) {
      state = ErrorState(getCustomException(e));
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
        String userName = session['result']?['name']?.toString() ?? '';
        String userId = session['result']?['id']?.toString() ?? '';
        state = LoadedState<LoginData>(response: LoginData.fromJson(session));
        SmartClinet.userId = userId;
        SmartClinet.userName = userName;
        await pref.setString('userId', userId);
        await pref.setString('userName', userName);
        print("................................................$userId , $userName");
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const BottomNavigationScreen(),
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
