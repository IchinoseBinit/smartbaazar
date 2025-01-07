import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/reply_message_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'reply_message_model_api.g.dart';

@riverpod
Future<ReplyMessageModel> sendReplyMessage(SendReplyMessageRef ref,
    String threadId, String? body, File? imageFile) async {
  final SmartClient client = SmartClient();

  // Prepare the form data
  // FormData formData = FormData();

  try {
    final prefs = await SharedPreferences.getInstance();
    final session = prefs.getString('session');
    final Map<String, dynamic> sessionData = json.decode(session!);

    // Access the required fields from the parsed JSON
    final String name = sessionData['result']['name'];
    final String email = sessionData['result']['email'];
    final String phone = sessionData['result']['phone'];

    FormData formData = FormData.fromMap({
      'post_id': threadId,
      'filename': await MultipartFile.fromFile(imageFile!.path,
          filename: imageFile.path.split('/').last),
      'from_name': name,
      'from_email': email,
      'from_phone': phone,
      'body': body ?? '',
    });

    // Construct the API URL with threadId
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      // url: "${ApiConstants.getMessageListUrl}/$threadId",
      url: ApiConstants.getMessageListUrl,
      parameter: formData,
    );

    // Check if the API response is successful
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      final Map<String, dynamic> jsonResponse = response.data;
      final messageReply = ReplyMessageModel.fromJson(jsonResponse);
      return messageReply;
    } else {
      // Handle unsuccessful response
      print('Failed to send message: ${response.statusCode}');
      throw Exception('Failed to send your message');
    }
  } catch (e) {
    // Log the error for debugging
    print('Error sending your message: $e');
    throw Exception('Failed to send your message: $e');
  }
}
