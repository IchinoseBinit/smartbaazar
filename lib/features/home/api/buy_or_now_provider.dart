import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'buy_or_now_provider.g.dart';

// Models
class HotWithBuy {
  final Map<String, VendorModel> homestory;
  final List<Home1GlobalModel> home;
  final List<Buynowmodel> buynow;
  final List<LogoData> global;
  final List<LogoData> domestic;
  final List<LogoData> spotlight;
  final List<List<GlobalModel>> insidearr;
  final List<List<GlobalModel>> spot;
  final List<List<GlobalModel>> doma;

  HotWithBuy({
    required this.homestory,
    required this.home,
    required this.buynow,
    required this.global,
    required this.domestic,
    required this.spotlight,
    required this.insidearr,
    required this.spot,
    required this.doma,
  });
}

class VendorModel {
  final String vendorName;
  final String vendorImage;
  final int storyCount;
  final bool hasSponsoredGifts;
  final List<PostModel> posts;

  VendorModel({
    required this.vendorName,
    required this.vendorImage,
    required this.storyCount,
    required this.hasSponsoredGifts,
    required this.posts,
  });

  factory VendorModel.fromJson(Map<String, dynamic> json) {
    final posts = (json['posts'] as List<dynamic>)
        .map((post) => PostModel.fromJson(post))
        .toList();

    return VendorModel(
      vendorName: json['vendor_name'] as String,
      vendorImage: json['vendor_image'] as String,
      storyCount: json['story_count'] as int,
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool,
      posts: posts,
    );
  }
}

class PostModel {
  final String id;
  final String title;
  final String image;
  final int similarProductCount;
  final String commentCount;
  // final int? averageRating;
  final double? discountPercentage;
  final String? wow;

  PostModel({
    required this.id,
    required this.title,
    required this.image,
    required this.similarProductCount,
    required this.commentCount,
    // required this.averageRating,
    this.discountPercentage,
    this.wow,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      similarProductCount: json['similarproductcount'] as int,
      commentCount: json['comment_count'] as String,
      // averageRating: json['average_rating'] as int,
      discountPercentage: json['discount_percentage'] != null
          ? (json['discount_percentage'] as num).toDouble()
          : null,
      wow: json['wow'] as String?,
    );
  }
}

class LogoData {
  final String? brandLogo;
  final String? brandName;
  final String? userId;
  final bool? hasSponsoredGifts;

  LogoData({
    required this.brandLogo,
    required this.brandName,
    this.userId,
    this.hasSponsoredGifts,
  });

  factory LogoData.fromJson(Map<String, dynamic> json) {
    return LogoData(
      brandLogo: json['brand_logo'] as String?,
      brandName: json['brand_name'] as String?,
      userId: json['user_id'] as String?,
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
    );
  }
}

class Buynowmodel {
  final String image;
  final String vendorImage;
  final String? worth;
  final String name;

  final int winners;

  Buynowmodel({
    required this.worth,
    required this.image,
    required this.vendorImage,
    required this.name,
    required this.winners,
  });

  factory Buynowmodel.fromJson(Map<String, dynamic> json) {
    return Buynowmodel(
      worth: json['worth'] as String,
      image: json['image'] as String,
      vendorImage: json['vendor_image'] as String,
      name: json['vendor_name'] as String,
      winners: json['winners'] as int,
    );
  }
}

class Home1GlobalModel {
  final String id;
  final String title;
  final String description;
  final String price;
  final String image;
  final int? similarProductCount;
  final UserDetailsModel? userDetails;

  Home1GlobalModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    this.userDetails,
    required this.similarProductCount,
  });

  factory Home1GlobalModel.fromJson(Map<String, dynamic> json) {
    return Home1GlobalModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      similarProductCount: json['similarProductCount'] as int,
      userDetails: json['userdetails'] != null
          ? UserDetailsModel.fromJson(json['userdetails'])
          : null,
    );
  }
}

// @freezed
// class UserDetails with _$UserDetails {
//   const factory UserDetails({
//     @JsonKey(name: 'user_id') required String userId,
//     @JsonKey(name: 'name') String? name,
//     @JsonKey(name: 'photo') String? photo,
//     @JsonKey(name: 'membership_color') String? membershipColor,
//     @JsonKey(name: 'membership_title') String? membershipTitle,
//     @JsonKey(name: 'sponsored') bool? sponsored,
//     @JsonKey(name: 'shortestDistance') double? shortestDistance,
//     @JsonKey(name: 'livePrizes') int? livePrizes,
//     @JsonKey(name: 'storyCount') int? storyCount,
//     @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
//     // Uncomment below for nearestBranch if needed
//     // @JsonKey(name: 'nearestBranch') NearestBranch? nearestBranch,
//   }) = _UserDetails;

//   factory UserDetails.fromJson(Map<String, dynamic> json) =>
//       _$UserDetailsFromJson(json);
// }

// Uncomment this part for nearestBranch if required
// @freezed
// class NearestBranch with _$NearestBranch {
//   const factory NearestBranch({
//     @JsonKey(name: 'location') String? location,
//     @JsonKey(name: 'longitude') String? longitude,
//     @JsonKey(name: 'latitude') String? latitude,
//   }) = _NearestBranch;

//   factory NearestBranch.fromJson(Map<String, dynamic> json) =>
//       _$NearestBranchFromJson(json);
// }

// Riverpod Provider
@riverpod
Future<HotWithBuy> fetchBuyAndHot(FetchBuyAndHotRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: 'https://smartbazaar.jianjun-rnd.com.np/api/homeSections',
    );
    final data = response.data;
    print("baby ${response.data['buy_or_win']}");

    final newProducts = (data['new_products'] as List<dynamic>?)
            ?.map((productJson) => Home1GlobalModel.fromJson(productJson))
            .toList() ??
        [];

    final buyNowList = (data['buy_now'] as List<dynamic>?)
            ?.map((buyNowJson) => Buynowmodel.fromJson(buyNowJson))
            .toList() ??
        [];

    final buyOrWinList = (data['buy_or_win'] as List<dynamic>?)
            ?.map((winJson) => Buynowmodel.fromJson(winJson))
            .toList() ??
        [];
    final global =
        (data['global_brandbazarLogos'] as List<dynamic>?)?.map((winJson) {
              return LogoData.fromJson(winJson);
            }).toList() ??
            [];
    print("Mapping JSON: ${global.length}"); // Debug each item

    final locald = (data['domestic_brandbazarLogos'] as List<dynamic>?)
            ?.map((winJson) => LogoData.fromJson(winJson))
            .toList() ??
        [];
    print("Mapping doma: ${locald.length}"); // Debug each item

    final spotd = (data['spotlightLogos'] as List<dynamic>?)
            ?.map((winJson) => LogoData.fromJson(winJson))
            .toList() ??
        [];
    print("Mapping spot: ${spotd.length}"); // Debug each item

    final rawBrandbazarGlobal =
        data['brandbazar_global'] as List<dynamic>? ?? [];

    final insid = rawBrandbazarGlobal.map((innerList) {
      if (innerList is List<dynamic>) {
        return innerList.map((logoJson) {
          if (logoJson is Map<String, dynamic>) {
            return GlobalModel.fromJson(logoJson);
          } else {
            throw Exception('Expected Map<String, dynamic>, found: $logoJson');
          }
        }).toList();
      } else {
        throw Exception('Expected List<dynamic>, found: $innerList');
      }
    }).toList();

    final spotl = (data['spotlights'] as List<dynamic>? ?? []).map((innerList) {
      return (innerList as List<dynamic>)
          .map((logoJson) =>
              GlobalModel.fromJson(logoJson as Map<String, dynamic>))
          .toList();
    }).toList();
    final domas =
        (data['brandbazar_domestic'] as List<dynamic>? ?? []).map((innerList) {
      return (innerList as List<dynamic>)
          .map((logoJson) =>
              GlobalModel.fromJson(logoJson as Map<String, dynamic>))
          .toList();
    }).toList();

    // final Map<String, VendorModel> homestory = (data['home_story']
    //             as Map<String, dynamic>?)
    //         ?.map((key, value) => MapEntry(
    //             key, VendorModel.fromJson(value as Map<String, dynamic>))) ??
    //     {};

    return HotWithBuy(
        homestory: {},
        doma: domas,
        spot: spotl,
        home: newProducts,
        buynow: buyOrWinList,
        global: global,
        insidearr: insid,
        domestic: locald,
        spotlight: spotd);
  } catch (e, stackTrace) {
    print("Error fetching data: $e, StackTrace: $stackTrace");
    throw Exception("Failed to fetch homepage data");
  }
}

class GlobalModel {
  final String id;
  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final String discont;
  final List<UserDetailsModel> user;
  final String contactName;
  final String wow;
  final String commentnum;
  final String stock;
  final String offers;

  final double? avg_rating;
  final double? shortestDistance;

  final int? similarproductCount;

  GlobalModel(
      {required this.commentnum,
      required this.wow,
      required this.stock,
      required this.id,
      required this.offers,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.user,
      required this.contactName,
      required this.similarproductCount,
      required this.shortestDistance,
      required this.avg_rating,
      required this.discont});

  // Factory constructor to create a GlobalModel instance from JSON
  factory GlobalModel.fromJson(Map<String, dynamic> json) {
    return GlobalModel(
      offers: json['offers'] ?? '',
      shortestDistance: json['shortestDistance'] ?? 0.0,
      avg_rating: json['average_rating'] ?? 0,
      commentnum: json['stock'] ?? '0',
      stock: json['discounted_price'] ?? '0',
      wow: json['wow'] ?? '0',
      discont: json['discounted_price'] ?? '0',
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      similarproductCount: json['similarProductCount'] ?? '',
      price: json['price'] ?? '',
      imageUrl: json['image'] ?? '',
      contactName: json['contact_name'] ?? '',
      user: (json['userdetails'] is List)
          ? (json['userdetails'] as List)
              .map((userJson) => UserDetailsModel.fromJson(userJson))
              .toList()
          : json['userdetails'] != null
              ? [UserDetailsModel.fromJson(json['userdetails'])]
              : [],
    );
  }
}
