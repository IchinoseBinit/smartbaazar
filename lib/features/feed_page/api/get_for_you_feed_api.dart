import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/get_for_you_feed_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_for_you_feed_api.g.dart';

@riverpod
Future<GetForYouFeedModel> getForYouFeedApi(GetForYouFeedApiRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getForYouFeedUrl,
    );
    if (response.statusCode == 200) {
      // final Map<String, dynamic> jsonResponse = response.data;
      // return GetForYouFeedModel.fromJson(jsonResponse);
      final jsonResponse = response.data;
      if (jsonResponse is Map<String, dynamic>) {
        return GetForYouFeedModel.fromJson(jsonResponse);
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception('Failed to load your feed content');
    }
  } catch (e) {
    print('Error loading following :$e');
    throw Exception('Failed to load following content: $e');
  }
}
