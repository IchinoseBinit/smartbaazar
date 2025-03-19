import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/feed_page/model/list_comment_of_story.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'list_comment_story_api.g.dart';

@riverpod
Future<List<CommentModel>> getStorycomment(ref, String postid) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
        requestType: RequestType.get,
        url:
            'https://smartbazaar.jianjun-rnd.com.np/api/posts/showcomment/$postid');

    if (response.statusCode == 200) {
      final jsonResponse = response.data;

      // Ensure API response is a list before parsing
      if (jsonResponse is Map<String, dynamic>) {
        final data = jsonResponse['data'];

        if (data is List) {
          return data.map((comment) => CommentModel.fromJson(comment)).toList();
        } else {
          throw Exception('Invalid response format: Expected a list in data');
        }
      } else {
        throw Exception('Invalid response format: Expected a map');
      }
    } else {
      throw Exception('Failed to load comments: ${response.statusCode}');
    }
  } catch (e) {
    print('Error loading comments: $e');
    throw Exception('Failed to load comments: $e');
  }
}
