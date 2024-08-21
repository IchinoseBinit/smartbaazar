import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/api/login_api.dart';
import 'package:smartbazar/features/auth/model/login_model.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/utils/custom_exception.dart';
import 'package:smartbazar/utils/custom_loading_indicatior.dart';

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
      await Navigator.push(
          context, MaterialPageRoute(builder: (_) => HomeScreen()));
    } catch (e) {
      state = ErrorState(getCustomException(e));
    }
  }
}
