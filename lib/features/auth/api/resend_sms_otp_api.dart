import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resend_sms_otp_api.g.dart';

@riverpod
Future<String> resendotpsms(ref, int id) async {
  final Dio dio = Dio(); // Create Dio instance

  try {
    final response = await dio.get(
      'https://smartbazaar.jianjun-rnd.com.np/api/users/$id/verify/resend/sms',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
          'Connection': 'Keep-Alive',
          'X-AppApiToken': 'Yala@Techies_Nepal',
        },
      ),
    );

    print(response.data);

    if (response.statusCode == 200) {
      final responseData = response.data;
      return responseData['message'] ?? 'OTP resend request successful.';
    } else {
      throw Exception('Failed to resend OTP. Status code: ${response.statusCode}');
    }

  } catch (e) {
    print('Error handling OTP resend: $e');
    throw Exception('Failed to resend OTP');
  }
}
