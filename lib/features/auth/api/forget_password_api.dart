import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/forget_password_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class ForgetPasswordApi {
  final SmartClinet _clinet = SmartClinet();

  foergetPassword(
      {required String phone,
      required String phone_country,
      required String login}) async {
    final parameter = {
      'phone': phone,
      'phone_country': phone_country,
      'login': login,
    };
    try {
      final response = await _clinet.request(
          requestType: RequestType.postWithToken,
          url: ApiConstants.forgetPasswordUrl,
          parameter: parameter);

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        if (response.data != null) {
          final forgetPassswordData =
              ForgetPasswordModel.fromJson(response.data);
          return forgetPassswordData;
        } else {
          throw Exception("Failed to send email");
        }
      }
    } catch (ex) {
      rethrow;
    }
  }
}
