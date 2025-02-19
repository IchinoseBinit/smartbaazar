// import 'dart:async';

// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:smartbazar/features/home/model/home_feed_model.dart';
// import 'package:smartbazar/network_service/smart-clinet.dart';
// import 'package:smartbazar/utils/request_type.dart';

// part "get_story_provider.g.dart";

// @riverpod
// Future<FeedStoryResponse> fetchStoryHome(FetchStoryHomeRef ref) async {
//   final SmartClient   client = SmartClient  ();

//   try {
//     final response = await client.request(
//       requestType: RequestType.getWithToken,
//       url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/getrandomstory',
//     );

//     print("Raw Response Data: ${response.data}");

//     // Attempt parsing
//     final parsedData = FeedStoryResponse.fromJson(response.data);
//     print("Parsed Data: $parsedData");

//     return parsedData;
//   } catch (e) {
//     throw e.toString();
//   }
// }
