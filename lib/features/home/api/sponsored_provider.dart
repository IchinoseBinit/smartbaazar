import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part "sponsored_provider.g.dart";

class SponsoredProduct {
  final String id;
  final String title;
  final String description;
  final String price;
  final String image;
  final int? similarProductCount;
  final UserDetailsModel? userdetails;

  SponsoredProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.similarProductCount,
    this.userdetails,
  });

  factory SponsoredProduct.fromJson(Map<String, dynamic> json) {
    return SponsoredProduct(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      similarProductCount : json['similarProductCount'] as int,
      userdetails: json['userdetails'] != null
          ? UserDetailsModel.fromJson(json['userdetails'])
          : null,
    );
  }
}



@riverpod
Future<List<SponsoredProduct>> fetchSponsored(FetchSponsoredRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.homeSlider1BannerUrl,
    );

    if (response.data == null || response.data['sponsored_posts'] == null) {
      throw Exception("No valid data returned from API");
    }

    final sponsoredPosts = (response.data['sponsored_posts'] as List<dynamic>)
        .map((postJson) => SponsoredProduct.fromJson(postJson))
        .toList();

    return sponsoredPosts;
  } catch (e, stackTrace) {
    print("Failed to fetch sponsored products: $e");
    print("StackTrace: $stackTrace");
    throw Exception("Failed to fetch sponsored products");
  }
}
