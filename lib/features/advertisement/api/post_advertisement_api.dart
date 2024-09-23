import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart';

part 'post_advertisement_api.g.dart';

@riverpod
Future<bool> postAdvertisement(
    PostAdvertisementRef ref, File imageFile, String link) async {
  final SmartClinet client = SmartClinet();

  try {
    // var formData = FormData.fromMap({
    //     'image': await MultipartFile.fromFile(imageFile.path, filename: empCode),
    //   });
    FormData formData = FormData.fromMap({
      'link': link,
      'image': await MultipartFile.fromFile(imageFile.path,
          filename: imageFile.path.split('/').last),
    });

    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.storeAdvertisementUrl,
      parameter: formData,
    );

    if (response.statusCode == 200 && response.data['success'] == true) {
      print('Advertisement posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting advertisement: $e');
    return false;
    // throw Exception('Failed to post advertisement: $e');
  }
}
