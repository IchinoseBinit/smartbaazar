import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_profile_api.g.dart';

@riverpod
Future<VendorData> getVendorProfileData(
    GetVendorProfileDataRef ref, String vendorName,
    {int postType = 1}) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.getVendorProfileDataByUserName}/$vendorName?posttype=$postType',
    );

    // Debug log for post array (to verify post content)
    print("Response Data: ${response.data['data']['advertisements']}");

    final jsonData = response.data;

    // Check if the response is successful
    if (response.statusCode == 200) {
      // Extract vendor data and deserialize it to the VendorData model
      final vendorJson = jsonData['data'];

      // Ensure vendorJson is not null before attempting to parse
      if (vendorJson == null) {
        throw Exception('Vendor data is missing in the response');
      }

      // Parse the vendor data using VendorData.fromJson
      VendorData vendorData = VendorData.fromJson(vendorJson);

      // Optionally, log the parsed posts to verify the data structure
      print("Vendor Posts: ${vendorData.posts?.data?.length}");

      // Return the vendor data
      return vendorData;
    } else {
      throw Exception('Failed to load vendor data, status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching vendor data: $e');
    throw Exception('Failed to load vendor data: ${e.toString()}');
  }
}
