import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_search_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/venodr_search_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_product_search_api.g.dart';

@riverpod
Future<List<VendorProductSearchResponse>> searchvendorproduct(
    ref, String id, String query) async {
  final SmartClient client = SmartClient();
  try {
    // Prepare query parameters
    final queryParameters = <String, String>{};
    if (query.isNotEmpty) {
      queryParameters['query'] = query;
    }

    // Send the GET request
    final response = await client.request(
      requestType: RequestType.get,
      queryParameters: queryParameters,
      url: "https://smartbazaar.jianjun-rnd.com.np/api/users/vendorsearch/$id",
    );

    print("Response data: ${response.data}");

    // Safely extract the posts data
    final List<dynamic>? postsJson = response.data['data']?['posts']?['data'];

    // If postsJson is null, return an empty list
    if (postsJson == null) return [];

    // Map JSON to VendorProductSearchResponse list
    print("Mapped data: $postsJson");
    return postsJson
        .map((postJson) => VendorProductSearchResponse.fromJson(postJson))
        .toList();
  } catch (e) {
    print("Error occurred: $e");
    if (e is DioException) {
      print("DioError details: ${e.response?.data}");
    }
    // Return an empty list on error
    return [];
  }
}
