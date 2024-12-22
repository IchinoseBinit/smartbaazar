import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'buy_or_now_provider.g.dart';

// Models
class HotWithBuy {
  final List<Home1GlobalModel> home;
  final List<Buynowmodel> buynow;
  final List<LogoData> global;
  final List<LogoData> domestic;
  final List<LogoData> spotlight;
  final List<List<GlobalModel>> insidearr;
  final List<List<GlobalModel>> spot;
  final List<List<GlobalModel>> doma;

  HotWithBuy({
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
  final String name;
  final int winners;

  Buynowmodel({
    required this.image,
    required this.vendorImage,
    required this.name,
    required this.winners,
  });

  factory Buynowmodel.fromJson(Map<String, dynamic> json) {
    return Buynowmodel(
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
  final UserDetails? userDetails;

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
          ? UserDetails.fromJson(json['userdetails'])
          : null,
    );
  }
}

class UserDetails {
  final String userId;
  final String? name;
  final String? photo;
  final String? memberColor;
  final String? membershipTitle;
  final bool? sponsored;

  UserDetails({
    required this.userId,
    this.name,
    this.photo,
    this.memberColor,
    this.membershipTitle,
    this.sponsored,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      sponsored: json['sponsored'] as bool?,
      userId: json['user_id'] as String,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      memberColor: json['membership_color'] as String?,
      membershipTitle: json['membership_title'] as String?,
    );
  }
}

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
    final global = (data['global_brandbazarLogos'] as List<dynamic>?)
            ?.map((winJson) => LogoData.fromJson(winJson))
            .toList() ??
        [];

    final locald = (data['domestic_brandbazarLogos'] as List<dynamic>?)
            ?.map((winJson) => LogoData.fromJson(winJson))
            .toList() ??
        [];
    final spotd = (data['spotlightLogos'] as List<dynamic>?)
            ?.map((winJson) => LogoData.fromJson(winJson))
            .toList() ??
        [];
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
    print("mango ${global.first.userId}");

    return HotWithBuy(
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
  final List<UserDetails> user;
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
      offers: json['offers']?? '',
      
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
              .map((userJson) => UserDetails.fromJson(userJson))
              .toList()
          : json['userdetails'] != null
              ? [UserDetails.fromJson(json['userdetails'])]
              : [],
    );
  }
}
