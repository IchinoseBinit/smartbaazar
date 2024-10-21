import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_profile_api.g.dart';

@riverpod
Future<VendorData> getVendorProfileData(
  GetVendorProfileDataRef ref,
  String vendorName, {
  int postType = 1,
  String category = "brandnew",
}) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url:
          '${ApiConstants.getVendorProfileDataByUserName}/$vendorName?posttype=$postType',
    );

    if (response.statusCode == 200 && response.data != null) {
      final data = response.data['data'];

      // Handling 'brandnew' and 'used' posts
      List<VendorPost> postList = [];
      if (category == 'brandnew' && data["brandnew"] != null) {
        postList = List<VendorPost>.from(
          data["brandnew"].map((json) => VendorPost.fromJson(json)),
        );
      } else if (category == 'used' && data["used"] != null) {
        postList = List<VendorPost>.from(
          data["used"].map((json) => VendorPost.fromJson(json)),
        );
      }

      // Handling Advertisements
      final ads = data['advertisements'];
      List<Advertisement> advertisementList = ads != null
          ? List<Advertisement>.from(
              ads.map((json) => Advertisement.fromJson(json)))
          : [];

      // Return the mapped VendorData with vendor, posts, and advertisements
      return VendorData(
        vendor: Vendor.fromJson(data['vendor']),
        advertisements: advertisementList,
        vendorposts: postList,
      );
    } else {
      throw Exception(
          'Failed to load vendor data, status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching vendor data: $e');
    throw Exception('Failed to load vendor data: ${e.toString()}');
  }
}
