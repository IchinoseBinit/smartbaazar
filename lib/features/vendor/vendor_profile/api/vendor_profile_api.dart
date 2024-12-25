import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_profile_api.g.dart';

@riverpod
Future<VendorProfile> getVendorProfileData(
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
    print("ramu ${VendorProfile.fromJson(response.data['data']).vendor_card}");
    return VendorProfile.fromJson(response.data['data']);
  } catch (e) {
    return const VendorProfile();
  }
}
