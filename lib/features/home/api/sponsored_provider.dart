import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/main.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

part "sponsored_provider.g.dart";

class SponsoredProduct {
  final String id;
  final String title;
  final String description;
  final String price;
  double? shortestDistance;
  final String? image;
  final String? post_type_id;
  String? wow;
  final int? commentcount;
  final int? similarProductCount;
  final UserDetailsModel? userdetails;
  final String? offers;
  final int? avg_rating;
  final String? discounted_price;
  final int? discount_percentage;
    final List<SavedPost>? savedByLoggedUser;

  // final String? membership_id;

  SponsoredProduct({
    this.wow,
    // required this.membership_id,
    required this.post_type_id,
    required this.shortestDistance,
    required this.discounted_price,
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.commentcount,
    required this.similarProductCount,
    this.userdetails,
    this.offers,
    this.avg_rating,
    this.discount_percentage,
    this.savedByLoggedUser
  });

  factory SponsoredProduct.fromJson(Map<String, dynamic> json) {
       List<SavedPost> savedByLoggedUserList = [];
    if (json['savedByLoggedUser'] != null &&
        json['savedByLoggedUser'] is List) {
      savedByLoggedUserList = (json['savedByLoggedUser'] as List)
          .map((item) => SavedPost.fromJson(item))
          .toList();
    }
    print("lama ${json['wow']}");
    return SponsoredProduct(
      savedByLoggedUser:savedByLoggedUserList ,

      // membership_id: json['membership_id'],
      post_type_id: json['post_type_id'],
      discount_percentage: json['discount_percentage'],
      wow: json['wow'] ?? '0',
      shortestDistance: json['shortestDistance'] ?? 0.0,
      commentcount: json['commentcount'] as int,
      avg_rating: json['avg_rating'] as int,
      discounted_price: json['discounted_price'] ?? '',
      offers: json['offers'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      similarProductCount: json['similarProductCount'] as int,
      userdetails: json['userdetails'] != null
          ? UserDetailsModel.fromJson(json['userdetails'])
          : null,
    );
  }
}

@riverpod
Future<List<SponsoredProduct>> fetchSponsored(FetchSponsoredRef ref) async {
  final SmartClient client = SmartClient();
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
