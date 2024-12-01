import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class ApiService {
  Future<void> addToCart(String myid) async {
    try {
      final SmartClinet client = SmartClinet();

      // Prepare the request payload with the user ID
      final payload = {
        'id': myid,  // Sending the user ID
      };

      // Make the request with the payload
      final response = await client.request(
        requestType: RequestType.postWithToken, // POST request with token
        url: ApiConstants.addtoCartUrl,
        parameter: payload,  // Use 'parameter' to send data
      );

      if (response.statusCode == 200) {
        final result = response.data['data'];
        final message = result['message'];
        print('Cart Update Message: $message');  // Handle success
      } else {
        print('Failed to add to cart: ${response.statusMessage}');
      }
    } catch (e) {
      print('Error occurred while adding to cart: $e');
    }
  }
}
