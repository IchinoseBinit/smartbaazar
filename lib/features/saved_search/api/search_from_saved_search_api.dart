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

      // Check and map each category in the response
      if (data is Map) {
        if (data.containsKey('brand_new') && data['brand_new'] is List) {
          data['brand_new'] = (data['brand_new'] as List)
              .map((item) => BrandNew.fromJson(item))
              .toList();
        }

        if (data.containsKey('used') && data['used'] is List) {
          data['used'] = (data['used'] as List)
              .map((item) => Used.fromJson(item))
              .toList();
        }

        if (data.containsKey('services') && data['services'] is List) {
          data['services'] = (data['services'] as List)
              .map((item) => Services.fromJson(item))
              .toList();
        }

        if (data.containsKey('jobs') && data['jobs'] is List) {
          data['jobs'] = (data['jobs'] as List)
              .map((item) => Jobs.fromJson(item))
              .toList();
        }

        if (data.containsKey('events') && data['events'] is List) {
          data['events'] = (data['events'] as List)
              .map((item) => Events.fromJson(item))
              .toList();
        }

        if (data.containsKey('b2b') && data['b2b'] is List) {
          data['b2b'] = (data['b2b'] as List)
              .map((item) => B2B.fromJson(item))
              .toList();
        }

        if (data.containsKey('grocery') && data['grocery'] is List) {
          data['grocery'] = (data['grocery'] as List)
              .map((item) => Grocery.fromJson(item))
              .toList();
        }

        if (data.containsKey('posts') && data['posts'] is Map) {
          data['posts'] = Posts.fromJson(data['posts']);
        }
      }

      return SavedSearchesResponseModel.fromJson(data);
    } else {
      print('Error: ${response.data}');
      return null;
    }
  } catch (e) {
    print('Error search request: $e');
    return null;
  }
}
