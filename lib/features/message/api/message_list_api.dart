import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/message_list_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'message_list_api.g.dart';

@riverpod
Future<MessageListModel> getMessageList(
    GetMessageListRef ref, String threadId, int page) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.getMessageListUrl}/$threadId/messages?page=$page",
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return MessageListModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load message content');
    }
  } catch (e) {
    print('Error loading Message :$e');
    throw Exception('Failed to load message content: $e');
  }
}
