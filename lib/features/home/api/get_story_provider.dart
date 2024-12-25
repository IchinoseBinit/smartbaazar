import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/home_feed_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part "get_story_provider.g.dart";

@riverpod
Future<FeedStoryResponse> fetchStoryHome(FetchStoryHomeRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
        final response = await client.request(
      requestType: RequestType.get,
      url: ApiConstants.getStoryHome,
    )
        .timeout(const Duration(seconds: 5)); // Set a custom timeout

    print("Responsek Data: ${response.data}");
    return FeedStoryResponse.fromJson(response.data);
  } on TimeoutException catch (e) {
    print("Request timeout: $e");
    return FeedStoryResponse(data:null , msg: "Request timed out");
  } catch (e) {
    print("Error fetching home posts: $e");
    return FeedStoryResponse(data: null, msg: "Error occurred while fetching data");
  }
}
