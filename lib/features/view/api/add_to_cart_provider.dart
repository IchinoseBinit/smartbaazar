import 'package:dio/dio.dart';
import 'package:smartbazar/constant/api_constant.dart';

class ApiService {
  // final Dio _dio = Dio();

  Future<void> addToCart(String productId) async {
    final clinet = Dio();

    try {
 
      final response = await clinet.post(
        ApiConstants.addtoCartUrl,
        data: {
          'id': productId,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-AppApiToken': 'Yala@Techies_Nepal',
          },
        ),
      );

      if (response.statusCode == 200) {
        print('Added to cart successfully');
      } else {
        print('Failed to add to cart: ${response.statusCode}');
      }
    } catch (e) {
      print('Error adding to cart: $e');
    }
  }
}



