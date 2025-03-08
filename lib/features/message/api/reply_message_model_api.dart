import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/message/model/reply_message_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'reply_message_model_api.g.dart';

@riverpod
Future<ReplyMessageModel> sendReplyMessage(
   ref,
    String threadId, String? body, File? imageFile) async {
  final SmartClient client = SmartClient();

  try {
    final prefs = await SharedPreferences.getInstance();
    final session = prefs.getString('session');

    if (session == null) {
      throw Exception("Session not found. Please log in again.");
    }

    final Map<String, dynamic> sessionData = json.decode(session);
    final String name = sessionData['result']['name'];
    final String email = sessionData['result']['email'];
    final String phone = sessionData['result']['phone'];

    print("User: $name, Email: $email, Phone: $phone");

    FormData formData = FormData.fromMap({
      'post_id': threadId,
      'filename': imageFile != null
          ? await MultipartFile.fromFile(imageFile.path,
              filename: imageFile.path.split('/').last)
          : null,
      'from_name': name,
      'from_email': email,
      'from_phone': phone,
      'body': body ?? '',
    });

    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/threads/$threadId?body=$body',
      parameter: formData,
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return ReplyMessageModel.fromJson(response.data);
    } else {
      throw Exception('Failed to send your message: ${response.statusCode}');
    }
  } on DioException catch (dioError) {
    print('Dio error: ${dioError.message}');
    throw Exception('Network error: ${dioError.message}');
  } catch (e) {
    print('Error sending message: $e');
    throw Exception('Failed to send your message: $e');
  }
}
