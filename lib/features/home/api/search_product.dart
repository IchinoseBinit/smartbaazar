import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/search_product_model.dart';

part 'search_product.g.dart';

@riverpod
Future<List<SearchProductModel>> search(SearchRef ref, String query) async {
  if (query.isEmpty) return [];

  final client = Dio(
    BaseOptions(
      followRedirects: false, // Disable automatic redirection
      validateStatus: (status) => status != null && status >= 200 && status < 400,
    ),
  );

  Future<Response> sendRequest(String url) async {
    return await client.post(
      url,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'accept': '*/*',
          'Connection': 'Keep-Alive',
          'X-AppApiToken': 'Yala@Techies_Nepal',
        },
      ),
      data: jsonEncode({'query': query}),
    );
  }

  try {
    // Send the initial request
    Response response = await sendRequest(ApiConstants.homeScreenSearchBar);

    // Handle redirection if necessary
    if (response.statusCode == 301) {
      final redirectUrl = response.headers['location']?.first;
      if (redirectUrl != null) {
        response = await sendRequest(redirectUrl); // Handle the redirected request
      } else {
        throw Exception('Redirection URL is missing');
      }
    }

    // Handle successful responses
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      final data = response.data;
      print('Response Data: $data'); // Log response data
      if (data is Map<String, dynamic> && data.containsKey('data')) {
        final List<dynamic> productList = data['data'];
        return productList.map((item) => SearchProductModel.fromJson(item)).toList();
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception('Failed to load search results');
    }
  } catch (e) {
    print('Error during search: $e');
    throw Exception('Failed to load search results');
  }
}
