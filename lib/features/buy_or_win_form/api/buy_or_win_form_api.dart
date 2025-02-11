import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'buy_or_win_form_api.g.dart';

@riverpod
Future<String> postBuyOrWin(ref, String postId, String qty) async {
  final SmartClient client = SmartClient(); // Assuming this is your API client
  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url:
          'https://smartbazaar.jianjun-rnd.com.np/api/users/product_sponsor_store',
      parameter: {'post_id': postId, 'gift_qty': qty},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return jsonResponse['msg'] ?? 'Success, but no message returned!';
    } else {
      throw Exception(
          'Failed to post sponsor data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    debugPrint('Error in postBuyOrWin: $e');
    throw Exception('Failed to post sponsor data');
  }
}
