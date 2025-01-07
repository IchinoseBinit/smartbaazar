import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'home_story_api.g.dart';

@riverpod
Future<HomeStoryModel> getHomeStory(GetHomeStoryRef ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.homeSliderBannerUrl,
    );
    if (response.statusCode == 200) {
      final jsonResponse = response.data;
      if (jsonResponse is Map<String, dynamic>) {
        return HomeStoryModel.fromJson(jsonResponse);
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception('Failed to load story content');
    }
  } catch (e) {
    print('Error loading story :$e');
    throw Exception('Failed to load story content: $e');
  }
}
