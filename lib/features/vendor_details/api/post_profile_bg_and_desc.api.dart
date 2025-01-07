import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_profile_bg_and_desc.api.g.dart';

@riverpod
Future<bool> postProfileBGAndDesc(PostProfileBGAndDescRef ref, File? imageFile,
    String? desc, File? profileImageFile) async {
  final SmartClient client = SmartClient();

  try {
    FormData formData = FormData();

    if (imageFile != null) {
      formData.files.add(MapEntry(
        'image',
        await MultipartFile.fromFile(imageFile.path,
            filename: imageFile.path.split('/').last),
      ));
    }

    if (desc != null && desc.isNotEmpty) {
      formData.fields.add(MapEntry('description', desc));
    }

    if (profileImageFile != null) {
      formData.files.add(MapEntry(
        'profile_image',
        await MultipartFile.fromFile(profileImageFile.path,
            filename: profileImageFile.path.split('/').last),
      ));
    }
    print('.............................${formData.files},${formData.fields}');
    // Send the request
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postVendorProfileBgAndDescUrl,
      parameter: formData,
    );

    if (response.statusCode == 200 && response.data['data'] == 'success') {
      print('Profile background and description posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting profile background and description: $e');
    return false;
  }
}
