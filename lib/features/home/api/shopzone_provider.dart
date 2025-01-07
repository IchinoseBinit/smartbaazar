import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part "shopzone_provider.g.dart";

class HomeProductType {
  final List<CategoryProduct> new_products;
  final List<CategoryProduct> used_products;
  final List<CategoryProduct> services;
  final List<CategoryProduct> jobs;
  final List<CategoryProduct> b2b_products;
  final List<CategoryProduct> event;
  final List<CategoryProduct> grocarry;

  HomeProductType(
      {required this.new_products,
      required this.used_products,
      required this.services,
      required this.jobs,
      required this.b2b_products,
      required this.event,
      required this.grocarry});
}

@riverpod
Future<HomeProductType> homeCategory(HomeCategoryRef ref) async {
  final SmartClient client = SmartClient();
  try {
    // Make the request
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.homeSliderBannerUrl,
    );

    // Check if the response is successful (status code 200)
    if (response.statusCode == 200) {
      // If the response is already a Map, no need to decode it again
      final data = response.data is String
          ? jsonDecode(response.data) // Decode if it's a string
          : response.data; // Use as is if it's already a Map

      // Ensure we check if each list exists in the data to avoid errors
      return HomeProductType(
        event: (data['events'] as List?)
                ?.map((product) => CategoryProduct.fromJson(product))
                .toList() ??
            [],
        grocarry: (data['grocery'] as List?)
                ?.map((product) => CategoryProduct.fromJson(product))
                .toList() ??
            [],
        new_products: (data['new_products'] as List?)
                ?.map((product) => CategoryProduct.fromJson(product))
                .toList() ??
            [],
        used_products: (data['used_products'] as List?)
                ?.map((product) => CategoryProduct.fromJson(product))
                .toList() ??
            [],
        services: (data['services'] as List?)
                ?.map((product) => CategoryProduct.fromJson(product))
                .toList() ??
            [],
        jobs: (data['jobs'] as List?)
                ?.map((product) => CategoryProduct.fromJson(product))
                .toList() ??
            [],
        b2b_products: (data['b2b_products'] as List?)
                ?.map((product) => CategoryProduct.fromJson(product))
                .toList() ??
            [],
      );
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle the error (logging or fallback values)
    print('Error fetching data: $e');
    return HomeProductType(
      grocarry: [],
      event: [],
      new_products: [],
      used_products: [],
      services: [],
      jobs: [],
      b2b_products: [],
    );
  }
}

// Model for Product (CategoryProduct) and Vendor (User)
// Model for Category Product
class CategoryProduct {
  final String id;
  final String price;
  final String title;
  final String description;
  final VendorUser? userdetails;
  final String image;
  final String? discountedPrice;
  final int? similarProductCount;
  final String? offers;
  final String? wow;
  final int? commentCount;
  final int? discount_percentage;
  final int? avgRating;
  final double? shortestDistance;
  final String? nearestBranch;

  CategoryProduct(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      this.userdetails,
      required this.image,
      this.discountedPrice,
      this.similarProductCount,
      this.offers,
      this.wow,
      this.commentCount,
      this.avgRating,
      this.shortestDistance,
      this.nearestBranch,
      this.discount_percentage});

  factory CategoryProduct.fromJson(Map<String, dynamic> json) {
    return CategoryProduct(
      discount_percentage: json['discount_percentage'],
      id: json['id'] ?? '',
      price: json['price'] ?? '0.0',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      userdetails: json['userdetails'] != null
          ? VendorUser.fromJson(json['userdetails'])
          : null,
      image: json['image'] ?? '',
      discountedPrice: json['discounted_price'],
      similarProductCount: json['similarProductCount'] as int?,
      offers: json['offers'] ?? '',
      wow: json['wow'],
      commentCount: json['commentcount'] as int?,
      avgRating: json['avg_rating'] as int?,
      shortestDistance: (json['shortestDistance'] != null)
          ? double.tryParse(json['shortestDistance'].toString())
          : null,
      nearestBranch: json['nearestBranch'],
    );
  }
}

// Model for Vendor User
class VendorUser {
  final String id;
  final String name;
  final String photo;
  final String? memberColor;
  final double? shortestDistance;
  final String? nearestBranch;
  final bool? sponsored;
  final String? membershipTitle;

  VendorUser({
    required this.id,
    required this.name,
    required this.photo,
    this.memberColor,
    this.shortestDistance,
    this.nearestBranch,
    this.sponsored,
    this.membershipTitle,
  });

  factory VendorUser.fromJson(Map<String, dynamic> json) {
    return VendorUser(
      id: json['user_id'] ?? '',
      name: json['name'] ?? '',
      photo: json['photo'] ?? '',
      memberColor: json['membership_color'],
      shortestDistance: (json['shortestDistance']),
      nearestBranch: json['nearestBranch'],
      sponsored: json['sponsored'] ?? false,
      membershipTitle: json['membership_title'],
    );
  }
}

// Fixed ShopZone model to be consistent
class ShopZone {
  final String id;
  final String price;
  final String title;
  final String description;
  final Vendor user;
  final String image;

  ShopZone({
    required this.id,
    required this.title,
    required this.description,
    required this.user,
    required this.image,
    required this.price,
  });

  // Return ShopZone instead of CategoryProduct
  factory ShopZone.fromJson(Map<String, dynamic> json) {
    return ShopZone(
      image: json['image'] ?? '',
      price: json['price'] ?? '',
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      user: Vendor.fromJson(json['user'] ?? {}),
    );
  }
}

// Vendor model
class Vendor {
  final String id;
  final String name;

  Vendor({required this.id, required this.name});

  factory Vendor.fromJson(Map<String, dynamic> json) {
    return Vendor(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
