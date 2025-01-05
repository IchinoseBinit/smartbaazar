import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/brand_bazar/model/brand_bazar_model.dart';

part 'vendor_profile_name.freezed.dart';
part 'vendor_profile_name.g.dart';

@freezed
class VendorProfile with _$VendorProfile {
  const factory VendorProfile({
    String? subscribed,
    Vendor? vendor,
    VendorCard? vendor_card,
    VendorAbout? vendor_about,
    List<Deal>? deals,
    List<BrandNewModel>? all_products,
    List<FeedPost>? feedPosts,
    List<FeedPost>? live_prizes, 
    List<BrandNewModel>? brandnew,
    List<BrandNewModel>? used,
    List<BrandNewModel>? services,
    List<BrandNewModel>? jobs,
    List<BrandNewModel>? events,
    List<BrandNewModel>? b2b,
    List<BrandNewModel>? grocery,
    String? scratch_banner,
    List<Advertisement>? advertisements,
    // List<Product>? BrandNewModel,
  }) = _VendorProfile;

  factory VendorProfile.fromJson(Map<String, dynamic> json) =>
      _$VendorProfileFromJson(json);
}

@freezed
class BrandNewModel with _$BrandNewModel {
  const factory BrandNewModel({
    required String id,
    required String country_code,
    required String user_id,
    required String category_id,
    required String post_type_id,
    required String title,
    String? story_display_days,
    String? b2b_pricing,
    required String image,
    required String post_type,
    required String username,
    String? offers,
    String? price,
    String? wow,
    required String? city,
    required int? similarProductCount,
    required int? discounted_price,
    required String? shortestDistance,
    required int? commentcount,
    required int? avg_rating,
    required UserDetailsModel? userdetails,
  }) = _BrandNewModel;

  factory BrandNewModel.fromJson(Map<String, dynamic> json) =>
      _$BrandNewModelFromJson(json);
}

@freezed
class UserDetailsModel with _$UserDetailsModel {
  const factory UserDetailsModel({
    required String user_id,
    String? membership_plan_id,
    String? membership_status,
    String? membership_id,
    String? membership_title,
    String? membership_color,
    
    String? photo,
    required String name,
    int? storyCount,
    bool? sponsored,
    bool? has_sponsored_gifts,
    String? nearestBranch,
    double? shortestDistance, 
  }) = _UserDetailsModel;

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    String? id,
    String? name,
    String? photo,
    String? about,
    String? phone,
    String? phone_hidden,
    String? username,
    String? email,
    // String? email_verified_at,
    // String? password,
    // String? remember_token,
    // String? is_admin,
    // String? can_be_impersonated,
    // String? disable_comments,
    // String? ip_addr,
    // String? provider,
    // String? provider_id,
    // String? email_token,
    // String? phone_token,
    // String? verified_email,
    // String? verified_phone,
    // String? accept_terms,
    // String? accept_marketing_offers,
    // String? time_zone,
    // String? blocked,
    // String? closed,
    // String? last_activity,
    // String? last_login_at,
    // String? ims,
    // String? brandbazar,
    // String? brandbazar_verify,
    // String? brandbazar_status,
    // String? brandbazar_payment_status,
    // String? payment_qr,
    // String? bank_name,
    // String? bank_branch,
    // String? ac_holder,
    // String? ac_number,
    // String? banner,
    // String? description,
    // String? pan_vat,
    // String? tax_certificate,
    // String? register_certificate,
    // String? user_verify,
    // String? gender,
    // String? dob,
    // String? membership_plan_id,
    // String? membership_payment_status,
    // String? membership_start,
    // String? membership_end,
    // String? membership_status,
    // String? bio,
    String? opening_hours,
    String? users_location,
    String? branch_location,
    // String? device_token,
    // String? deleted_at,
    // String? created_at,
    // String? updated_at,
    String? shortestDistance,
    String? nearestBranch,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class   VendorCard with _$VendorCard {
  const factory VendorCard({
    String? name,
    String? photo,
        String? longitude,
    String? latitude,

    String? phone,
    String? profile_url,
    int? storycount,
    int? subscribers,
    int? prize_worth,
    bool? has_sponsored_gifts,
    String? nearestbranch,
    String? membership_id,
    String? membership_title,
    String? membership_color,
  }) = _VendorCard;

  factory VendorCard.fromJson(Map<String, dynamic> json) =>
      _$VendorCardFromJson(json);
}

@freezed
class VendorAbout with _$VendorAbout {
  const factory VendorAbout({
    String? phone,
    String? email,
    String? bio,
    String? opening_hours,
    String? nearestbranch,
  }) = _VendorAbout;

  factory VendorAbout.fromJson(Map<String, dynamic> json) =>
      _$VendorAboutFromJson(json);
}

@freezed
class Deal with _$Deal {
  const factory Deal({
    String? id,
    String? image,
    String? discount_percentage,
  }) = _Deal;

  factory Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);
}

@freezed
class FeedPost with _$FeedPost {
  const factory FeedPost({
    String? id,
    String? name,
    String? photo,
    int? subscribers,
    String? image,
    
    String? caption,
    String? created_at,
  }) = _FeedPost;

  factory FeedPost.fromJson(Map<String, dynamic> json) =>
      _$FeedPostFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    String? id,
    String? title,
    String? description,
    String? tags,
    String? price,
    String? negotiable,
    String? contact_name,
    String? email,
    String? phone,
    String? phone_hidden,
    String? address,
    String? city_id,
    String? lon,
    String? lat,
    String? length,
    String? width,
    String? weight,
    String? height,
    String? pickup,
    String? longitude,
    String? latitude,
    String? city,
    int? similarProductCount,
    int? commentcount,
    double? avg_rating,
    ProductUserDetailsModel? UserDetailsModel,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductUserDetailsModel with _$ProductUserDetailsModel {
  const factory ProductUserDetailsModel({
    String? user_id,
    String? membership_plan_id,
    String? membership_status,
    String? membership_id,
    String? membership_title,
    String? membership_color,
    String? photo,
    String? name,
    int? storyCount,
    bool? sponsored,
    bool? has_sponsored_gifts,
    double? shortestDistance,
    String? nearestBranch,
  }) = _ProductUserDetailsModel;

  factory ProductUserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductUserDetailsModelFromJson(json);
}
