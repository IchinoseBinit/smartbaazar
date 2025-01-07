import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'message_is_important_api.g.dart';

/// StateProvider for holding the important state of the message
final isMessageImportantProvider =
    StateProvider.family<bool, String>((ref, threadId) => false);

/// API function for marking the message as important
@riverpod
Future<bool> markMessageIsImportant(
    MarkMessageIsImportantRef ref, String threadId) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: '${ApiConstants.markMessageIsImportantUrl}/$threadId',
    );

    // Check if the response indicates success
    if (response.statusCode == 200 && response.data['data'] == "success") {
      // Update the state for the specific threadId
      ref.read(isMessageImportantProvider(threadId).notifier).state =
          true; // Mark as important
      return true;
    } else {
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    print('Exception: $e');
    return false;
  }
}
