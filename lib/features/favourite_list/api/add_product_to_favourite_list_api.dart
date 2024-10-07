import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'add_product_to_favourite_list_api.g.dart';

@riverpod
Future<void> addToFavorites(AddToFavoritesRef ref, String userId, String postId) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: ApiConstants.saveFavouriteListingUrl,
      parameter: {
        'user_id': userId,
        'post_id': postId,
      },
    );

    final responseData = response.data;
    
    if (responseData['success'] == true) {
      print('Listing saved in favorites successfully!');
    } else {
      throw Exception('Failed to save favorite product: ${responseData['message']}');
    }
  } catch (e) {
    print('Error posting favorite list product: $e');
    throw Exception('Failed to save favorite product: $e');
  }
}