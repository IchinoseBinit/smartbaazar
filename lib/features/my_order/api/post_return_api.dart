import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_return_api.g.dart';

@riverpod
Future<String> postmyreturn(
  ref,
  String orderid,
  String vendorid,
  String postid,
  String issue,
  String message,
  String city,
  String citycode,
  String street,
  String longitude,
  String latitude,
  File image,
) async {
  final SmartClient client = SmartClient();

  try {
    final formData = FormData.fromMap({
      "orderid": orderid,
      "vendor_id": vendorid,
      "post_id": postid,
      "issue": issue,
      "message": message,
      "city": city,
      "city_code": citycode,
      "street": street,
      "longitude": longitude,
      "latitude": latitude,
      "image": await MultipartFile.fromFile(image.path, filename: "upload.jpg"),
    });

    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/store_returns',
      parameter: formData,
    );

    if (response.statusCode == 200) {
      final jsonResponse = response.data;
      print('Raw JSON Response: $jsonResponse');
      return jsonResponse.toString(); 
    } else {
      print('Error: ${response.statusCode}');
      print('Response Data: ${response.data}');
      throw Exception('Failed to submit return request');
    }
  } catch (e) {
    print('Error submitting return request: $e');
    return Future.error('Failed to submit return request: $e'); // Ensure error is handled
  }
}
