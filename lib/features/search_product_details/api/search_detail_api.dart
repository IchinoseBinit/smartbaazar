import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/search_product_details/model/search_details.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'search_detail_api.g.dart';

@riverpod
Future<SearchDetails> getSearchDetails(
    GetSearchDetailsRef ref, String query, {String category = 'brand_new'}) async {
  final SmartClinet client = SmartClinet(); // Ensure correct class name

  // Return a default SearchDetails if the query is empty
  if (query.isEmpty) {
    return SearchDetails(currentPage: 0, posts: []);
  }

  try {
    // Prepare form data
    FormData formData = FormData.fromMap({
      'q': query,
      'category': category, // Use the provided category or the default
    });

    // Make the API request
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
      url: "${ApiConstants.baseUrl}/homeSections/search",
      parameter: formData,
    );

    // Check the response status code and ensure data exists
    if (response.statusCode == 200 && response.data != null) {
      List<Post> postsList = [];

      // Extract and parse the relevant data based on the category
      if (category == 'brand_new') {
        final brandNewData = response.data['data']?['brand_new'];
        if (brandNewData != null) {
          postsList.addAll(
            brandNewData.map<Post>((json) => Post.fromJson(json)).toList(),
          );
        }
      } else if (category == 'used') {
        final usedData = response.data['data']?['used'];
        if (usedData != null) {
          postsList.addAll(
            usedData.map<Post>((json) => Post.fromJson(json)).toList(),
          );
        }
      } else if (category == 'services') {
        final servicesData = response.data['data']?['services'];
        if (servicesData != null) {
          postsList.addAll(
            servicesData.map<Post>((json) => Post.fromJson(json)).toList(),
          );
        }
      }

      // Create and return SearchDetails object
      return SearchDetails(currentPage: 1, posts: postsList);
    }

    print('Error: Invalid data structure or no posts found');
    return SearchDetails(currentPage: 0, posts: []);
  } catch (e, stacktrace) {
    // Log the exception and stacktrace for debugging
    print('Exception occurred: $e, stacktrace: $stacktrace');
    return SearchDetails(currentPage: 0, posts: []);
  }
}
