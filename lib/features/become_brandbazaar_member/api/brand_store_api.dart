import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'brand_store_api.g.dart';

@riverpod
Future<bool> postBrandMember(
    PostBrandMemberRef ref,
    String brandName,
    File brandLogo,
    String panVatNo,
    File taxFile,
    File brandCertificate) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'brand_name': brandName,
      'brand_logo': await MultipartFile.fromFile(brandLogo.path,
          filename: brandLogo.path.split('/').last),
      'pan_vatno': panVatNo,
      'tax_clearance': await MultipartFile.fromFile(taxFile.path,
          filename: taxFile.path.split('/').last),
      'brand': await MultipartFile.fromFile(brandCertificate.path,
          filename: brandCertificate.path.split('/').last),
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.brandMemberStore,
      parameter: formData,
    );
    if (response.statusCode == 200 &&
        response.data['msg'] != null &&
        response.data['msg'].contains('Successfully')) {
      print('Membership request posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting brand membership request: $e');
    return false;
  }
}
