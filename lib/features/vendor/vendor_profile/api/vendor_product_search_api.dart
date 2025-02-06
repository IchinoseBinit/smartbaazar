import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_search_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_product_search_api.g.dart';

@riverpod
Future<VendorProductSearchResponse> searchVendorProduct(
  ref,
  String id,
  String query,
) async {
  final SmartClient client = SmartClient();

  try {
    // Prepare query parameters if required
    final queryParameters = <String, String>{};
    if (query.isNotEmpty) {
      queryParameters['query'] = query;
    }

    // Send the GET request
    final response = await client.request(
      requestType: RequestType.getWithToken,
      queryParameters: {'query': query},
      parameter: {'query': query},
      url: "https://smartbazaar.jianjun-rnd.com.np/api/users/vendor/$id",
    );

    if (response.statusCode == 200) {
      print("Response Data: ${response.data}");

      // Access the correct data part of the response
      final responseData = VendorProductSearchResponse.fromJson(response.data);

      print("Parsed Data: $responseData");

      return responseData;
    } else {
      throw Exception("Unexpected response status: ${response.statusCode}");
    }
  } on DioException catch (e) {
    print("DioException occurred: ${e.message}");
    print("Response data: ${e.response?.data}");

    throw Exception(
        "Failed to fetch vendor products: ${e.response?.statusMessage}");
  } catch (e) {
    print("An error occurred: $e");

    throw Exception("Failed to fetch vendor products.");
  }
}
