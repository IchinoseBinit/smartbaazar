import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_card_model.dart';

part 'vendor_card_api.g.dart';

@riverpod
Future<VendorCardResponse> getVendorCard(
   ref,
  int id,
) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/vendor_detail/$id',
    );

    // Parse the entire response into the VendorCardResponse model
    return VendorCardResponse.fromJson(response.data);
  } catch (e) {
    print("error $e");
    // Handle errors gracefully
    throw Exception('Failed to fetch vendor card: $e');
  }
}