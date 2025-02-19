import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

Future<String> followUnfollowVendor(String id) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
     parameter: {
        'vendor_id': id, // Move vendor_id to the request body
      },

      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/follow',
      // queryParameters: {
      //   'vendor_id': 9, // Move vendor_id to the request body
      // },
    );

    // Extract the message from the response
    final String message = response.data['msg'] ?? 'Unknown response';

    return message;
  } catch (e) {
    print("Error: $e");
    throw Exception('Failed to follow/unfollow vendor: $e');
  }
}
