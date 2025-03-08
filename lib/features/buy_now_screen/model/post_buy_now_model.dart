import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/order_details/model/checkout_details_model.dart';

part 'post_buy_now_model.freezed.dart';
part 'post_buy_now_model.g.dart';

@freezed
class PostBuyNowModel with _$PostBuyNowModel {
  const factory PostBuyNowModel({
    BuyNowModel? data,
    String? msg,
  }) = _PostBuyNowModel;

  factory PostBuyNowModel.fromJson(Map<String, dynamic> json) =>
      _$PostBuyNowModelFromJson(json);
}

@freezed
class BuyNowModel with _$BuyNowModel {
  const factory BuyNowModel({
    @Default([]) List<BuyNowPostModel>? posts, // Avoid null issues
    @Default([]) List<VendorBuyNowModel>? vendor,
    @Default([]) List<BuyNowUserModel>? user,
    @Default([]) List<dynamic>? coupons,
  }) = _BuyNowModel;

  factory BuyNowModel.fromJson(Map<String, dynamic> json) =>
      _$BuyNowModelFromJson(json);
}

@freezed
class BuyNowPostModel with _$BuyNowPostModel {
  const factory BuyNowPostModel({
    String? id,
    @JsonKey(name: 'country_code') String? countryCode, // JSON key mapping
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'post_type_id') String? postTypeId,
    String? title,
    String? description,
    String? tags,
    String? price,
    String? negotiable,
    String? contactName,
    String? email,
    String? phone,
    String? phoneHidden,
    String? address,
    @JsonKey(name: 'city_id') String? cityId,
    String? lon,
    String? lat,
    String? ipAddr,
    String? length,
    String? width,
    String? weight,
    String? height,
    String? pickup,
    String? longitude,
    String? latitude,
    String? hyperDel,
    String? sellerDel,
    String? visits,
    String? emailToken,
    String? phoneToken,
    String? tmpToken,
    String? verifiedEmail,
    String? verifiedPhone,
    String? acceptTerms,
    String? acceptMarketingOffers,
    String? isPermanent,
    String? reviewed,
    String? featured,
    String? archived,
    String? archivedAt,
    String? archivedManually,
    String? deletionMailSentAt,
    String? fbProfile,
    String? partner,
    String? discountedPrice,
    String? trending,
    String? stock,
    String? minOrder,
    String? sampPrice,
    String? textOne,
    String? textTwo,
    String? avaTo,
    String? branded,
    String? wow,
    String? offers,
    String? storyDisplayDays,
    String? barcode,
    String? b2bPricing,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
  }) = _BuyNowPostModel;

  factory BuyNowPostModel.fromJson(Map<String, dynamic> json) =>
      _$BuyNowPostModelFromJson(json);
}

@freezed
class VendorBuyNowModel with _$VendorBuyNowModel {
  const factory VendorBuyNowModel({
    String? id,
    String? name,
    String? paymentQr,
  }) = _VendorBuyNowModel;

  factory VendorBuyNowModel.fromJson(Map<String, dynamic> json) =>
      _$VendorBuyNowModelFromJson(json);
}

@freezed
class BuyNowUserModel with _$BuyNowUserModel {
  const factory BuyNowUserModel({
    String? id,
    String? name,
    String? email,
    String? phone,
  }) = _BuyNowUserModel;

  factory BuyNowUserModel.fromJson(Map<String, dynamic> json) =>
      _$BuyNowUserModelFromJson(json);
}
