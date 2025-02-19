import 'package:http/http.dart' as http;
import 'dart:convert';

class GooglePlaceApiHelper {
  static Future<Map<String, dynamic>?> getPlaceDetails(
      String placeId, String apiKey) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['result'];
    } else {
      print('Failed to fetch place details: ${response.body}');
      return null;
    }
  }
}