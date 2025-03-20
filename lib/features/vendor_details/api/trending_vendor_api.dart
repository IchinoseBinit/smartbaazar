import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor_details/model/trending_card_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'trending_vendor_api.g.dart';

@riverpod
Future<TrendingResponse> gettrendingcard( ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/trending',
    );

    if (response.statusCode == 200) {
      return TrendingResponse.fromJson(response.data); // ✅ Corrected this line
    } else {
      throw Exception('Failed to load trending vendors');
    }
  } catch (e) {
    print('Error loading trending vendors: $e');
    throw Exception('Failed to load trending vendors');
  }
}
