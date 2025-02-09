import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

class VerifyUser {
  final String id;
  final String userVerify;

  VerifyUser({required this.id, required this.userVerify});

  factory VerifyUser.fromJson(Map<String, dynamic> json) {
    return VerifyUser(
      id: json['id'].toString(),
      userVerify: json['user_verify'].toString(),
    );
  }
}

Future<VerifyUser?> checkUserVerified() async {
  SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.checkuserverifyurl,
    );

    if (response.data != null && response.data['user_verify'] != null) {
      return VerifyUser.fromJson(response.data);
    }
  } catch (e) {
    print("Error occurred: $e");
  }
  return null;
}
