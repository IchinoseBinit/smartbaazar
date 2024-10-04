import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/add_to_cart/model/cart_item_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'cart_item_api.g.dart';

@riverpod
Future<Map<String, List<Object>>> getCartItem(GetCartItemRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getCart,
    );

    if (response.statusCode == 200) {
      final data = response.data['data'];
      final cartList = data['cart'] as List;
      final vendorList = data['vendors'] as List;

      final cartItems =
          cartList.map((item) => CartItem.fromJson(item)).toList();
      final vendors = vendorList.map((item) => Vendor.fromJson(item)).toList();

      return {
        'cart': cartItems,
        'vendors': vendors,
      };
    } else {
      throw Exception('Failed to load cart items');
    }
  } catch (e) {
    print('Error fetching cart items: $e');
    throw Exception('Failed to load cart items: $e');
  }
}

class CartItemApi {
  static Future<Response> incrementQuantity(String itemId) async {
    final SmartClinet client = SmartClinet();

    final response = await client.request(
        requestType: RequestType.postWithToken,
        url: ApiConstants.incrementQuantity,
        parameter: {'id': itemId});

    return response;
  }
}

// @riverpod
// Future<void> deleteCartItem(DeleteCartItemRef ref,String cartItemId) async {
//     try {
//       final response = await _dio.delete(
//         'https://smartbazaar.jianjun-rnd.com.np/api/cart/$cartItemId',
//       );

//       if (response.statusCode == 200) {
//         print('Item deleted successfully');
//       } else {
//         throw Exception('Failed to delete the item');
//       }
//     } catch (e) {
//       throw Exception('Error deleting item: $e');
//     }
//   }
