import 'package:dio/dio.dart';
import 'package:smartbazar/constant/api_constant.dart';

class ApiService {
  Future<void> addToCart(int myid) async {
    final client = Dio(BaseOptions(
        followRedirects: false,
        validateStatus: (status) {
          return status != null && status >= 200 && status < 400;
        }));

    try {
      // Create FormData object with your parameters
      final formData = FormData.fromMap({
        'id': myid,  // Assuming the server expects the field 'id'
      });

      final response = await client.post(
        ApiConstants.addtoCartUrl,
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded', // Form data
            'accept': '*/*',
            'Connection': 'Keep-Alive',
            'X-AppApiToken': 'Yala@Techies_Nepal',
          },
        ),
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        final data = response.data;
        print('Response Data: $data');  // Log the response data
      } else {
        print('Error adding to cart: ${response.statusCode}, ${response.data}');
        throw Exception('Failed to add to cart');
      }
    } catch (e) {
      if (e is DioException) {
        print('Error adding to cart: ${e.message}');
        if (e.response != null) {
          print('Response data: ${e.response?.data}');
          print('Status code: ${e.response?.statusCode}');
        }
      } else {
        print('Error adding to cart: $e');
      }
    }
  }
}
