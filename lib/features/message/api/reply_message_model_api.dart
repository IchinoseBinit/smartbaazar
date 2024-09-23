import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/reply_message_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'reply_message_model_api.g.dart';

@riverpod
Future<ReplyMessageModel> sendReplyMessage(
    SendReplyMessageRef ref, String threadId, String body) async {
  final SmartClinet client = SmartClinet();

  try {
    // Construct the API URL with threadId and body in the query string
    final response = await client.request(
      requestType: RequestType.putWithToken,
      url: "${ApiConstants.getMessageListUrl}/$threadId?body=$body",
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      final messageReply = ReplyMessageModel.fromJson(jsonResponse);
      return messageReply;
    } else {
      throw Exception('Failed to send your message');
    }
  } catch (e) {
    print('Error sending your message: $e');
    throw Exception('Failed to send your message: $e');
  }
}
