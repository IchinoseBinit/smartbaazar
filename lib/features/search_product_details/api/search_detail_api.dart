import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/search_product_details/model/search_details.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'search_detail_api.g.dart';

@riverpod
Future<List<Post>> getSearchDetails(GetSearchDetailsRef ref, String query) async {
  final SmartClinet client = SmartClinet(); // Ensure correct class name

  // Return an empty list if the query is empty
  if (query.isEmpty) return [];

  try {
    // Prepare form data
    FormData formData = FormData.fromMap({'q': query});

    // Make the API request
    final response = await client.request(
      requestType: RequestType.postWithTokenFormData,
   url: "${ApiConstants.baseUrl}/homeSections/search",

      parameter: formData,
    );


    // Check the response status code and ensure data exists
    if (response.statusCode == 200 && response.data != null) {
      // Safely access the nested 'posts' and 'data' objects
      final postsData = response.data['data']?['posts']?['data'];
      if (postsData != null) {
        // Deserialize into list of Post objects
        List<Post> postsList = postsData.map<Post>((json) => Post.fromJson(json)).toList();
        print("Parsed Posts: $postsList");
        return postsList;
      }
    }

    print('Error: Invalid data structure or no posts found');
    return [];
  } catch (e, stacktrace) {
    // Log the exception and stacktrace for debugging
    print('Exception occurred: $e, stacktrace: $stacktrace');
    return [];
  }
}
