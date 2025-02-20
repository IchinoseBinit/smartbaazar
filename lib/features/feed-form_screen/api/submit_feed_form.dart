import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'submit_feed_form.g.dart';
@riverpod
Future<bool> postFeedForm(
     ref,
    String captionTitle,
    String caption,
    String offers,
    List<String> products,
    List<File> imageFiles) async { // Change File to List<File>
  
  final SmartClient client = SmartClient();
  
  if (imageFiles.isEmpty) {
    print('Error: No images selected.');
    return false;
  }

  try {
    List<MultipartFile> imageMultipartFiles = [];
    
    // Convert each file into a MultipartFile
    for (File file in imageFiles) {
      if (file.existsSync()) {
        imageMultipartFiles.add(await MultipartFile.fromFile(file.path,
            filename: file.path.split('/').last));
      }
    }

    FormData formData = FormData.fromMap({
      'image': imageMultipartFiles, // Change key to 'images' if backend expects multiple images
      'caption_title': captionTitle,
      'caption': caption,
      'offers': offers,
      'products': products,
    });

    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postFeedForm,
      parameter: formData,
    );

    if (response.statusCode == 200) {
      print('Feed details posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } on DioException catch (e) {
    print('Dio Error: ${e.response?.data ?? e.message}');
    return false;
  } catch (e) {
    print('Error posting Feed details: $e');
    return false;
  }
}
