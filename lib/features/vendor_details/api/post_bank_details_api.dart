import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_bank_details_api.g.dart';

@riverpod
Future<bool> postUserBankDetails(PostUserBankDetailsRef ref, String bankName,
    String bankBranch, String acHolder, String acNumber, File imageFile) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'bank_name': bankName,
      'bank_branch': bankBranch,
      'ac_holder': acHolder,
      'ac_number': acNumber,
      'image': await MultipartFile.fromFile(imageFile.path,
          filename: imageFile.path.split('/').last),
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postUserBankDetailsUrl,
      parameter: formData,
    );
    if (response.statusCode == 200 && response.data['data'] == 'success') {
      print('Bank details posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting Bank details: $e');
    return false;
  }
}
