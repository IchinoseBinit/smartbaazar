import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_live_prizes_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'get_vendor_posts_api.g.dart';

@riverpod
Future<VendorLivePrizePostData> getvendorpostandprizes(
   ref,
  int vendorid,
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/vendor_prizes/$vendorid',
    );

    // ✅ Extract "data" before parsing into `VendorLivePrizePostData`
    return VendorLivePrizePostData.fromJson(response.data['data']);
  } catch (e) {
    print("error $e");
    throw Exception('Failed to fetch vendor card: $e');
  }
}
