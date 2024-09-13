import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_profile_api.g.dart';

@riverpod
Future<VendorProfileModel> getVendorProfileData(
    GetVendorProfileDataRef ref, String vendorName) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.getVendorProfileDataByUserName}/$vendorName',
    );

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.data);
      return VendorProfileModel.fromJson(jsonData['data']);
    } else {
      throw Exception('Failed to load Vendor data');
    }
  } catch (e) {
    print('Error fetching vendor data: $e');
    throw Exception('Failed to load vendor data: $e');
  }
}
