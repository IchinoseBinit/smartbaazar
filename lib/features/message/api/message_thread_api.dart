import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/message_thread_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'message_thread_api.g.dart';

@riverpod
Future<MessageThreadModel> getMessageThread(GetMessageThreadRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getMessageThreadUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return MessageThreadModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load message content');
    }
  } catch (e) {
    print('Error loading Message :$e');
    throw Exception('Failed to load message content: $e');
  }
}
