import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'my_listing_api.g.dart';

@riverpod
Future<MyListingModel> getMyListingResponse(ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/posts/mylistings',
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      print("kalo ${MyListingModel.fromJson(jsonResponse)}");

      return MyListingModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load notifications');
    }
  } catch (e) {
    print('Error loading notifications: $e');
    throw Exception('Failed to load notifications: $e');
  }
}
