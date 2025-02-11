import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';
import 'package:dio/dio.dart'; // For better error handling with Dio

part 'hot_deals_provider.g.dart';

@riverpod
Future<List<GlobalModel>> getHotDeals(GetHotDealsRef ref, String header) async {
  final SmartClient client = SmartClient();

  try {
    // Determine the correct endpoint based on the header
    final String endpoint = header == 'hotdeals'
        ? "${ApiConstants.getHotDealScreen}/hotdeals" // Hot deals endpoint
        : "${ApiConstants.getHotDealScreen}/sponsored"; // Sponsored deals endpoint

    // Make the request to the correct endpoint
    final Response response = await client.request(
      requestType: RequestType.getWithToken,
      url: endpoint,
    );

    // Handle the response
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;

      // Extract the relevant posts based on the header type
      final List<dynamic> hotProductsList = header == 'hotdeals'
          ? jsonResponse['hot_products'] ?? []
          : jsonResponse['sponsored_posts'] ?? [];

      // Convert the list into a list of GlobalModel objects
      final hotDeals = hotProductsList
          .map((postJson) => GlobalModel.fromJson(postJson))
          .toList();

      // Return the list of hot deals
      return hotDeals;
    } else {
      throw Exception(
          'Failed to load Hot Deals. Status code: ${response.statusCode}');
    }
  } catch (e, stackTrace) {
    print('Error fetching Hot Deals: $e\nStackTrace: $stackTrace');
    throw Exception('Failed to fetch Hot Deals: $e');
  }
}
