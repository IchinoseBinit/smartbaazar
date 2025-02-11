import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/refresh_token_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'refresh_token_api.g.dart';

@riverpod
Future<RefreshTokenResponse> getRefreshToken(GetRefreshTokenRef ref) async {
  final SmartClient client = SmartClient();
  try {
    final prefs = await SharedPreferences.getInstance();
    final refreshToken = prefs.getString('refreshToken');

    if (refreshToken == null) {
      throw Exception("No refresh token found");
    }

    final response = await client.request(
      requestType: RequestType.post,
      url: '${ApiConstants.refreshTokenUrl}?refresh_token=$refreshToken',
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      final tokenData = RefreshTokenResponse.fromJson(response.data);

      // Update tokens in SmartClient and SharedPreferences
      SmartClient.token = tokenData.authToken;
      SmartClient.refresh = tokenData.refreshToken;
      

      await prefs.setString('accessToken', tokenData.authToken);
      await prefs.setString('refreshToken', tokenData.refreshToken);

      return tokenData;
    } else {
      throw Exception('Failed to refresh token: ${response.statusCode}');
    }
  } on DioException catch (e) {
    String errorMessage = 'An unexpected error occurred.';
    if (e.response != null) {
      errorMessage = e.response?.data['message'] ?? 'Unknown server error';
    } else if (e.type == DioExceptionType.connectionTimeout) {
      errorMessage = 'Connection timeout. Please try again.';
    } else {
      errorMessage = 'Something went wrong. Please check your connection.';
    }
    throw Exception(e.response?.data['message'] ?? errorMessage);
  } catch (e) {
    print('Error handling refresh token: $e');
    throw Exception('Failed to handle refresh token');
  }
}
