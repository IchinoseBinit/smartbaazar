import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_of_following_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_feed_of_following_api.g.dart';

@riverpod
Future<GetFeedOfFollowingModel> getFeedOfFollowing(
     ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getFeedScreenFollowingUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return GetFeedOfFollowingModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load following content');
    }
  } catch (e) {
    print('Error loading following :$e');
    throw Exception('Failed to load following content: $e');
  }
}
