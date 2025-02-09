import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_all_products_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_all_products_api.g.dart';

@riverpod
Future<VendorAllProductsResponse> getVendorAllProducts(
  ref,
  int vendorid,
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.get,
      url:
          'https://smartbazaar.jianjun-rnd.com.np/api/users/vendor_all_products/$vendorid',
    );

    // Parse the entire response into the VendorAllProductsResponse model
    return VendorAllProductsResponse.fromJson(response.data);
  } catch (e) {
    print("error $e");
    // Handle errors gracefully
    throw Exception('Failed to fetch vendor card: $e');
  }
}
