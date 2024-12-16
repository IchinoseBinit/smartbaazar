import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
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
  final UserDetails? userdetails;

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
          ? UserDetails.fromJson(json['userdetails'])
          : null,
    );
  }
}

class UserDetails {
  final String userId;
  final String membershipTitle;
  final String name;
  final String photo;
  final String? memberColor;

  UserDetails({
    required this.userId,
    required this.membershipTitle,
    required this.name,
    required this.photo,
    required this.memberColor,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      userId: json['user_id'] as String,
      memberColor: json['membership_color'] as String,
      membershipTitle: json['membership_title'] as String,
      name: json['name'] as String,
      photo: json['photo'] as String,
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