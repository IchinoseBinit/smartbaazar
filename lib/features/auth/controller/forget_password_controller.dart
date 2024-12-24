
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/api/forget_password_api.dart';
import 'package:smartbazar/features/auth/model/forget_password_model.dart';
import 'package:smartbazar/features/auth/view/otp_screen.dart';

final forgetPasswordProvider =
    Provider<ForgetPasswordApi>((ref) => ForgetPasswordApi());
final forgetPasswordController =
    StateNotifierProvider<ForgetPasswordController, GenericState>((ref) {
  return ForgetPasswordController(ForgetPasswordApi());
});

class ForgetPasswordController extends StateNotifier<GenericState> {
  final ForgetPasswordApi _forgetPasswordApi;
  ForgetPasswordController(this._forgetPasswordApi) : super(InitialState());
  Future<void> forgetPassword(BuildContext context,
      {
        required int phone,
      required String phone_country,
    }) async {
    state = LoadingState();
    try {
      final forgetPassword = await _forgetPasswordApi.foergetPassword(
          phone: phone, phone_country: phone_country,);
      state = LoadedState<ForgetPasswordModel>(response: forgetPassword);
      await Navigator.push(
          context, MaterialPageRoute(builder: (_) => const OtpScreen()));
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
