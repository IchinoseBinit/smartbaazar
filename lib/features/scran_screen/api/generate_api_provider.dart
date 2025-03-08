import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_api_provider.g.dart';

@riverpod
Future<String> generateMyQR(ref, String imagePath) async {
  final Dio dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 15),
  ));

  int retryCount = 3;
  while (retryCount > 0) {
    try {
      final Response qrResponse = await dio.post(
        'https://qrcode.jianjun-rnd.com.np/api/qr-code',
        data: FormData.fromMap({
          'qr_data': 'www.smartbazaar.com.np', // QR code data
          'background_url': imagePath
        }),
        options: Options(headers: {
          'Content-Type': 'multipart/form-data',
          'X-AppApiToken': 'Yala@Techies_Nepal',  // ✅ Add API token
        }),
      );

      if (qrResponse.statusCode == 200) {
        return qrResponse.data['qr_url']; // ✅ Return the generated QR URL
      } else {
        throw Exception("Unexpected response: ${qrResponse.data}");
      }
    } catch (e) {
      if (retryCount == 1) {
        throw Exception("QR code generation failed after retries: $e");
      }
      retryCount--;
      await Future.delayed(const Duration(seconds: 2)); // Wait before retrying
    }
  }
  throw Exception("QR code generation failed.");
}
