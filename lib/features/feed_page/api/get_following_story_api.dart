import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_following_story_api.g.dart';

@riverpod
Future<GetFeedStoriesModel> getFollowingStory(GetFollowingStoryRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getFollowingfeedstory,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return GetFeedStoriesModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load following content');
    }
  } catch (e) {
    print('Error loading following :$e');
    throw Exception('Failed to load following content: $e');
  }
}
