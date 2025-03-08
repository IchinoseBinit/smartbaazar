import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/message_photo_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'message_photo_api.g.dart';

@riverpod
Future<MessagePhotoModel> getmessagePhoto(ref, String id) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/threads/thread_user_image/$id',
    );

    if (response.statusCode == 200) {
      final jsonResponse = response.data['data']; // Assuming `response.data` is a JSON map.
      return MessagePhotoModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load message photo data: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error fetching message photo data: $e');
  }
}
