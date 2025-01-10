import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_for_you_story_api.g.dart';

@riverpod
Future<GetFeedStoriesModel> getForYouStory(GetForYouStoryRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getForYoufeedstory,
    );
    if (response.statusCode == 200) {
      // final Map<String, dynamic> jsonResponse = response.data;
      // return GetFeedStoriesModel.fromJson(jsonResponse);
      final jsonResponse = response.data;
      // Ensure the data field is handled correctly
      if (jsonResponse is Map<String, dynamic>) {
        if (jsonResponse['data'] is List<dynamic> &&
            jsonResponse['data'].isEmpty) {
          return const GetFeedStoriesModel(
              data: FeedStoryData(feedstory: FeedStory()));
        } else {
          return GetFeedStoriesModel.fromJson(jsonResponse);
        }
      } else {
        throw Exception('Unexpected API response structure');
      }
    } else {
      throw Exception('Failed to load following content');
    }
  } catch (e) {
    print('Error loading following :$e');
    throw Exception('Failed to load following content: $e');
  }
}
