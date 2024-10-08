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
      validateStatus: (status) {
        return status != null && status >= 200 && status < 400;
      },
    ),
  );

  try {
    final response = await client.post(
      ApiConstants.homeScreenSearchBar,
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

    if (response.statusCode == 301) {
      // Handle redirection manually
      final redirectUrl = response.headers['location']?.first;
      if (redirectUrl != null) {
        final redirectedResponse = await client.post(
          redirectUrl,
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

        if (redirectedResponse.statusCode! >= 200 && redirectedResponse.statusCode! < 300) {
          final data = redirectedResponse.data;
          print('Redirected Response Data: $data'); // Log redirected response data
          if (data is Map<String, dynamic> && data.containsKey('data')) {
            final List<dynamic> productList = data['data'];
            return productList.map((item) => SearchProductModel.fromJson(item)).toList();
          } else {
            throw Exception('Invalid response format');
          }
        } else {
          throw Exception('Failed to load search results after redirection');
        }
      } else {
        throw Exception('Redirection URL is missing');
      }
    } else if (response.statusCode! >= 200 && response.statusCode! < 300) {
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