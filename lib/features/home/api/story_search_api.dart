import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'story_search_api.g.dart';

@riverpod
Future<List<Post>> searchstoryapi(ref, String query) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
    //  queryParameters: {'q': query},
     parameter:{'q': query} ,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/homeSections/story_search',
    );

    if (response.statusCode == 200) {
      final responseData = response.data; // Assuming response.data is already parsed

      if (responseData != null && responseData['data'] != null) {
        List<dynamic> dataList = responseData['data'];
        return dataList.map((json) => Post.fromJson(json)).toList();
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception('Failed to load story content');
    }
  } catch (e) {
    print('Error loading story: $e');
    throw Exception('Failed to load story content: $e');
  }
}
