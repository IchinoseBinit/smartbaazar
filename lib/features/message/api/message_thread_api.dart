import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/model/message_thread_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'message_thread_api.g.dart';

// Assuming getMessageThread has a Family
@riverpod
Future<MessageThreadModel> getMessageThread(ref,
    {required String? filter}) async {
  final SmartClient client = SmartClient();
  try {
   final response = await client.request(
  requestType: RequestType.getWithToken,
  url: ApiConstants.getMessageThreadUrl,
  parameter: {'filter': filter},
).timeout(const Duration(seconds: 150));


    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return MessageThreadModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load message content');
    }
  } catch (e) {
    print('Error loading Message: $e');
    throw Exception('Failed to load message content: $e');
  }
}


