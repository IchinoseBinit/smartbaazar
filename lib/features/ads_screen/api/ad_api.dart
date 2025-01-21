import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/ads_screen/model/ad_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'ad_api.g.dart';

@riverpod
Future<List<LoadingAd>> fetchAds(FetchAdsRef ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.getAdsUrl,
    );

    if (response.statusCode == 200) {
      final data = response.data['ads'];
      if (data is! List) {
        throw Exception('Unexpected response format');
      }

      return data.map((item) => LoadingAd.fromJson(item)).toList();
    } else {
      throw Exception(
          'Failed to load ads: ${response.statusCode} - ${response.statusMessage}');
    }
  } catch (e) {
    throw Exception('Failed to load ads: $e');
  }
}
