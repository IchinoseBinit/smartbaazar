import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_gift_api.g.dart';

@riverpod
Future<bool> postgift( ref, String postid,  String gift, String giftWorth,
     String giftQty, ) async {
  final SmartClient client = SmartClient();
  try {
    FormData formData = FormData.fromMap({
      'post_id':postid,
      'gift': gift,
      'gift_qty': giftQty,
      'gift_worth': giftWorth,
      'gift_type': 'gift',
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/product_sponsor_store',
      parameter: formData,
    );
    if (response.statusCode == 200 &&
        response.data['msg'] != null &&
        response.data['msg'].contains('Successfully')) {
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
