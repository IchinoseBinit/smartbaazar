import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_gift_api.g.dart';

@riverpod
Future<bool> postgift(PostgiftRef ref, String gift, String giftWorth,
    String giftType, String giftQty, File imageFile) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'gift': gift,
      'image': await MultipartFile.fromFile(imageFile.path,
          filename: imageFile.path.split('/').last),
      'gift_qty': giftQty,
      'gift_worth': giftWorth,
      'gift_type': giftType,
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.postGiftStoreUrl,
      parameter: formData,
    );
    if (response.statusCode == 200 && response.data['msg'] != null && response.data['msg'].contains('Successfully')) {
      print('Gift posted successfully!');
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Error posting Gift: $e');
    return false;
  }
}
