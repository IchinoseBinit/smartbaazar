import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'delete_listing_api.g.dart';

@riverpod
Future<void> deleteListing(DeleteListingRef ref, String productItemId) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.deleteWithToken,
      url: '${ApiConstants.postOfflineListing}/$productItemId',
    );

    if (response.statusCode == 200) {
      print('Item deleted successfully');
    } else {
      throw Exception('Failed to delete the item');
    }
  } catch (e) {
    throw Exception('Error deleting item: $e');
  }
}
