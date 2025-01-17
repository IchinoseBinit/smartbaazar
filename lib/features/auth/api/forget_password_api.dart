import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/forget_password_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

class ForgetPasswordApi {
  final SmartClient _clinet = SmartClient();

  foergetPassword({
    required int phone,
    required String phone_country,
  }) async {
    final parameter = {
      'phone': phone,
      'phone_country': phone_country,
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
