import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'post_offline_listing.g.dart';

@riverpod
Future<void> addToOfflineListing(
    AddToOfflineListingRef ref, String productId) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.putWithToken,
      url: '${ApiConstants.postOfflineListing}/$productId/offline',
    );
    final responseData = response.data;
    if (responseData['success'] == true) {
      print('Listing saved in offline successfully!');
    } else {
      throw Exception(
          'Failed to save product in offline Listing: ${responseData['message']}');
    }
  } catch (e) {
    print('Error posting offline list product: $e');
    throw Exception('Failed to save offline product: $e');
  }
}
