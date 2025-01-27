import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'add_comment_provider.g.dart';

@riverpod
Future<String> postcomment(
  ref, 
  String id, 
  String reply,
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/feed_comment/$id',
      parameter: {
        'comment': reply,
        'parent_id': id,
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = response.data;

      if (jsonResponse is Map<String, dynamic>) {
        // Handle the response with success message
        final message = jsonResponse['msg'] ?? 'Comment added successfully';
        return message;
      } else {
        throw Exception('Unexpected response format.');
      }
    } else {
      throw Exception('Failed to post comment. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error posting comment: $e');
    throw Exception('Failed to post comment: $e');
  }
}
