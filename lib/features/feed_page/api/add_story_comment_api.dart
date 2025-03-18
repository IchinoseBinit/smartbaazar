import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'add_story_comment_api.g.dart';

@riverpod
Future<String> postStorycomment(
  Ref ref,
  String id,
  String reply,
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/posts/reviewcomment/$id',
      parameter: {
        'comment': reply.trim(),
        'rating': 2
        // 'parent_id': id,
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = response.data;

      if (jsonResponse is Map<String, dynamic>) {
        // Handle both response formats
        if (jsonResponse.containsKey('success') && jsonResponse.containsKey('message')) {
          final success = jsonResponse['success'];
          final message = jsonResponse['message'];
          final errorCode = jsonResponse['error_code'];

          if (success == true) {
            return message ?? 'Comment added successfully';
          } else {
            throw Exception('Server error: $message (Code: $errorCode)');
          }
        } else if (jsonResponse.containsKey('data') && jsonResponse.containsKey('msg')) {
          // Handle the new response format
          final data = jsonResponse['data'];
          final message = jsonResponse['msg'];

          if (data == 'success') {
            return message ?? 'Comment added successfully';
          } else {
            throw Exception('Server error: $message');
          }
        } else {
          throw Exception('Unexpected response format');
        }
      } else {
        throw Exception('Unexpected response format');
      }
    } else {
      throw Exception('Failed to post comment. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('API Error Details:');
    print('Error: $e');
    print('Stack Trace: ${e}');
    rethrow;
  }
}
