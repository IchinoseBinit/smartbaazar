import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/saved_search/model/saved_search_response_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'search_from_saved_search_api.g.dart';

@riverpod
Future<SavedSearchesResponseModel?> searchFromSavedSearch(
    SearchFromSavedSearchRef ref, String query) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.post,
      url: '${ApiConstants.searchFromSavedSearchUrl}?query=$query',
    );

    print('API Response: ${response.data}');

    if (response.statusCode == 200 && response.data['data'] != null) {
      final data = response.data['data'];

       if (data is Map<String, dynamic>) {
        final mappedData = Data(
          brandNew: (data['brand_new'] as List?)
              ?.map((item) => BrandNew.fromJson(item as Map<String, dynamic>))
              .toList(),
          used: (data['used'] as List?)
              ?.map((item) => Used.fromJson(item as Map<String, dynamic>))
              .toList(),
          services: (data['services'] as List?)
              ?.map((item) => Services.fromJson(item as Map<String, dynamic>))
              .toList(),
          jobs: (data['jobs'] as List?)
              ?.map((item) => Jobs.fromJson(item as Map<String, dynamic>))
              .toList(),
          events: (data['events'] as List?)
              ?.map((item) => Events.fromJson(item as Map<String, dynamic>))
              .toList(),
          b2B: (data['b2b'] as List?)
              ?.map((item) => B2B.fromJson(item as Map<String, dynamic>))
              .toList(),
          grocery: (data['grocery'] as List?)
              ?.map((item) => Grocery.fromJson(item as Map<String, dynamic>))
              .toList(),
          posts: data['posts'] != null
              ? Posts.fromJson(data['posts'] as Map<String, dynamic>)
              : null,
        );

        return SavedSearchesResponseModel(data: mappedData, msg: response.data['msg']);
      }
    } else {
      print('Error: ${response.data}');
      return null;
    }
  } catch (e) {
    print('Error in search request: $e');
    return null;
  }
  return null;
}