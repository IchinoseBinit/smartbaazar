import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'resend_email_otp_api.g.dart';

@riverpod
Future<String> resendotpemail(ref, String id) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.get,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/320/verify/resend/email',
    );

    if (response.statusCode! == 200) {
      final responseData = response.data;
      return responseData['message'] ?? 'OTP resend request successful.';
    } else {
      throw Exception('Failed to resend OTP. Status code: ${response.statusCode}');
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
    throw Exception(errorMessage);
  } catch (e) {
    print('Error handling OTP resend: $e');
    throw Exception('Failed to resend OTP');
  }
}
