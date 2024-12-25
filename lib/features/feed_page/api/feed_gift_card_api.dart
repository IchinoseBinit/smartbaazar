import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed_page/model/feed_gift_card_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part'feed_gift_card_api.g.dart';

@riverpod
Future<FeedGiftCardModel> getFeedGiftCard(
    GetFeedGiftCardRef ref,String userId) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: '${ApiConstants.getFeedGiftCardUrl}$userId',
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return FeedGiftCardModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load gift content');
    }
  } catch (e) {
    print('Error loading gift :$e');
    throw Exception('Failed to load gift content: $e');
  }
}
