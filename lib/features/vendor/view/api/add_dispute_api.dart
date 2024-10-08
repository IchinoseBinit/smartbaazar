import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart';

part 'add_dispute_api.g.dart';

@riverpod
Future<bool> postDispute(PostDisputeRef ref, String vendorName, String issue,
    String message, File imageFile) async {
  final SmartClinet client = SmartClinet();
  try {
    FormData formData = FormData.fromMap({
      'vendor_name': vendorName,
      'issue': issue,
      'message': message,
      'image': await MultipartFile.fromFile(imageFile.path,
          filename: imageFile.path.split('/').last),
    });
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: ApiConstants.submitDisputeUrl,
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
