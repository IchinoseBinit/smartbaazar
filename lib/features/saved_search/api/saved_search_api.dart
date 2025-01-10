import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/saved_search/model/saved_search_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'saved_search_api.g.dart';

@riverpod
Future<SavedSearchModel> getSavedSearches(GetSavedSearchesRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.savedSearchesUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return SavedSearchModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load saved searches');
    }
  } catch (e) {
    // Handle or log the error here
    print('Error loading saved searches: $e');
    throw Exception('Failed to load saved searches: $e');
  }
}
