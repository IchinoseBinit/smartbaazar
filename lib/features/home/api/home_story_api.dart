import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'home_story_api.g.dart';

@riverpod
Future<HomeStoryModel> getHomeStory(GetHomeStoryRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.homeSliderBannerUrl,
    );
    if (response.statusCode == 200) {
    

      final Map<String, dynamic> jsonResponse = response.data;
      print(jsonResponse);
      return HomeStoryModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load story content');
    }
  } catch (e) {
    print('Error loading story :$e');
    throw Exception('Failed to load story content: $e');
  }
}
