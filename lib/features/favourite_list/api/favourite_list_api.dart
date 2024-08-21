import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/favourite_list/model/favourite_product_list.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'favourite_list_api.g.dart';

@riverpod
Future<List<FavouriteProductList>> getFavouriteList(
    GetFavouriteListRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.favouriteListUrl,
    );
    if (response.statusCode == 200) {
      final data = response.data['data']['saved_products']['data'] as List;
      final favouriteList =
          data.map((item) => FavouriteProductList.fromJson(item)).toList();
      return favouriteList;
    } else {
      throw Exception('Failed to load wishlist');
    }
  } catch (e) {
    print('Error fetching favourite list product: $e');
    throw Exception('Failed to load favourite list products: $e');
  }
}

@riverpod
Future<void> deleteFavouriteProduct(
    DeleteFavouriteProductRef ref, String productItemId) async {
  final SmartClinet client = SmartClinet();

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
