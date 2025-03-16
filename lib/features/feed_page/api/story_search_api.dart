import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/story_search_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'story_search_api.g.dart';

@riverpod
Future<StorySearchModel> storySearchApi(Ref ref, String query) async {
  final SmartClient client = SmartClient();

  try {
    Map<String, dynamic> data = {
      'q': query,
    };
    // FormData formData = FormData.fromMap({
    //   'q': query,
    // });
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url:
          'https://smartbazaar.jianjun-rnd.com.np/api/homeSections/story_search',
      parameter: data,
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return StorySearchModel.fromJson(response.data);
    } else {
      throw Exception('Failed to search: ${response.statusCode}');
    }
    // if (responseData['success'] == true) {
    //   return responseData['message'];
    // } else {
    //   throw Exception(
    //       'Failed to save favorite product: ${responseData['message']}');
    // }
  } on DioException catch (dioError) {
    print('Dio error: ${dioError.message}');
    throw Exception('Network error: ${dioError.message}');
  } catch (e) {
    print('Error loading search story: $e');
    throw Exception('Failed to search: $e');
  }
}
