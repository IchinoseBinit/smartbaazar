import 'package:dio/dio.dart';

class ApiService {
  Future<void> addToCart(
    String pid,
  ) async {
    final client = Dio();

    try {
      final response = await client.post(
        "https://smartbazaar.jianjun-rnd.com.np/api/users/addToCart",
        data: {
          'id': pid, // ID field
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-AppApiToken': 'Yala@Techies_Nepal',
          },
        ),
      );

      if (response.statusCode == 200) {
        print('Cart updated successfully!');
        print('Response Data: ${response.data}');
      } else {
        print('Failed to add to cart: ${response.statusCode}');
        print('Response data: ${response.data}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        print(
            'Error adding to cart: ${e.message}, Status Code: ${e.response?.statusCode}');
        print('Response data: ${e.response?.data}');
      } else {
        print('Error adding to cart: ${e.message}');
      }
    } catch (e) {
      print('Unexpected error: $e');
    }
  }
}
