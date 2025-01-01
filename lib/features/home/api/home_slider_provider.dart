import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/brand_bazar/model/brand_bazar_model.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';
import 'package:smartbazar/features/services_screen/api/service_provider.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part "home_slider_provider.g.dart";
class VProduct {
  final String id;
  final String price;
  final String title;
  final String description;
  final VendorUser user;
  final String image;
  final int? similarProductCount;
  final VendorUserDetail userDetail;
  final String? offers;
  final String? discountedPrice;
  final int? avgRating;
  final int? commentCount;
  final String? wow;

  VProduct({
    required this.id,
    required this.title,
    required this.avgRating,
    required this.commentCount,
    required this.wow,
    required this.discountedPrice,
    required this.description,
    required this.similarProductCount,
    required this.user,
    required this.image,
    required this.price,
    required this.offers,
    required this.userDetail,
  });

  factory VProduct.fromJson(Map<String, dynamic> json) {
    
    return VProduct(
      wow: json['wow'],
      discountedPrice: json['discounted_price'],
      commentCount: json['commentcount'],
      avgRating: json['avg_rating'],
      offers: json['offers'],
      image: json['image'],
      price: json['price'],
      id: json['id'],
      title: json['title'],
      description: json['description'],
      similarProductCount: json['similarProductCount'],
      userDetail: VendorUserDetail.fromJson(json['userDetail'] ?? {}),
      user: VendorUser.fromJson(json['user'] ?? {}),
    );
  }
}

class Homepage1 {
  final List<Advertisement> advertisements;
  final List<VProduct> allProducts;
  // final VendorUser user;

  Homepage1({
    required this.advertisements,
    required this.allProducts,
    // required this.user,
  });

  factory Homepage1.fromJson(Map<String, dynamic> json) {
    return Homepage1(
      advertisements: (json['advertisements'] as List<dynamic>?)
              ?.map((ad) => Advertisement.fromJson(ad))
              .toList() ??
          [],
      allProducts: (json['all_products'] as List<dynamic>?)
              ?.map((product) => VProduct.fromJson(product))
              .toList() ??
          [],
      // user: VendorUser.fromJson(json['user'] ?? {}),
    );
  }
}

@riverpod
Future<Homepage1> fetchAdvertisements(FetchAdvertisementsRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.homeSlider2BannerUrl,
    );

    final data = response.data;

    if (data == null) {
      throw Exception("No data returned from API");
    }

    final homepage = Homepage1.fromJson(data);

    print("kalu data: ${homepage.allProducts.first.userDetail.membership_title}"); // Log the raw response data



    return homepage;
  } catch (e) {
    throw Exception("Failed to fetch homepage data: $e");
  }
}