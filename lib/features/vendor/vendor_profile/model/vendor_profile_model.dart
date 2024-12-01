// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter/foundation.dart';

// part 'vendor_profile_model.freezed.dart';
// part 'vendor_profile_model.g.dart';

// @freezed
// class VendorProfileModel with _$VendorProfileModel {
//   const factory VendorProfileModel({
//     required Vendor vendor,
//     @JsonKey(name: "hot_products") required List<HotProduct>? hotProducts,
//     @JsonKey(name: "scratch_banner") required String? scratchBanner,
//     required List<Advertisement> advertisements,
//     required Posts? posts,
//     @JsonKey(name: "brand_new") required List<BrandNew>? brandNew,
//     required List<PostType> postTypes,
//     @JsonKey(name: "post_arr") required List<PostArr>? postArr,
//     required bool? follow,
//     @JsonKey(name: "follower_count") required int followerCount,
//     required List<dynamic>? qrs,
//     required List<Gift>? gifts,
//   }) = _VendorProfileModel;

//   factory VendorProfileModel.fromJson(Map<String, dynamic> json) =>
//       _$VendorProfileModelFromJson(json);
// }

// @freezed
// class Vendor with _$Vendor {
//   const factory Vendor({
//     required String? id,
//     @JsonKey(name: "country_code") required String? countryCode,
//     @JsonKey(name: "language_code") required String? languageCode,
//     @JsonKey(name: "user_type_id") required String? userTypeId,
//     @JsonKey(name: "gender_id") required String? genderId,
//     required String? name,
//     required String? photo,
//     String? about,
//     String? phone,
//     @JsonKey(name: "phone_hidden") required String? phoneHidden,
//     required String? username,
//     required String? email,
//     @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
//     required String? password,
//     @JsonKey(name: "remember_token") String? rememberToken,
//     @JsonKey(name: "is_admin") required String? isAdmin,
//     @JsonKey(name: "can_be_impersonated") required String? canBeImpersonated,
//     @JsonKey(name: "disable_comments") required String? disableComments,
//     @JsonKey(name: "ip_addr") required String? ipAddr,
//     required String? provider,
//     @JsonKey(name: "provider_id") required String? providerId,
//     @JsonKey(name: "email_token") required String? emailToken,
//     @JsonKey(name: "phone_token") required String? phoneToken,
//     @JsonKey(name: "verified_email") required String? verifiedEmail,
//     @JsonKey(name: "verified_phone") required String? verifiedPhone,
//     @JsonKey(name: "accept_terms") required String? acceptTerms,
//     @JsonKey(name: "accept_marketing_offers") String? acceptMarketingOffers,
//     @JsonKey(name: "time_zone") required String? timeZone,
//     required String? blocked,
//     required String? closed,
//     @JsonKey(name: "last_activity") String? lastActivity,
//     @JsonKey(name: "last_login_at") String? lastLoginAt,
//     String? ims,
//     String? brandbazar,
//     @JsonKey(name: "brandbazar_verify") String? brandbazarVerify,
//     @JsonKey(name: "brandbazar_status") String? brandbazarStatus,
//     @JsonKey(name: "brandbazar_payment_status") String? brandbazarPaymentStatus,
//     @JsonKey(name: "payment_qr") String? paymentQr,
//     @JsonKey(name: "bank_name") String? bankName,
//     @JsonKey(name: "bank_branch") String? bankBranch,
//     @JsonKey(name: "ac_holder") String? acHolder,
//     @JsonKey(name: "ac_number") String? acNumber,
//     String? banner,
//     String? description,
//     @JsonKey(name: "pan_vat") String? panVat,
//     @JsonKey(name: "tax_certificate") String? taxCertificate,
//     @JsonKey(name: "register_certificate") String? registerCertificate,
//     @JsonKey(name: "user_verify") required String userVerify,
//     String? gender,
//     String? dob,
//     @JsonKey(name: "deleted_at") String? deletedAt,
//     @JsonKey(name: "created_at") required String? createdAt,
//     @JsonKey(name: "updated_at") required String? updatedAt,
//   }) = _Vendor;

//   factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
// }

// @freezed
// class Advertisement with _$Advertisement {
//   const factory Advertisement({
//     required String? id,
//     required String? order,
//     required String? status,
//     required String? image,
//     required String? link,
//     @JsonKey(name: "created_at") required String? createdAt,
//     @JsonKey(name: "updated_at") required String? updatedAt,
//   }) = _Advertisement;

//   factory Advertisement.fromJson(Map<String, dynamic> json) =>
//       _$AdvertisementFromJson(json);
// }

// @freezed
// class Posts with _$Posts {
//   const factory Posts({
//     @JsonKey(name: "current_page") required int? currentPage,
//     required List<dynamic>? data,
//     @JsonKey(name: "first_page_url") required String? firstPageUrl,
//     required int? from,
//     @JsonKey(name: "last_page") required int? lastPage,
//     @JsonKey(name: "last_page_url") required String? lastPageUrl,
//     required List<Link>? links,
//     @JsonKey(name: "next_page_url") String? nextPageUrl,
//     required String? path,
//     @JsonKey(name: "per_page") required int? perPage,
//     @JsonKey(name: "prev_page_url") String? prevPageUrl,
//     int? to,
//     required int? total,
//   }) = _Posts;

//   factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
// }

// @freezed
// class Link with _$Link {
//   const factory Link({
//     String? url,
//     required String? label,
//     required bool? active,
//   }) = _Link;

//   factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
// }

// @freezed
// class PostType with _$PostType {
//   const factory PostType({
//     required int? id,
//     required String? name,
//     int? lft,
//     int? rgt,
//     int? depth,
//     required String? active,
//   }) = _PostType;

//   factory PostType.fromJson(Map<String, dynamic> json) =>
//       _$PostTypeFromJson(json);
// }

// @freezed
// class PostArr with _$PostArr {
//   const factory PostArr({
//     @JsonKey(name: "current_page") required int? currentPage,
//     required List<dynamic>? data,
//     @JsonKey(name: "first_page_url") required String? firstPageUrl,
//     required int? from,
//     @JsonKey(name: "last_page") required int? lastPage,
//     @JsonKey(name: "last_page_url") required String? lastPageUrl,
//     required List<Link>? links,
//     @JsonKey(name: "next_page_url") String? nextPageUrl,
//     required String? path,
//     @JsonKey(name: "per_page") required int? perPage,
//     @JsonKey(name: "prev_page_url") String? prevPageUrl,
//     int? to,
//     required int? total,
//   }) = _PostArr;

//   factory PostArr.fromJson(Map<String, dynamic> json) =>
//       _$PostArrFromJson(json);
// }

// @freezed
// class Gift with _$Gift {
//   const factory Gift({
//     required String? image,
//   }) = _Gift;

//   factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
// }

// @freezed
// class BrandNew with _$BrandNew {
//   const factory BrandNew({
//     required String? id,
//     @JsonKey(name: "country_code") required String? countryCode,
//     @JsonKey(name: "user_id") required String? userId,
//     @JsonKey(name: "category_id") required String? categoryId,
//     @JsonKey(name: "post_type_id") required String? postTypeId,
//     required String? title,
//     required String? description,
//     required dynamic tags,
//     required String? price,
//     required dynamic negotiable,
//     @JsonKey(name: "contact_name") required String? contactName,
//     required String? email,
//     required String? phone,
//     @JsonKey(name: "phone_hidden") required dynamic phoneHidden,
//     required dynamic address,
//     @JsonKey(name: "city_id") required String? cityId,
//     required String? lon,
//     required String? lat,
//     @JsonKey(name: "ip_addr") required String? ipAddr,
//     required String? length,
//     required String? width,
//     required String? weight,
//     required String? height,
//     required String? pickup,
//     required String? longitude,
//     required String? latitude,
//     @JsonKey(name: "hyper_del") required String? hyperDel,
//     @JsonKey(name: "seller_del") required String? sellerDel,
//     @JsonKey(name: "visits") required String? visits,
//     @JsonKey(name: "email_token") required dynamic emailToken,
//     @JsonKey(name: "phone_token") required String? phoneToken,
//     @JsonKey(name: "tmp_token") required String? tmpToken,
//     @JsonKey(name: "verified_email") required String? verifiedEmail,
//     @JsonKey(name: "verified_phone") required String? verifiedPhone,
//     @JsonKey(name: "accept_terms") required String? acceptTerms,
//     @JsonKey(name: "accept_marketing_offers")
//     required String? acceptMarketingOffers,
//     @JsonKey(name: "is_permanent") required String? isPermanent,
//     @JsonKey(name: "reviewed") required String? reviewed,
//     @JsonKey(name: "featured") required String? featured,
//     @JsonKey(name: "archived") required String? archived,
//     @JsonKey(name: "archived_at") required dynamic archivedAt,
//     @JsonKey(name: "archived_manually") required String? archivedManually,
//     @JsonKey(name: "deletion_mail_sent_at") required dynamic deletionMailSentAt,
//     @JsonKey(name: "fb_profile") required dynamic fbProfile,
//     @JsonKey(name: "partner") required dynamic partner,
//     @JsonKey(name: "discounted_price") required String? discountedPrice,
//     @JsonKey(name: "trending") required String? trending,
//     @JsonKey(name: "stock") required String? stock,
//     @JsonKey(name: "min_order") required dynamic minOrder,
//     @JsonKey(name: "samp_price") required dynamic sampPrice,
//     @JsonKey(name: "text_one") required dynamic textOne,
//     @JsonKey(name: "text_two") required dynamic textTwo,
//     @JsonKey(name: "ava_to") required dynamic avaTo,
//     @JsonKey(name: "branded") required String? branded,
//     @JsonKey(name: "deleted_at") required dynamic deletedAt,
//     @JsonKey(name: "created_at") required String? createdAt,
//     @JsonKey(name: "updated_at") required String? updatedAt,
//     @JsonKey(name: "image") required String? image,
//     @JsonKey(name: "post_type") required String? postType,
//     @JsonKey(name: "username") required String? username,
//     @JsonKey(name: "city") required String? city,
//     @JsonKey(name: "savedByLoggedUser")
//     required List<dynamic> savedByLoggedUser,
//     @JsonKey(name: "avg_rating") required int avgRating,
//   }) = _BrandNew;

//   factory BrandNew.fromJson(Map<String, dynamic> json) =>
//       _$BrandNewFromJson(json);
// }

// @freezed
// class HotProduct with _$HotProduct {
//   const factory HotProduct({
//     required String id,
//     @JsonKey(name: "country_code") required String? countryCode,
//     @JsonKey(name: "user_id") required String? userId,
//     @JsonKey(name: "category_id") required String? categoryId,
//     @JsonKey(name: "post_type_id") required String? postTypeId,
//     @JsonKey(name: "title") required String? title,
//     @JsonKey(name: "description") required String? description,
//     @JsonKey(name: "tags") required dynamic tags,
//     @JsonKey(name: "price") required String? price,
//     @JsonKey(name: "negotiable") required dynamic negotiable,
//     @JsonKey(name: "contact_name") required String? contactName,
//     @JsonKey(name: "email") required String? email,
//     @JsonKey(name: "phone") required String? phone,
//     @JsonKey(name: "phone_hidden") required dynamic phoneHidden,
//     @JsonKey(name: "address") required dynamic address,
//     @JsonKey(name: "city_id") required String? cityId,
//     @JsonKey(name: "lon") required String? lon,
//     @JsonKey(name: "lat") required String? lat,
//     @JsonKey(name: "ip_addr") required String? ipAddr,
//     @JsonKey(name: "length") required String? length,
//     @JsonKey(name: "width") required String? width,
//     @JsonKey(name: "weight") required String? weight,
//     @JsonKey(name: "height") required String? height,
//     @JsonKey(name: "pickup") required String? pickup,
//     @JsonKey(name: "longitude") required String? longitude,
//     @JsonKey(name: "latitude") required String? latitude,
//     @JsonKey(name: "hyper_del") required String? hyperDel,
//     @JsonKey(name: "seller_del") required String? sellerDel,
//     @JsonKey(name: "visits") required String? visits,
//     @JsonKey(name: "email_token") required dynamic emailToken,
//     @JsonKey(name: "phone_token") required String? phoneToken,
//     @JsonKey(name: "tmp_token") required String? tmpToken,
//     @JsonKey(name: "verified_email") required String? verifiedEmail,
//     @JsonKey(name: "verified_phone") required String? verifiedPhone,
//     @JsonKey(name: "accept_terms") required String? acceptTerms,
//     @JsonKey(name: "accept_marketing_offers")
//     required String? acceptMarketingOffers,
//     @JsonKey(name: "is_permanent") required String? isPermanent,
//     @JsonKey(name: "reviewed") required String? reviewed,
//     @JsonKey(name: "featured") required String? featured,
//     @JsonKey(name: "archived") required String? archived,
//     @JsonKey(name: "archived_at") required dynamic archivedAt,
//     @JsonKey(name: "archived_manually") required String? archivedManually,
//     @JsonKey(name: "deletion_mail_sent_at") required dynamic deletionMailSentAt,
//     @JsonKey(name: "fb_profile") required dynamic fbProfile,
//     @JsonKey(name: "partner") required dynamic partner,
//     @JsonKey(name: "discounted_price") required String? discountedPrice,
//     @JsonKey(name: "trending") required String? trending,
//     @JsonKey(name: "stock") required String? stock,
//     @JsonKey(name: "min_order") required dynamic minOrder,
//     @JsonKey(name: "samp_price") required dynamic sampPrice,
//     @JsonKey(name: "text_one") required dynamic textOne,
//     @JsonKey(name: "text_two") required dynamic textTwo,
//     @JsonKey(name: "ava_to") required dynamic avaTo,
//     @JsonKey(name: "branded") required String? branded,
//     @JsonKey(name: "deleted_at") required dynamic deletedAt,
//     @JsonKey(name: "created_at") required String? createdAt,
//     @JsonKey(name: "updated_at") required String? updatedAt,
//     @JsonKey(name: "image") required String? image,
//     @JsonKey(name: "avg_rating") required int avgRating,
//   }) = _HotProduct;

//   factory HotProduct.fromJson(Map<String, dynamic> json) =>
//       _$HotProductFromJson(json);
// }
