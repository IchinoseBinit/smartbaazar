import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/brand_bazar/model/screen_category_mode.dart';

import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'screen_category_api.g.dart';

@riverpod
Future<List<CategoryModel>> getCategories(
    GetCategoriesRef ref, int parentId) async {
  final SmartClinet client = SmartClinet(); // Your custom API client

  try {
    // Make the API call
    final response = await client.request(
      requestType: RequestType.getWithToken,
      queryParameters: {
        'parentId': parentId,
        'nestedIncluded': 1, // Ensure nested categories are included
      },
      url:
          "https://smartbazaar.jianjun-rnd.com.np/api/categories", // Use the dynamic URL"
    );

    print("Request URL: ${response.realUri}");

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse =
          response.data; // Parse JSON response
      print("JSON Response: $jsonResponse");

      // Extract the 'data' array from the response
      final categoryData = jsonResponse['result']?['data'] as List<dynamic>?;

      if (categoryData != null) {
        // Convert each item in 'data' to a `CategoryModel` instance
        return categoryData
            .map((category) => CategoryModel.fromJson(category))
            .toList();
      } else {
        throw Exception('No categories data found in response');
      }
    } else {
      throw Exception(
          'Failed to load categories. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error loading categories: $e');
    throw Exception('An error occurred while fetching categories: $e');
  }
}
