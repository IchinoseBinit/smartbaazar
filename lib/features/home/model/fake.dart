// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'product_details_model.freezed.dart';
// part 'product_details_model.g.dart';

// @freezed
// class PostModel with _$PostModel {
//   const factory PostModel({
//     required bool success,
//     required String? message,
//     required PostResult? result,
//     required ExtraModel? extra,
//   }) = _PostModel;

//   factory PostModel.fromJson(Map<String, dynamic> json) =>
//       _$PostModelFromJson(json);
// }

// @freezed
// class PostResult with _$PostResult {
//   const factory PostResult({
//     required int? id,
//     required String? countryCode,
//     required String? userId,
//     required String? categoryId,
//     required String? postTypeId,
//     required String? title,
//     required String? description,
//     required List<String>? tags,
//     required String? price,
//     String? discountedPrice,
//     required String? trending,
//     required String? stock,
//     String? minOrder,
//     String? sampPrice,
//     String? textOne,
//     String? textTwo,
//     String? avaTo,
//     String? negotiable,
//     required String? contactName,
//     required String? email,
//     required String? phone,
//     String? phoneHidden,
//     String? address,
//     required String? cityId,
//     required String? lat,
//     required String? lon,
//     required String? ipAddr,
//     required String? length,
//     required String? width,
//     required String? weight,
//     required String? height,
//     required String? pickup,
//     required String? longitude,
//     required String? latitude,
//     required String? hyperDel,
//     String? sellerDel,
//     required String? acceptTerms,
//     required String? acceptMarketingOffers,
//     required String? isPermanent,
//     required String? reviewed,
//     required String? featured,
//     required String? archived,
//     required String? archivedAt,
//     String? deletionMailSentAt,
//     String? fbProfile,
//     String? partner,
//     String? b2bPricing,
//     String? offer,
//     String? wow,
//     String? sku,
//     required String? createdAt,
//     required String? updatedAt,
//     required String? slug,
//     required String? createdAtFormatted,
//     @JsonKey(name: 'user_photo_url') required String userPhotoUrl,
//     required int? commentCount,
//     required ExtraModel? extra,
//     Ratings? ratings,
//     required UserDetails? userDetails,
//     required List<Picture>? pictures,
//     required PostType postType,
//   }) = _PostResult;

//   factory PostResult.fromJson(Map<String, dynamic> json) =>
//       _$PostResultFromJson(json);
// }

// @freezed
// class Ratings with _$Ratings {
//   const factory Ratings({
//     String? rating,
//     @JsonKey(name: 'avg_rating') int? avgRating,
//     required RatingCounts ratingCounts,
//     @JsonKey(name: 'ratingPercentages') required RatingCounts ratingPercentages,
//     required int totalRatings,
//     required double averageRating,
//   }) = _Ratings;

//   factory Ratings.fromJson(Map<String, dynamic> json) =>
//       _$RatingsFromJson(json);
// }

// @freezed
// class PostType with _$PostType {
//   const factory PostType({
//     required String name,
//   }) = _PostType;

//   factory PostType.fromJson(Map<String, dynamic> json) =>
//       _$PostTypeFromJson(json);
// }

// @freezed
// class VendorUserDetail with _$VendorUserDetail {
//   const factory VendorUserDetail({
//     @JsonKey(name: 'membership_color') String? memberColor,
//     @JsonKey(name: 'membership_title') String? membershipTitle,
//   }) = _VendorUserDetail;

//   factory VendorUserDetail.fromJson(Map<String, dynamic> json) =>
//       _$VendorUserDetailFromJson(json);
// }

// @freezed
// class RatingCounts with _$RatingCounts {
//   const factory RatingCounts({
//     @JsonKey(name: '5') required int? five,
//     @JsonKey(name: '4') required int? four,
//     @JsonKey(name: '3') required int? three,
//     @JsonKey(name: '2') required int? two,
//     @JsonKey(name: '1') required int? one,
//   }) = _RatingCounts;

//   factory RatingCounts.fromJson(Map<String, dynamic> json) =>
//       _$RatingCountsFromJson(json);
// }

// @freezed
// class UserDetails with _$UserDetails {
//   const factory UserDetails({
//     required String? name,
//     required String? photo,
//     required String? userPhotoUrl,
//     required bool? hasSponsoredGifts,
//     required int? livePrizes,
//     required int? productCount,
//     required int? storyCount,
//     required int? subscribers,
//     required double? distance,
//   }) = _UserDetails;

//   factory UserDetails.fromJson(Map<String, dynamic> json) =>
//       _$UserDetailsFromJson(json);
// }

// @freezed
// class Picture with _$Picture {
//   const factory Picture({
//     required int? id,
//     required String? postId,
//     required String? filename,
//     required String? mimeType,
//     required String? position,
//     required String? active,
//   }) = _Picture;

//   factory Picture.fromJson(Map<String, dynamic> json) =>
//       _$PictureFromJson(json);
// }

// @freezed
// class ExtraModel with _$ExtraModel {
//   const factory ExtraModel({
//     Fields? fields,
//   }) = _ExtraModel;

//   factory ExtraModel.fromJson(Map<String, dynamic> json) =>
//       _$ExtraModelFromJson(json);
// }

// @freezed
// class Fields with _$Fields {
//   const factory Fields({
//     Original? original,
//   }) = _Fields;

//   factory Fields.fromJson(Map<String, dynamic> json) =>
//       _$FieldsFromJson(json);
// }

// @freezed
// class Original with _$Original {
//   const factory Original({
//     String? message,
//     FieldDetails? result,
//   }) = _Original;

//   factory Original.fromJson(Map<String, dynamic> json) =>
//       _$OriginalFromJson(json);
// }
