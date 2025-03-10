import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_all_products_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_all_products_api.g.dart';
@riverpod
Future<VendorAllProductsResponse> getVendorAllProducts(
  ref,
  int vendorid,
  {int page = 1} // Add page parameter
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/vendor_all_products/$vendorid?page=$page', // Add page query
    );

    final responseData = response.data['data'];

    if (responseData['all_products'] is Map<String, dynamic> &&
        responseData['all_products']['data'] is List) {
      return VendorAllProductsResponse.fromJson(response.data);
    } else {
      throw Exception('Unexpected API response structure');
    }
  } catch (e) {
    print("Error: $e");
    throw Exception('Failed to fetch vendor products: $e');
  }
}
