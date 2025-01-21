import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/get_for_you_feed_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_for_you_feed_api.g.dart';

@riverpod
Future<GetForYouFeedModel> getForYouFeedApi(ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getForYouFeedUrl,
      headers: {
        'X-AppApiToken': 'Yala@Techies_Nepal',
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = response.data;
      if (jsonResponse is Map<String, dynamic>) {
        return GetForYouFeedModel.fromJson(jsonResponse);
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception(
          'Failed to load your feed content. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error loading feed content: $e');
    throw Exception('Failed to load feed content: $e');
  }
}
