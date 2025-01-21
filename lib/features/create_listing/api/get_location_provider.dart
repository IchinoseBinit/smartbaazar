import 'package:smartbazar/features/create_listing/model/places_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

Future<PlacesResponse> getpickaddress(String cityname) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url:
          'https://smartbazaar.jianjun-rnd.com.np/api/users/autocomplete-location?input=$cityname',
    );

    // Log the response for debugging
    print("API Response: ${response.data}");

    if (response.statusCode == 200) {
      final jsonResponse = response.data as Map<String, dynamic>;
      return PlacesResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
          'Failed to load location data. Status code: ${response.statusCode}');
    }
  } catch (error) {
    // Log the error and rethrow for further handling
    print('Error fetching location data: $error');
    throw Exception('Failed to fetch location data: $error');
  }
}
