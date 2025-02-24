import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

class GiveVendorid {
  Future<String> givemeid(String name) async {
    try {
      final SmartClient client = SmartClient();

      // Make the request with the payload
      final response = await client.request(
        requestType: RequestType.get, // POST request with token
        url: 'https://smartbazaar.jianjun-rnd.com.np/api/users/vendor_card/$name',
      );

      if (response.statusCode == 200) {
        final result = response.data['data'];
        final id = result['id']; // Extract ID from response
        print('Cart Update ID: $id'); // Handle success
        return id.toString(); // Return ID as a string
      } else {
      }
    } catch (e) {
      print('Error occurred while adding to cart: $e');
    }
    return 'retry';
  }
}
