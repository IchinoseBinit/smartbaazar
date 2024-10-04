
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_profile_api.g.dart';

@riverpod
Future<VendorData> getVendorProfileData(
    GetVendorProfileDataRef ref, String vendorName) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.getVendorProfileDataByUserName}/$vendorName',
    );
    print("Response: ${response.data}"); // Log the full response

    if (response.statusCode == 200) {
      // Since response.data is already a Map, access it directly
      var jsonData = response.data;

      // Check if 'data' or 'vendor' is null
      if (jsonData['data'] == null || jsonData['data']['vendor'] == null) {
        throw Exception('Vendor data is missing in the response');
      }

      // Access the vendor data
      return VendorData.fromJson(jsonData['data']);
    } else {
      throw Exception('Failed to load Vendor data');
    }
  } catch (e) {
    print('Error fetching vendor data: $e');
    throw Exception('Failed to load vendor data: $e');
  }
}
