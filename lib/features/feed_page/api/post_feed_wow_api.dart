import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_feed_wow_api.g.dart';

@riverpod
Future<String> postFeedWow(PostFeedWowRef ref, String feedId) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: '${ApiConstants.postFeedWOwUrl}/$feedId',
    );

    if (response.statusCode == 200) {
      final responseData = response.data;
      if (responseData != null &&
          responseData is Map &&
          responseData['msg'] != null) {
        return responseData['msg'];
      } else {
        throw Exception('Could not post your like');
      }
    } else {
      throw Exception('Failed to save your like');
    }
  } catch (e) {
    throw Exception('Failed to save like: $e');
  }
}
