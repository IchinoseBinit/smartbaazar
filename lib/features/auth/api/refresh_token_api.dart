import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/auth/model/refresh_token_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'refresh_token_api.g.dart';

@riverpod
Future<RefreshTokenResponse> getRefreshToken(GetRefreshTokenRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final prefs = await SharedPreferences.getInstance();
    final refreshToken = prefs.getString('refreshToken');

    if (refreshToken == null) {
      throw Exception("No refresh token found");
    }

    //final fullUri = Uri.parse(ApiConstants.refreshTokenUrl);
    print(refreshToken);
    final response = await client.request(
      requestType: RequestType.post,
      // url: ApiConstants.refreshTokenUrl,
      url:
          '${ApiConstants.refreshTokenUrl}?refresh_token=$refreshToken&device_name=Dell laptop',
      // queryParameters: {
      //   'refresh_token': refreshToken,
      //   'device_name': 'Dell laptop',
      // }
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      // Update tokens in SharedPreferences and in-memory client
      final tokenData = RefreshTokenResponse.fromJson(response.data);

      SmartClinet.token = tokenData.authToken;
      SmartClinet.refresh = tokenData.refreshToken;

      await prefs.setString('accessToken', tokenData.authToken);
      await prefs.setString('refreshToken', tokenData.refreshToken);

      return tokenData;
    } else {
      throw Exception('Failed to refresh token: ${response.statusCode}');
    }
  } catch (e) {
    print('Error handling refresh token: $e');
    throw Exception('Failed to handle refresh token');
  }
}
