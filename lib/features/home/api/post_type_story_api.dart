import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/home_story_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_type_story_api.g.dart';

@riverpod
Future<HomeStoryModel> getPostTypeStoryApi(
    GetPostTypeStoryApiRef ref, String postTypeId) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: '${ApiConstants.producttypeurl}/$postTypeId',
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
