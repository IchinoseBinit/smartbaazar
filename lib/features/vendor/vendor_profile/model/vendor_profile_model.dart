import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vendor_profile_model.freezed.dart';
part 'vendor_profile_model.g.dart';

@freezed
class VendorProfileModel with _$VendorProfileModel {
  const factory VendorProfileModel({
    required Vendor vendor,
    @JsonKey(name: "hot_products") required List<dynamic> hotProducts,
    @JsonKey(name: "scratch_banner") required String scratchBanner,
    required List<Advertisement> advertisements,
    required Posts posts,
    required List<PostType> postTypes,
    @JsonKey(name: "post_arr") required List<PostArr> postArr,
    required bool follow,
    @JsonKey(name: "follower_count") required int followerCount,
    required List<dynamic> qrs,
    required List<Gift> gifts,
  }) = _VendorProfileModel;

  factory VendorProfileModel.fromJson(Map<String, dynamic> json) =>
      _$VendorProfileModelFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    required String id,
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "language_code") required String languageCode,
    @JsonKey(name: "user_type_id") required String userTypeId,
    @JsonKey(name: "gender_id") required String genderId,
    required String name,
    required String photo,
    String? about,
    String? phone,
    @JsonKey(name: "phone_hidden") required String phoneHidden,
    required String username,
    required String email,
    @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
    required String password,
    @JsonKey(name: "remember_token") String? rememberToken,
    @JsonKey(name: "is_admin") required String isAdmin,
    @JsonKey(name: "can_be_impersonated") required String canBeImpersonated,
    @JsonKey(name: "disable_comments") required String disableComments,
    @JsonKey(name: "ip_addr") required String ipAddr,
    required String provider,
    @JsonKey(name: "provider_id") required String providerId,
    @JsonKey(name: "email_token") required String emailToken,
    @JsonKey(name: "phone_token") required String phoneToken,
    @JsonKey(name: "verified_email") required String verifiedEmail,
    @JsonKey(name: "verified_phone") required String verifiedPhone,
    @JsonKey(name: "accept_terms") required String acceptTerms,
    @JsonKey(name: "accept_marketing_offers") String? acceptMarketingOffers,
    @JsonKey(name: "time_zone") required String timeZone,
    required String blocked,
    required String closed,
    @JsonKey(name: "last_activity") String? lastActivity,
    @JsonKey(name: "last_login_at") String? lastLoginAt,
    String? ims,
    String? brandbazar,
    @JsonKey(name: "brandbazar_verify") String? brandbazarVerify,
    @JsonKey(name: "brandbazar_status") String? brandbazarStatus,
    @JsonKey(name: "brandbazar_payment_status") String? brandbazarPaymentStatus,
    @JsonKey(name: "payment_qr") String? paymentQr,
    @JsonKey(name: "bank_name") String? bankName,
    @JsonKey(name: "bank_branch") String? bankBranch,
    @JsonKey(name: "ac_holder") String? acHolder,
    @JsonKey(name: "ac_number") String? acNumber,
    String? banner,
    String? description,
    @JsonKey(name: "pan_vat") String? panVat,
    @JsonKey(name: "tax_certificate") String? taxCertificate,
    @JsonKey(name: "register_certificate") String? registerCertificate,
    @JsonKey(name: "user_verify") required String userVerify,
    String? gender,
    String? dob,
    @JsonKey(name: "deleted_at") String? deletedAt,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement({
    required String id,
    required String order,
    required String status,
    required String image,
    required String link,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _Advertisement;

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);
}

@freezed
class Posts with _$Posts {
  const factory Posts({
    @JsonKey(name: "current_page") required int currentPage,
    required List<dynamic> data,
    @JsonKey(name: "first_page_url") required String firstPageUrl,
    required int? from,
    @JsonKey(name: "last_page") required int lastPage,
    @JsonKey(name: "last_page_url") required String lastPageUrl,
    required List<Link> links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    required String path,
    @JsonKey(name: "per_page")
        required int perPage,
        @JsonKey(name: "prev_page_url")
        String? prevPageUrl,
    int? to,
    required int total,
  }) = _Posts;

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    required String label,
    required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
class PostType with _$PostType {
  const factory PostType({
    required int id,
    required String name,
    int? lft,
    int? rgt,
    int? depth,
    required String active,
  }) = _PostType;

  factory PostType.fromJson(Map<String, dynamic> json) =>
      _$PostTypeFromJson(json);
}

@freezed
class PostArr with _$PostArr {
  const factory PostArr({
     @JsonKey(name: "current_page") required int currentPage,
    required List<dynamic> data,
    @JsonKey(name: "first_page_url") required String firstPageUrl,
    required int? from,
    @JsonKey(name: "last_page") required int lastPage,
    @JsonKey(name: "last_page_url") required String lastPageUrl,
    required List<Link> links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    required String path,
    @JsonKey(name: "per_page")
        required int perPage,
        @JsonKey(name: "prev_page_url")
        String? prevPageUrl,
    int? to,
    required int total,
  }) = _PostArr;

  factory PostArr.fromJson(Map<String, dynamic> json) =>
      _$PostArrFromJson(json);
}

@freezed
class Gift with _$Gift {
  const factory Gift({
    required String image,
  }) = _Gift;

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}
