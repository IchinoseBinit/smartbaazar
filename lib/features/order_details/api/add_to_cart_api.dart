import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart'; // For better error handling with Dio

part 'add_to_cart_api.g.dart';

@riverpod
Future<String> addtocart(ref, String id) async {
  final SmartClient client = SmartClient();
  try {
    final Response response = await client.request(
      parameter: {'id': id},
      requestType: RequestType.postWithToken,
      queryParameters: {'id': id},
      url: "https://smartbazaar.jianjun-rnd.com.np/api/users/addToCart",
    );

    if (response.statusCode == 200) {
      // Extract message from response
      final data = response.data;
      if (data != null &&
          data['data'] != null &&
          data['data']['message'] != null) {
        return data['data']['message']; // Returning the success message
      } else {
        throw Exception('Unexpected response format');
      }
    } else {
      return 'no';
      //   throw Exception(
      //    'Failed to add to cart. Status code: ${response.statusCode}');
    }
  } catch (e, stackTrace) {
    print('Error adding to cart: $e\nStackTrace: $stackTrace');
    return 'no';
    //  throw Exception('Failed to add to cart: $e');
  }
}
