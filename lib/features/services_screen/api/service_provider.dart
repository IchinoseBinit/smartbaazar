// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:dio/dio.dart';
// import 'package:smartbazar/constant/api_constant.dart';
// import 'package:smartbazar/features/brand_bazar/model/brand_bazar_model.dart';
// import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
// import 'package:smartbazar/network_service/smart-clinet.dart';
// import 'package:smartbazar/utils/request_type.dart';

// part 'service_provider.g.dart';

// class PostTypeFetch {
//   final List<Advertisement>? sliders;
//   final List<Story> stories;
//   final List<VProduct> hotProducts;
//   final List<LogoData> global;
//   final List<LogoData> domestic;
//   final List<LogoData> spotlight;
//   final List<VProduct> product;
//   final List<Advertisement> ads;
//   final List<Buynowmodel>? buynow;
//   final List<FetchCategory> cat;
//   final List<List<VProduct>> insidearr;
//   final List<VProduct> low_price_guarantee;
//   final List<VProduct> Launch_offer;
//   final List<VProduct> seasonal;

//   final List<VProduct> promotional;
//   final List<VProduct> Launch_festival_offer;
//   final List<VProduct> clearance_sale;

//   PostTypeFetch({
//     required this.stories,
//     required this.hotProducts,
//     required this.sliders,
//     required this.global,
//     required this.domestic,
//     required this.spotlight,
//     required this.product,
//     required this.ads,
//     required this.buynow,
//     required this.cat,
//     required this.insidearr,
//     required this.low_price_guarantee,
//     required this.Launch_offer,
//     required this.promotional,
//     required this.Launch_festival_offer,
//     required this.clearance_sale,
//     required this.seasonal,
//   });

//   factory PostTypeFetch.fromJson(Map<String, dynamic> json) {
//     List<Story> storiesList = [];

//     if (json['home_story'] is List) {
//       // Handle as a list
//       storiesList = (json['home_story'] as List)
//           .where((value) => value != null) // Filter out null values
//           .map((value) => Story.fromJson(value)) // Map to Story objects
//           .toList();
//     } else if (json['home_story'] is Map) {
//       // Handle as a map
//       (json['home_story'] as Map).forEach((key, value) {
//         if (value != null) {
//           storiesList.add(Story.fromJson(value));
//         }
//       });
//     } else {
//       // Default case: handle when 'home_story' is empty or null
//       storiesList = [];
//     }

//     List<VProduct> hotProductsList = [];
//     if (json['hot_products'] != null) {
//       hotProductsList = (json['hot_products'] as List)
//           .where((product) => product != null)
//           .map((product) => VProduct.fromJson(product))
//           .toList();
//     }

//     List<Advertisement> ads = [];
//     if (json['sliders'] != null) {
//       ads = (json['sliders'] as List)
//           .where((slider) => slider != null)
//           .map((slider) => Advertisement.fromJson(slider))
//           .toList();
//     }

//     final global = (json['global_brandbazarLogos'] as List<dynamic>? ?? [])
//         .map((logoJson) => LogoData.fromJson(logoJson))
//         .toList();
//     final domestic = (json['domestic_brandbazarLogos'] as List<dynamic>? ?? [])
//         .map((logoJson) => LogoData.fromJson(logoJson))
//         .toList();
//     final spotlight = (json['spotlightLogos'] as List<dynamic>? ?? [])
//         .map((logoJson) => LogoData.fromJson(logoJson))
//         .toList();

//     final products = (json['products']['data'] as List<dynamic>? ?? [])
//         .map((logoJson) => VProduct.fromJson(logoJson))
//         .toList();
//     final adv = (json['advertisements'] as List<dynamic>? ?? [])
//         .map((logoJson) => Advertisement.fromJson(logoJson))
//         .toList();

//     final bywin = (json['buy_or_win'] as List<dynamic>? ?? [])
//         .map((logoJson) => Buynowmodel.fromJson(logoJson))
//         .toList();
//     final cato = (json['category_name'] as List<dynamic>? ?? [])
//         .map((logoJson) => FetchCategory.fromJson(logoJson))
//         .toList();
//     final insidearr = (json['cat_posts'] as List<dynamic>? ?? [])
//         .map((innerList) => (innerList as List<dynamic>)
//             .map((logoJson) => VProduct.fromJson(logoJson))
//             .toList())
//         .toList();
//     final low = (json['low_price_guarantee'] as List<dynamic>? ?? [])
//         .map((logoJson) => VProduct.fromJson(logoJson))
//         .toList();
//     final Launch = (json['launch_offer'] as List<dynamic>? ?? [])
//         .map((logoJson) => VProduct.fromJson(logoJson))
//         .toList();
//     final pro = (json['promotional'] as List<dynamic>? ?? [])
//         .map((logoJson) => VProduct.fromJson(logoJson))
//         .toList();
//     final ses = (json['seasonal_offer'] as List<dynamic>? ?? [])
//         .map((logoJson) => VProduct.fromJson(logoJson))
//         .toList();
//     final fes = (json['festival_offer'] as List<dynamic>? ?? [])
//         .map((logoJson) => VProduct.fromJson(logoJson))
//         .toList();
//     final clr = (json['clearance_sale'] as List<dynamic>? ?? [])
//         .map((logoJson) => VProduct.fromJson(logoJson))
//         .toList();

//     return PostTypeFetch(
//         cat: cato,
//         stories: storiesList,
//         hotProducts: hotProductsList,
//         sliders: ads,
//         global: global,
//         domestic: domestic,
//         spotlight: spotlight,
//         product: products,
//         ads: adv,
//         buynow: bywin,
//         insidearr: insidearr,
//         low_price_guarantee: low,
//         Launch_offer: Launch,
//         promotional: pro,
//         Launch_festival_offer: fes,
//         clearance_sale: clr,
//         seasonal: ses);
//   }
// }

// class FetchCategory {
//   String name;
//   String slug;

//   FetchCategory({required this.name, required this.slug});

//   factory FetchCategory.fromJson(Map<String, dynamic> json) {
//     return FetchCategory(
//       name: json['name'] ?? '',
//       slug: json['slug'] ?? '',
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'slug': slug,
//     };
//   }
// }

// class Story {
//   final String vendorName;
//   final String vendorImage;
//   final int storyCount;
//   final bool hasSponsoredGifts;
//   final List<StoryPost> posts;

//   Story({
//     required this.vendorName,
//     required this.vendorImage,
//     required this.storyCount,
//     required this.hasSponsoredGifts,
//     required this.posts,
//   });

//   factory Story.fromJson(Map<String, dynamic> json) {
//     var postsList = (json['posts'] as List? ?? [])
//         .where((post) => post != null)
//         .map((post) => StoryPost.fromJson(post))
//         .toList();
//     return Story(
//       vendorName: json['vendor_name'] ?? '',
//       vendorImage: json['vendor_image'] ?? '',
//       storyCount: json['story_count'] ?? 0,
//       hasSponsoredGifts: json['has_sponsored_gifts'] ?? false,
//       posts: postsList,
//     );
//   }
// }

// class StoryPost {
//   final String id;
//   final String title;
//   final String image;
//   final int similarProductCount;
//   final String? wow;

//   StoryPost({
//     required this.id,
//     required this.title,
//     required this.image,
//     required this.similarProductCount,
//     this.wow,
//   });

//   factory StoryPost.fromJson(Map<String, dynamic> json) {
//     return StoryPost(
//       id: json['id'] ?? '',
//       title: json['title'] ?? '',
//       image: json['image'] ?? '',
//       similarProductCount: json['similarproductcount'] ?? 0,
//       wow: json['wow'],
//     );
//   }
// }

// class VProduct {
//   final String id;
//   final String price;
//   final String title;
//   final String description;
//   final VendorUser user;
//   final String image;

//   VProduct({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.user,
//     required this.image,
//     required this.price,
//   });

//   factory VProduct.fromJson(Map<String, dynamic> json) {
//     return VProduct(
//       id: json['id'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       user: VendorUser.fromJson(json['userdetails'] ?? {}),
//       image: json['image'] ?? '',
//       price: json['price'] ?? '',
//     );
//   }
// }

// class VendorUser {
//   final String id;
//   final String name;
//   final String photo;

//   VendorUser({required this.id, required this.name, required this.photo});

//   factory VendorUser.fromJson(Map<String, dynamic> json) {
//     return VendorUser(
//       id: json['user_id'] ?? '',
//       name: json['name'] ?? '',
//       photo: json['photo'] ?? '',
//     );
//   }
// }

// @riverpod
// Future<PostTypeFetch> getServiceProvider(GetServiceProviderRef ref) async {
//   final SmartClinet client = SmartClinet();
//   try {
//     final Response response = await client.request(
//       requestType: RequestType.getWithToken,
//       url: "${ApiConstants.producttypeurl}/3", // API endpoint
//     );

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> jsonResponse = response.data;
//       print(
//           "babu ${PostTypeFetch.fromJson(jsonResponse).hotProducts.first.image}");
//       return PostTypeFetch.fromJson(jsonResponse);
//     } else {
//       throw Exception(
//           'Failed to load PostTypeFetch. Status code: ${response.statusCode}');
//     }
//   } catch (e, stackTrace) {
//     print('Error fetching PostTypeFetch: $e\nStackTrace: $stackTrace');
//     throw Exception('Failed to fetch PostTypeFetch: $e');
//   }
// }
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/brand_bazar/model/brand_bazar_model.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'service_provider.g.dart';

class PostTypeFetch {
  final List<Advertisement>? sliders;
  final List<Story> stories;
  final List<VProduct> hotProducts;
  final List<LogoData> global;
  final List<LogoData> domestic;
  final List<LogoData> spotlight;
  final List<VProduct> product;
  final List<Advertisement> ads;
  final List<Buynowmodel>? buynow;
  final List<FetchCategory> cat;
  final List<List<VProduct>> insidearr;
  final List<VProduct> low_price_guarantee;
  final List<VProduct> Launch_offer;
  final List<VProduct> seasonal;

  final List<VProduct> promotional;
  final List<VProduct> Launch_festival_offer;
  final List<VProduct> clearance_sale;

  PostTypeFetch({
    required this.stories,
    required this.hotProducts,
    required this.sliders,
    required this.global,
    required this.domestic,
    required this.spotlight,
    required this.product,
    required this.ads,
    required this.buynow,
    required this.cat,
    required this.insidearr,
    required this.low_price_guarantee,
    required this.Launch_offer,
    required this.promotional,
    required this.Launch_festival_offer,
    required this.clearance_sale,
    required this.seasonal,
  });

  factory PostTypeFetch.fromJson(Map<String, dynamic> json) {
    List<Story> storiesList = [];

    if (json['home_story'] is List) {
      // Handle as a list
      storiesList = (json['home_story'] as List)
          .where((value) => value != null) // Filter out null values
          .map((value) => Story.fromJson(value)) // Map to Story objects
          .toList();
    } else if (json['home_story'] is Map) {
      // Handle as a map
      (json['home_story'] as Map).forEach((key, value) {
        if (value != null) {
          storiesList.add(Story.fromJson(value));
        }
      });
    } else {
      // Default case: handle when 'home_story' is empty or null
      storiesList = [];
    }

    List<VProduct> hotProductsList = [];
    if (json['hot_products'] != null) {
      hotProductsList = (json['hot_products'] as List)
          .where((product) => product != null)
          .map((product) => VProduct.fromJson(product))
          .toList();
    }

    List<Advertisement> ads = [];
    if (json['sliders'] != null) {
      ads = (json['sliders'] as List)
          .where((slider) => slider != null)
          .map((slider) => Advertisement.fromJson(slider))
          .toList();
    }

    final global = (json['global_brandbazarLogos'] as List<dynamic>? ?? [])
        .map((logoJson) => LogoData.fromJson(logoJson))
        .toList();
    final domestic = (json['domestic_brandbazarLogos'] as List<dynamic>? ?? [])
        .map((logoJson) => LogoData.fromJson(logoJson))
        .toList();
    final spotlight = (json['spotlightLogos'] as List<dynamic>? ?? [])
        .map((logoJson) => LogoData.fromJson(logoJson))
        .toList();

    final products = (json['products']['data'] as List<dynamic>? ?? [])
        .map((logoJson) => VProduct.fromJson(logoJson))
        .toList();
    final adv = (json['advertisements'] as List<dynamic>? ?? [])
        .map((logoJson) => Advertisement.fromJson(logoJson))
        .toList();

    final bywin = (json['buy_or_win'] as List<dynamic>? ?? [])
        .map((logoJson) => Buynowmodel.fromJson(logoJson))
        .toList();
    final cato = (json['category_name'] as List<dynamic>? ?? [])
        .map((logoJson) => FetchCategory.fromJson(logoJson))
        .toList();
    final insidearr = (json['cat_posts'] as List<dynamic>? ?? [])
        .map((innerList) => (innerList as List<dynamic>)
            .map((logoJson) => VProduct.fromJson(logoJson))
            .toList())
        .toList();
    final low = (json['low_price_guarantee'] as List<dynamic>? ?? [])
        .map((logoJson) => VProduct.fromJson(logoJson))
        .toList();
    final Launch = (json['launch_offer'] as List<dynamic>? ?? [])
        .map((logoJson) => VProduct.fromJson(logoJson))
        .toList();
    final pro = (json['promotional'] as List<dynamic>? ?? [])
        .map((logoJson) => VProduct.fromJson(logoJson))
        .toList();
    final ses = (json['seasonal_offer'] as List<dynamic>? ?? [])
        .map((logoJson) => VProduct.fromJson(logoJson))
        .toList();
    final fes = (json['festival_offer'] as List<dynamic>? ?? [])
        .map((logoJson) => VProduct.fromJson(logoJson))
        .toList();
    final clr = (json['clearance_sale'] as List<dynamic>? ?? [])
        .map((logoJson) => VProduct.fromJson(logoJson))
        .toList();

    return PostTypeFetch(
        cat: cato,
        stories: storiesList,
        hotProducts: hotProductsList,
        sliders: ads,
        global: global,
        domestic: domestic,
        spotlight: spotlight,
        product: products,
        ads: adv,
        buynow: bywin,
        insidearr: insidearr,
        low_price_guarantee: low,
        Launch_offer: Launch,
        promotional: pro,
        Launch_festival_offer: fes,
        clearance_sale: clr,
        seasonal: ses);
  }
}

class FetchCategory {
  String name;
  String slug;

  FetchCategory({required this.name, required this.slug});

  factory FetchCategory.fromJson(Map<String, dynamic> json) {
    return FetchCategory(
      name: json['name'] ?? '',
      slug: json['slug'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'slug': slug,
    };
  }
}

class Story {
  final String vendorName;
  final String vendorImage;
  final int storyCount;
  final bool hasSponsoredGifts;
  final List<StoryPost> posts;

  Story({
    required this.vendorName,
    required this.vendorImage,
    required this.storyCount,
    required this.hasSponsoredGifts,
    required this.posts,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    var postsList = (json['posts'] as List? ?? [])
        .where((post) => post != null)
        .map((post) => StoryPost.fromJson(post))
        .toList();
    return Story(
      vendorName: json['vendor_name'] ?? '',
      vendorImage: json['vendor_image'] ?? '',
      storyCount: json['story_count'] ?? 0,
      hasSponsoredGifts: json['has_sponsored_gifts'] ?? false,
      posts: postsList,
    );
  }
}

class StoryPost {
  final String id;
  final String title;
  final String image;
  final int similarProductCount;
  final String? wow;

  StoryPost({
    required this.id,
    required this.title,
    required this.image,
    required this.similarProductCount,
    this.wow,
  });

  factory StoryPost.fromJson(Map<String, dynamic> json) {
    return StoryPost(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      similarProductCount: json['similarproductcount'] ?? 0,
      wow: json['wow'],
    );
  }
}

class VProduct {
  final String id;
  final String price;
  final String title;
  final String description;
  final VendorUser user;
  final String image;
  final String? wow;
  final String? stock;
  final int? commentcount;
  final String? discounted_price;
  final int? similarProductCount;
  final String offers;

  VProduct(
      {required this.id,
      required this.title,
      required this.description,
      required this.user,
      required this.image,
      required this.price,
      required this.wow,
      required this.stock,
      required this.commentcount,
      required this.offers,
      required this.similarProductCount,
      required this.discounted_price});

  factory VProduct.fromJson(Map<String, dynamic> json) {
    return VProduct(
        offers: json["offers"] ?? '',
        discounted_price: json['discounted_price'] ?? '',
        commentcount: json['commentcount'] ?? 0,
        stock: json['stock'] ?? '',
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        user: VendorUser.fromJson(json['userdetails'] ?? {}),
        image: json['image'] ?? '',
        price: json['price'] ?? '',
        similarProductCount: json['similarProductCount'] ?? 0,
        wow: json['wow'] ?? '');
  }
}

class VendorUser {
  final String id;
  final String name;
  final String photo;
  final bool hasSponsoredGifts;
  final bool sponsored;
  final String membershipStatus;
  final String? membercolor;
  final String? membershipTitle;

  // Constructor to initialize the properties
  VendorUser({
    required this.id,
    required this.name,
    required this.photo,
    required this.hasSponsoredGifts,
    required this.sponsored,
    required this.membershipStatus,
    required this.membercolor,
    required this.membershipTitle,
  });

  // Factory constructor to create a VendorUser from JSON
  factory VendorUser.fromJson(Map<String, dynamic> json) {
    return VendorUser(
      id: json['user_id'] ?? '',
      name: json['name'] ?? '',
      photo: json['photo'] ?? '',
      hasSponsoredGifts:
          json['has_sponsored_gifts'] ?? false, // Set to false by default
      sponsored: json['sponsored'] ?? false, // Set to false by default
      membershipStatus: json['membership_status'] ?? '0', // Default to '0'
      membercolor: json['membership_color'] ?? '', // Default to '0'
      membershipTitle: json['membership_title'] ?? '', // Default to '0'
    );
  }
}

@riverpod
Future<PostTypeFetch> getServiceProvider(GetServiceProviderRef ref) async {
  final SmartClinet client = SmartClinet();
  try {
    final Response response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.producttypeurl}/3", // API endpoint
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      print(
          "babu ${PostTypeFetch.fromJson(jsonResponse).hotProducts.first.image}");
      return PostTypeFetch.fromJson(jsonResponse);
    } else {
      throw Exception(
          'Failed to load PostTypeFetch. Status code: ${response.statusCode}');
    }
  } catch (e, stackTrace) {
    print('Error fetching PostTypeFetch: $e\nStackTrace: $stackTrace');
    throw Exception('Failed to fetch PostTypeFetch: $e');
  }
}
