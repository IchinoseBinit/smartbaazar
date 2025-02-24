import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/home/model/home_search_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'story_search_api.g.dart';

@riverpod
Future<HomeSearchResopnse> searchstoryapi(ref, String query) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      parameter: {'q': query}, // Corrected parameter format
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/homeSections/story_search',
    );

    if (response.statusCode == 200) {
      final responseData = response.data as Map<String, dynamic>;
      return HomeSearchResopnse.fromJson(responseData); // Deserialize JSON
    } else {
      throw Exception('Failed to fetch stories: ${response.statusCode}');
    }
  } catch (e) {
    print('Error loading story: $e');
    throw Exception('Failed to load story content: $e');
  }
}
