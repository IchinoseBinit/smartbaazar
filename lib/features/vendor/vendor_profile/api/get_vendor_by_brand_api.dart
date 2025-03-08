import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_brands_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_vendor_by_brand_api.g.dart';

@riverpod
Future<VendorBrandResponse> getvendorbybrandname(
  ref,
  int vendorid,
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/vendor/$vendorid',
    );

    // Parse the entire response into the VendorBrandResponse model
    print("bibash ${VendorBrandResponse.fromJson(response.data).data?.services}");
    return VendorBrandResponse.fromJson(response.data);
  } catch (e) {
    print("error $e");
    // Handle errors gracefully
    throw Exception('Failed to fetch vendor card: $e');
  }
}
