// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:smartbazar/features/auth/api/refresh_token_api.dart';
// import 'package:smartbazar/utils/request_type.dart';

// class SmartClient   {
//   static String token = '';
//   static String refresh = '';
//   static String userId = '';
//   static String userName = '';
//   static String userEmail = '';
//   static final SmartClient   _instance = SmartClient  ._internal();

//   factory SmartClient  () {
//     return _instance;
//   }

//   bool _isTokenExpired(String token) {
//     try {
//       final parts = token.split('.');
//       if (parts.length != 3) {
//         return true; // Invalid token format
//       }
//       final payload = jsonDecode(
//         utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
//       ) as Map<String, dynamic>;
//       final exp = payload['exp'] as int?;
//       if (exp == null) {
//         return true; // No expiry information, assume expired
//       }
//       final expiryDate = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
//       return expiryDate.isBefore(DateTime.now());
//     } catch (e) {
//       print('Error checking token expiry: $e');
//       return true; // Assume expired on error
//     }
//   }

//   late Dio _client;
//   final timeOutDuration = const Duration(seconds: kDebugMode ? 30 : 60);

//   SmartClient  ._internal() {
//     _client = Dio();
//     if (kDebugMode) {
//       _client.interceptors.add(
//         LogInterceptor(
//           responseBody: true,
//           requestHeader: false,
//           responseHeader: false,
//           requestBody: true,
//         ),
//       );
//     }

//     _client.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (RequestOptions options, handler) {
//           if (SmartClient  .token.isNotEmpty) {
//             options.headers['Authorization'] = 'Bearer ${SmartClient  .token}';
//           }
//           return handler.next(options);
//         },
//         onError: (DioException error, handler) async {
//           if (error.response != null && error.response!.statusCode == 401) {
//             if (SmartClient  .token.isEmpty || _isTokenExpired(SmartClient  .token)) {
//               final success = await _refreshToken();
//               if (success) {
//                 final RequestOptions requestOptions = error.requestOptions;
//                 requestOptions.headers['Authorization'] =
//                     'Bearer ${SmartClient  .token}';
//                 try {
//                   final response = await _retry(requestOptions);
//                   return handler.resolve(response);
//                 } on DioException catch (retryError) {
//                   return handler.next(retryError);
//                 }
//               }
//             }
//           }
//           return handler.next(error);
//         },
//         onResponse: (Response response, handler) {
//           return handler.next(response);
//         },
//       ),
//     );
//   }

//   Future<bool> _refreshToken() async {
//     try {
//       final container = ProviderContainer();
//       final refreshTokenResponse =
//           await container.read(getRefreshTokenProvider.future);

//       SmartClient  .token = refreshTokenResponse.authToken;
//       SmartClient  .refresh = refreshTokenResponse.refreshToken;

//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString('accessToken', refreshTokenResponse.authToken);
//       await prefs.setString('refreshToken', refreshTokenResponse.refreshToken);

//       print("Token refreshed successfully: ${SmartClient  .token}");
//       return true;
//     } catch (e) {
//       print("Error refreshing token using API: $e");
//       return false;
//     }
//   }

//   Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
//     try {
//       final options = Options(
//         method: requestOptions.method,
//         headers: {
//           ...requestOptions.headers,
//           'Authorization': 'Bearer $token',
//         },
//       );
//       return await _client.request<dynamic>(
//         requestOptions.path,
//         data: requestOptions.data,
//         queryParameters: requestOptions.queryParameters,
//         options: options,
//       );
//     } catch (e) {
//       print('Retry failed: $e');
//       rethrow;
//     }
//   }

//   Future<Response> request({
//     required RequestType requestType,
//     required String url,
//     dynamic parameter,
//     dynamic queryParameters,
//     dynamic headers,
//   }) async {
//     try {
//       Map<String, String> defaultHeaders = {
//         'Content-Type': 'application/json',
//         'accept': '*/*',
//         'Connection': 'Keep-Alive',
//         'X-AppApiToken': 'Yala@Techies_Nepal',
//       };

//       Map<String, String> mergedHeaders =
//           _mergeHeaders(defaultHeaders, headers);

//       print('Merged Headers before request: $mergedHeaders');

//       switch (requestType) {
//         case RequestType.get:
//           return await _client
//               .get(
//                 url,
//                 options: Options(headers: mergedHeaders),
//                 queryParameters: queryParameters,
//               )
//               .timeout(timeOutDuration);

//         case RequestType.getWithToken:
//           return await _client
//               .get(
//                 url,
//                 options: Options(headers: mergedHeaders),
//                 queryParameters: queryParameters,
//               )
//               .timeout(timeOutDuration);

//         case RequestType.post:
//           return await _client
//               .post(
//                 url.trim(),
//                 queryParameters: queryParameters,
//                 data: jsonEncode(parameter),
//                 options: Options(headers: mergedHeaders),
//               )
//               .timeout(timeOutDuration);

//         case RequestType.postWithTokenFormData:
//           return await _client
//               .post(
//                 url,
//                 data: parameter,
//                 options: Options(
//                   headers: {
//                     ...mergedHeaders,
//                     'Content-Type': 'multipart/form-data',
//                   },
//                 ),
//               )
//               .timeout(timeOutDuration);

//         case RequestType.postWithHeaders:
//           return await _client
//               .post(
//                 url.trim(),
//                 data: jsonEncode(parameter),
//                 options: Options(headers: {...defaultHeaders, ...headers}),
//               )
//               .timeout(timeOutDuration);

//         case RequestType.postWithToken:
//           return await _client
//               .post(
//                 url,
//                 data: jsonEncode(parameter),
//                 options: Options(headers: mergedHeaders),
//               )
//               .timeout(timeOutDuration);

//         case RequestType.deleteWithToken:
//           return await _client
//               .delete(
//                 url,
//                 options: Options(headers: mergedHeaders),
//                 data: parameter,
//               )
//               .timeout(timeOutDuration);

//         case RequestType.putWithToken:
//           return await _client
//               .put(
//                 url,
//                 options: Options(headers: mergedHeaders),
//                 data: parameter,
//               )
//               .timeout(timeOutDuration);

//         case RequestType.putWithTokenFormData:
//           return await _client
//               .put(
//                 url,
//                 data: parameter,
//                 options: Options(
//                   headers: {
//                     ...mergedHeaders,
//                     'Content-Type': 'multipart/form-data',
//                   },
//                 ),
//               )
//               .timeout(timeOutDuration);

//         case RequestType.putWithTokenEncoded:
//           return await _client
//               .put(
//                 url,
//                 data: parameter,
//                 options: Options(
//                   headers: {
//                     ...mergedHeaders,
//                     "Content-Type": "application/x-www-form-urlencoded",
//                   },
//                 ),
//               )
//               .timeout(timeOutDuration);
//       }
//     } catch (e) {
//       if (e is DioException) {
//         if (e.response != null) {
//           print('API Error: ${e.response?.statusCode}');
//           print('Error Response: ${e.response?.data}');
//           final errorMessage = e.response?.data['message'] ?? 'Unknown error';
//           throw Exception(' $errorMessage');
//         } else {
//           print('Dio Error without response: ${e.error}');
//           throw Exception('Unexpected error: ${e.error}');
//         }
//       } else {
//         print('Unexpected error: $e');
//         throw Exception("Unexpected error: $e");
//       }
//     }
//   }

//   Map<String, String> _mergeHeaders(
//       Map<String, String> defaultHeaders, Map<String, String>? additionalHeaders) {
//     return {...defaultHeaders, if (additionalHeaders != null) ...additionalHeaders};
//   }
// }
