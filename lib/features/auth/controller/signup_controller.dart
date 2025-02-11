import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/api/signup_api.dart';
import 'package:smartbazar/features/auth/model/signup_model.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';

final singUpProvider = Provider<SignUpAPi>((ref) {
  return SignUpAPi();
});
final signUpController = StateNotifierProvider<SignUpController, GenericState>(
    (ref) => SignUpController(SignUpAPi()));

class SignUpController extends StateNotifier<GenericState> {
  final SignUpAPi _signUpApi;
  SignUpController(this._signUpApi) : super(InitialState());
  Future<void> signUp(BuildContext context,
      {required String name,
      required String phone,
      required String email,
      required String passsword,
      required String password_confirmation,
      required String country_code,
      required String dateofb,
      required String username,
      required int accept_terms,
      required String ugender,
      required int accept_marketing_offers}) async {
    state = LoadedState();
    try {
      final SignupModel singUpData = await _signUpApi.signUp(
          name: name,
          phone: int.tryParse(phone)!,
          email: email,
          passsword: passsword,
          dob: dateofb,
          password_confirmation: password_confirmation,
          country_code: country_code,
          username: username,
          accept_terms: accept_terms,
          gender: ugender,
          accept_marketing_offers: accept_marketing_offers);
      state = LoadedState<SignupModel>(response: singUpData);
      await Navigator.push(
          context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    } catch (e) {
      String errorMessage =
          "An unexpected error occurred."; // Default error message
      if (e is DioException && e.response?.statusCode == 400) {
        final responseBody = e.response?.data;
        if (responseBody is String) {
          errorMessage =
              responseBody; // Directly use the raw string error message
        }
        state = ErrorState(errorMessage);
        print("$state, $responseBody");
      }

      print("Error: $errorMessage");
    }
  }
}
