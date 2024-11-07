import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part'delete_saved_search_api.g.dart';

@riverpod
Future<void> deleteSavedSearch(
    DeleteSavedSearchRef ref, String productItemId) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.deleteWithToken,
      url: '${ApiConstants.savedSearchesUrl}/$productItemId',
    );

    if (response.statusCode == 200) {
      print('Saved search deleted successfully');
    } else {
      throw Exception('Failed to delete the Saved search');
    }
  } catch (e) {
    throw Exception('Error deleting Saved search: $e');
  }
}

