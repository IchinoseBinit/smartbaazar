import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_sponsor_banner_api.g.dart';

@riverpod
Future<bool> postSponsorBanner(PostSponsorBannerRef ref, File imageFile) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(imageFile.path,
          filename: imageFile.path.split('/').last),
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.storeSponsorBanner,
      parameter: formData,
    );
    if (response.statusCode == 200 && response.data['data'] == 'success') {
      print('Dispute posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting dispute: $e');
    return false;
  }
}
