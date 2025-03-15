import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'favourite_list_api.g.dart';

Future<FavouriteProductList> getFavouriteList(dynamic ref,
    {int pagenum = 1}) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url:
          'https://smartbazaar.jianjun-rnd.com.np/api/savedPosts?page=$pagenum',
    );

    if (response.statusCode == 200) {
        final Map<String, dynamic> rawData = response.data;
      
      // Create a new Map with the expected structure
      final Map<String, dynamic> processedData = {
        'data': rawData['data'],
        'msg': rawData['msg']
      };
      
      // Now safely convert to FavouriteProductList
      return FavouriteProductList.fromJson(processedData);
    } else {
      throw Exception('Failed to load favourite list: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching favourite list: $e');
    // Return an empty or default instance instead of null
    return FavouriteProductList(data: null, msg: null);
  }
}

@riverpod
Future<void> deleteFavouriteProduct(
    DeleteFavouriteProductRef ref, String productItemId) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.deleteWithToken,
      url: '${ApiConstants.removeFavouriteListingUrl}/$productItemId',
    );

    if (response.statusCode == 200) {
      print('Item deleted successfully');
    } else {
      throw Exception('Failed to delete the item');
    }
  } catch (e) {
    throw Exception('Error deleting item: $e');
  }
}
