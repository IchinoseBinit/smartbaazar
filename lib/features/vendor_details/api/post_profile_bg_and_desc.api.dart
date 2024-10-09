import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_profile_bg_and_desc.api.g.dart';

@riverpod
Future<bool> postProfileBGAndDesc(
    PostProfileBGAndDescRef ref, File imageFile, String desc) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(imageFile.path,
          filename: imageFile.path.split('/').last),
      'description': desc,
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postVendorProfileBgAndDescUrl,
      parameter: formData,
    );
    if (response.statusCode == 200 && response.data['data'] == 'success') {
      print('Profile Background and descriptopn store posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting Profile Background and descriptopn store: $e');
    return false;
  }
}
