import 'package:flutter/material.dart';
import 'package:smartbazar/features/view/api/add_to_cart_provider.dart';

class CustomDialougebox {
  final ApiService _apiService = ApiService();
  Future<void> addToCart(BuildContext context, String productId) async {
    try {
      await _apiService.addToCart(productId);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Items added to cart")));
    } catch (e) {
       ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Failed adding to cart $e")));
    

    }
  }
}
