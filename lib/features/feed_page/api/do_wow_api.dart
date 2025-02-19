import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/feed_gift_card_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'do_wow_api.g.dart';
@riverpod
Future<String> dowowapi(ref, String userId) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/feed_wow/$userId',
    );

    if (response.statusCode == 200) {
      // Decode JSON response
      final responseData = response.data; 

      // Extract and return the message
      return responseData["msg"] ?? "Wow status updated!";
    } else {
      throw Exception('Failed to update wow status.');
    }
  } catch (e) {
    print('Error updating wow status: $e');
    throw Exception('Failed to update wow status: $e');
  }
}
