import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/auth/api/forget_password_api.dart';
import 'package:smartbazar/features/auth/model/forget_password_model.dart';
import 'package:smartbazar/features/auth/view/otp_screen.dart';
import 'package:smartbazar/utils/custom_exception.dart';

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
      {required String phone,
      required String phone_country,
      required String login}) async {
    state = LoadingState();
    try {
      final forgetPassword = await _forgetPasswordApi.foergetPassword(
          phone: phone, phone_country: phone_country, login: login);
      state = LoadedState<ForgetPasswordModel>(response: forgetPassword);
      await Navigator.push(
          context, MaterialPageRoute(builder: (_) => OtpScreen()));
    } catch (ex) {
      state = ErrorState(getCustomException(ex));
    }
  }
}
