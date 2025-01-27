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
    // Prepare query parameters
    final queryParameters = <String, String>{};
    if (query.isNotEmpty) {
      queryParameters['query'] = query;
    }

    // Send the GET request
    final response = await client.request(
      requestType: RequestType.getWithToken,
      queryParameters: queryParameters,
      url: "https://smartbazaar.jianjun-rnd.com.np/api/users/vendorsearch/$id",
    );
    print("poka ${response.data['data']['posts']}");
    // Deserialize the response into the model
    final responseData =
        VendorProductSearchResponse.fromJson(response.data['data']);
    print("paka $responseData");
    return responseData;
  } catch (e) {
    print("Error occurred: $e");

    if (e is DioException) {
      print("DioError details: ${e.response?.data}");
    }

    // Rethrow the error or return an empty/default response
    throw Exception("Failed to fetch vendor products.");
  }
}
