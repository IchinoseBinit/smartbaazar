import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/feed_page/model/list_comment_of_feed.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'list_comment_feed_api.g.dart';

@riverpod
Future<List<FeedCommentModel>> getfeedcomment(ref, String postid) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/feed_comment/$postid',
    );

    if (response.statusCode == 200) {
      final jsonResponse = response.data;
      
      // Ensure API response is a list before parsing
      if (jsonResponse is List) {
        return jsonResponse
            .map((comment) => FeedCommentModel.fromJson(comment))
            .toList();
      } else {
        throw Exception('Invalid response format: Expected a list');
      }
    } else {
      throw Exception('Failed to load comments: ${response.statusCode}');
    }
  } catch (e) {
    print('Error loading comments: $e');
    throw Exception('Failed to load comments: $e');
  }
}
