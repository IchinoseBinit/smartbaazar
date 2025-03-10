import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/add_to_cart/model/cart_item_model.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'cart_item_api.g.dart';

@riverpod
Future<Map<String, List<Object>>> getCartItem(GetCartItemRef ref) async {
  final SmartClient client = SmartClient();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getCart,
    );

    if (response.statusCode == 200) {
      final data = response.data['data'];

      if (data == null || data is! Map || !data.containsKey('cart')) {
        throw Exception('Please log in to continue.');
      }

      final cartList = data['cart'] as List?;
      final vendorList = data['vendors'] as List?;

      final cartItems =
          cartList?.map((item) => CartItem.fromJson(item)).toList() ?? [];
      final vendors =
          vendorList?.map((item) => Vendor.fromJson(item)).toList() ?? [];

      return {
        'cart': cartItems,
        'vendors': vendors,
      };
    } else {
      throw Exception('Failed to load cart items.');
    }
  } catch (e) {
    //   final customException = getCustomException(e);
    print('PLease login'); // Log specific message
    throw e.toString(); // Rethrow with specific message
  }
}

class CartItemApi {
  static Future<Response> incrementQuantity(String itemId) async {
    final SmartClient client = SmartClient();

    final response = await client.request(
        requestType: RequestType.postWithToken,
        url: ApiConstants.incrementQuantity,
        parameter: {'id': itemId});

    return response;
  }

  static Future<Response> decrementQuantity(String itemId) async {
    final SmartClient client = SmartClient();
    FormData formData = FormData.fromMap({
      'id': itemId,
    });

    final response = await client.request(
        requestType: RequestType.postWithTokenFormData,
        url: ApiConstants.decrementQuantity,
        parameter: formData);

    return response;
  }
}

@riverpod
Future<void> deleteCartItem(DeleteCartItemRef ref, String cartItemId) async {
  final SmartClient client = SmartClient();
  FormData formData = FormData.fromMap({
    'id': cartItemId,
  });
  try {
    final response = await client.request(
        requestType: RequestType.postWithTokenFormData,
        url: ApiConstants.removeCartItemUrl,
        parameter: formData);

    if (response.statusCode == 200) {
      print('Item deleted successfully');
    } else {
      throw Exception('Failed to delete the item');
    }
  } catch (e) {
    throw Exception('Error deleting item: $e');
  }
}
