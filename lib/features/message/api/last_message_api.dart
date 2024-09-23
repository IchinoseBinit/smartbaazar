import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/message_list_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'last_message_api.g.dart';

@riverpod
Future<MessageData?> getLastMessage(
    GetLastMessageRef ref, String threadId) async {
  final SmartClinet client = SmartClinet();
  
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.getMessageListUrl}/$threadId/messages",
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      final messageList = MessageListModel.fromJson(jsonResponse);
      // Return the last message if available
      return messageList.result?.data?.isNotEmpty ?? false
          ? messageList.result?.data?.last
          : null;
    } else {
      throw Exception('Failed to load last message');
    }
  } catch (e) {
    print('Error loading last message: $e');
    throw Exception('Failed to load last message: $e');
  }
}
