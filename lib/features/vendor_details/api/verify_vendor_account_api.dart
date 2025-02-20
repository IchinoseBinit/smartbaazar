import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'verify_vendor_account_api.g.dart';

@riverpod
Future<String?> verifyVendorAccount(VerifyVendorAccountRef ref, File panVat,
    File taxCertificate, File registerCertificate) async {
  final SmartClient client = SmartClient();
  try {
    FormData formData = FormData.fromMap({
      'pan_vat': await MultipartFile.fromFile(panVat.path,
          filename: panVat.path.split('/').last),
      'tax_certificate': await MultipartFile.fromFile(taxCertificate.path,
          filename: taxCertificate.path.split('/').last),
      'register_certificate': await MultipartFile.fromFile(
          registerCertificate.path,
          filename: registerCertificate.path.split('/').last),
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.verifyUserAccount,
      parameter: formData,
    );
    if (response.statusCode == 200 && response.data['data'] == 'success') {
      return response.data['msg']; // Return the success message
    } else {
      print('Error: ${response.data}');
      return null; // Indicates failure
    }
  } catch (e) {
    print('Error posting Account verification request: $e');
    return null;
  }
}
