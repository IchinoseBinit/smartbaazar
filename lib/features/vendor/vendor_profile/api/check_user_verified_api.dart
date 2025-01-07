import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

@riverpod
Future<String> checkuserverified() async {
  SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.checkuserverifyurl,
    );
    return response.data['user_verify'];
  } catch (e) {
    print("error has come $e");
  }
  return '0';
}
