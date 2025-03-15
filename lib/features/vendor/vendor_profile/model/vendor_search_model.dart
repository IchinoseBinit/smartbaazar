import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'vendor_search_model.freezed.dart';
part 'vendor_search_model.g.dart';

@freezed
class VendorProductSearchResponse with _$VendorProductSearchResponse {
  factory VendorProductSearchResponse({
    required Vdata? data,
  }) = _VendorProductSearchResponse;

  factory VendorProductSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorProductSearchResponseFromJson(json);
}
@freezed
class Vdata with _$Vdata {
  const factory Vdata({
    // required VVSearchpost? VSearchpost,
    required  VSearchpost? posts,
  }) = _Vdata;

  factory Vdata.fromJson(Map<String, dynamic> json) => _$VdataFromJson(json);
}

@freezed
class VSearchpost with _$VSearchpost {
  const factory VSearchpost({
    int? current_page,
     List<VendorSearchModel>? data,
  }) = _VSearchpost;

  factory VSearchpost.fromJson(Map<String, dynamic> json) => _$VSearchpostFromJson(json);
}

@freezed
class VendorSearchModel with _$VendorSearchModel {
  const factory VendorSearchModel({
    String? id,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'post_type_id') String? postTypeId,
    String? title,
    String? description,
    String? tags,
    String? price,
    String? negotiable,
    @JsonKey(name: 'contact_name') String? contactName,
    String? email,
    String? phone,
    @JsonKey(name: 'phone_hidden') String? phoneHidden,
    String? address,
    @JsonKey(name: 'city_id') String? cityId,
    String? lon,
    String? lat,
    @JsonKey(name: 'ip_addr') String? ipAddr,
    String? length,
    String? width,
    String? weight,
    String? height,
    String? pickup,
    String? longitude,
    String? latitude,
    @JsonKey(name: 'hyper_del') String? hyperDel,
    @JsonKey(name: 'seller_del') String? sellerDel,
    String? visits,
    @JsonKey(name: 'email_token') String? emailToken,
    @JsonKey(name: 'phone_token') String? phoneToken,
    @JsonKey(name: 'tmp_token') String? tmpToken,
    @JsonKey(name: 'verified_email') String? verifiedEmail,
    @JsonKey(name: 'verified_phone') String? verifiedPhone,
    @JsonKey(name: 'accept_terms') String? acceptTerms,
    @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
    @JsonKey(name: 'is_permanent') String? isPermanent,
    String? reviewed,
    String? featured,
    String? archived,
    String? archivedAt,
    @JsonKey(name: 'archived_manually') String? archivedManually,
    @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
    @JsonKey(name: 'fb_profile') String? fbProfile,
    String? partner,
    @JsonKey(name: 'discounted_price') String? discountedPrice,
    @JsonKey(name: 'trending') String? trending,
    String? stock,
    @JsonKey(name: 'min_order') String? minOrder,
    @JsonKey(name: 'samp_price') String? sampPrice,
    @JsonKey(name: 'text_one') String? textOne,
    @JsonKey(name: 'text_two') String? textTwo,
    @JsonKey(name: 'ava_to') String? avaTo,
    String? branded,
    String? wow,
    String? offers,
    @JsonKey(name: 'story_display_days') String? storyDisplayDays,
    String? barcode,
    @JsonKey(name: 'b2b_pricing') String? b2bPricing,
    String? deletedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? image,
    @JsonKey(name: 'discount_percentage') int? discountPercentage,
    @JsonKey(name: 'post_type') String? postType,
    String? username,
    String? city,
    @JsonKey(name: 'similarProductCount') int? similarProductCount,
    @JsonKey(name: 'commentcount') int? commentCount,
    @JsonKey(name: 'avg_rating') double? avgRating,
    @JsonKey(name: 'userdetails') UserDetails? userdetails,
     List<FezzedSaved>? savedByLoggedUser,
  }) = _VendorSearchModel;

  factory VendorSearchModel.fromJson(Map<String, dynamic> json) =>
      _$VendorSearchModelFromJson(json);
}

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
    @JsonKey(name: 'membership_status') String? membershipStatus,
    @JsonKey(name: 'membership_id') String? membershipId,
    @JsonKey(name: 'membership_title') String? membershipTitle,
    @JsonKey(name: 'membership_color') String? membershipColor,
    String? photo,
    String? name,
    @JsonKey(name: 'storyCount') int? storyCount,
    bool? sponsored,
    @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
    @JsonKey(name: 'shortestDistance') double? shortestDistance,
    @JsonKey(name: 'nearestBranch') String? nearestBranch,
    String? longitude,
    String? latitude,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}