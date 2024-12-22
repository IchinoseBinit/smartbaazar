import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/venodr_search_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'vendor_search_provider.g.dart';

@riverpod
Future<List<GetOnlyData>> geDataBySearchvendor(
    GeDataBySearchvendorRef ref, String id) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.get,
      url:
          "https://smartbazaar.jianjun-rnd.com.np/api/users/vendorsearch/$id", // Use the dynamic vendor ID
    );

    print("Response data: ${response.data}");

    // Extract nested posts data from the response
    final List<dynamic> postsJson = response.data['data']['posts']['data'];

    // Map the JSON data to a list of Post objects
    print("raju $postsJson");
    return postsJson.map((postJson) => GetOnlyData.fromJson(postJson)).toList();
  } catch (e) {
    print("Error occurred: $e");
    if (e is DioException) {
      print("DioError details: ${e.response?.data}");
    }
    return []; // Return an empty list in case of an error
  }
}
