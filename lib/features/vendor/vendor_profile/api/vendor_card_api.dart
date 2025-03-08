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
    // Log the request URL and ID
    print('Sending GET request to: https://smartbazaar.jianjun-rnd.com.np/api/users/vendor_detail/$id');

    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/vendor_detail/$id',
    );

    // Log the full response for debugging
    print('Response data: ${response.data}');

    // Parse the entire response into the VendorCardResponse model
    final vendorCardResponse = VendorCardResponse.fromJson(response.data);

    // Log the parsed response for additional debugging
    print('Parsed vendor card response: ${vendorCardResponse.data!.vendor_card!.subscribed}');

    return vendorCardResponse;

  } catch (e) {
    // Log the error for debugging
    print('Error during GET request: $e');
    
    // Handle errors gracefully
    throw Exception('Failed to fetch vendor card: $e');
  }
}
