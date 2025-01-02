import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part'submit_feed_form.g.dart';

@riverpod
Future<bool> postFeedForm(PostFeedFormRef ref, String captionTitle,
    String caption, String offers, List<String> products, File imageFile) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(imageFile.path,
          filename: imageFile.path.split('/').last),
      'caption_title': captionTitle,
      'caption': caption,
      'offers': offers,
      'products[]': products,
      
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postFeedForm,
      parameter: formData,
    );
    if (response.statusCode == 200 ) {
      print('Feed details posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting Feed details: $e');
    return false;
  }
}
