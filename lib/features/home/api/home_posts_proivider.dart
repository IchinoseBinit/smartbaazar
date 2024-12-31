import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/home_posts_model.dart';
import 'package:smartbazar/features/home/model/product_model.dart'; // Ensure Product model is imported
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part "home_posts_proivider.g.dart";

@riverpod
Future<HomePosts> homePosts(HomePostsRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.homeSlider2BannerUrl,
    );

    final Map<String, dynamic> data = response.data;

    final List<dynamic> sponsoredPostsList = data['sponsored_posts'] ?? [];
    final List<dynamic> trendingList = data['trending'] ?? [];
    final List<dynamic> sliderslist = data['sliders'] ?? [];

    // Ensure the response data contains the expected structure
    // Safely parse the 'sponsored_posts' and 'trending' lists into Product objects
    final sponsoredPosts = sponsoredPostsList
        .map((item) => Product.fromJson(item as Map<String, dynamic>))
        .toList();
    final trending = trendingList
        .map((item) => Product.fromJson(item as Map<String, dynamic>))
        .toList();
    final sliders = sliderslist
        .map((item) => SliderModel.fromJson(item as Map<String, dynamic>))
        .toList();

    return HomePosts(
      sliders: sliders,
      sponsored_posts: sponsoredPosts,
      trending: trending,
    );
  } catch (e) {
    print("Error fetching home posts: $e");
  }

  // Return an empty HomePosts object in case of an error or unexpected response
  return HomePosts(sponsored_posts: [], trending: [], sliders: []);
}
