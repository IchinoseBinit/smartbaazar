import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

@riverpod
Future<String> deletegift(String id) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.sponsorshipDestroy}/$id", // Use id in URL
    );

    if (response.statusCode == 200 && response.data != null) {
      // Extract "message" from the nested data field
      return response.data['data']['message'] ?? "please try again later";
    }
  } catch (e) {
    print('Error posting Gift: $e');
  }
  return "please try again later";
}
