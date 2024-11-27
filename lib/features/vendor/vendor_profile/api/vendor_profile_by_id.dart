import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_model_for_id.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_profile_by_id.g.dart';

@riverpod
Future<VendorModelByID> getVendorProfileDataByID(
    GetVendorProfileDataByIDRef ref, String id) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.getVendorProfileDataByID}/$id',
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;

      // Extract the vendor data from the nested structure
      final vendorData = jsonResponse['data']['vendor'];

      // Create a new map with only the fields we need
      final vendorMap = {
        'id': vendorData['id'],
        'name': vendorData['name'],
        'username': vendorData['username'],
        'email': vendorData['email'],
        'photo': vendorData['photo'] ?? '', // Provide a default empty string if photo is null
      };

      print('Parsed Vendor Map: ${json.encode(vendorMap)}');

      final vendorModel = VendorModelByID.fromJson(vendorMap);

      return vendorModel;
      
    } else {
      throw Exception('Failed to load Vendor data');
    }
  } catch (e) {
    print('Error fetchingvendor data: $e');
    throw Exception('Failed to load vendor data: $e');
  }
}
