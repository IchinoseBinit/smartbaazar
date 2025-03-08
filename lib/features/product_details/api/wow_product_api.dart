import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'wow_product_api.g.dart';

@riverpod
Future<String> wowThePost( ref, String id) async {
  try {
    final SmartClient client = SmartClient();
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/post_wow/$id',
    );

    if (response.statusCode == 200) {
      return response.data['msg'] ?? 'Success';
    } else {
      print("Failed to subscribe/unsubscribe: ${response.statusCode}");
      return 'Error: ${response.statusCode}';
    }
  } catch (e) {
    print("An error occurred: $e");
    return 'Error: $e';
  }
}
