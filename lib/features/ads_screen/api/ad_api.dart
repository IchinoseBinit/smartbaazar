import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/ads_screen/model/ad_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'ad_api.g.dart';

@riverpod
Future<List<LoadingAd>> getAds(GetAdsRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getAdsUrl,
    );

    if (response.statusCode == 200) {
      final data = response.data['ads'] as List;
      // Only map the `image` field from the response
      final ads = data.map((item) => LoadingAd(image: item['image'])).toList();
      return ads;
    } else {
      throw Exception('Failed to load ads');
    }
  } catch (e) {
    print('Error fetching ads: $e');
    throw Exception('Failed to load ads: $e');
  }
}
