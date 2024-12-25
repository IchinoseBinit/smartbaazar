import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required bool success,
    required String? message,
    required PostResult? result,
    required ExtraModel? extra,
    required WidgetSimilarPosts? widgetSimilarPosts,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

@freezed
class WidgetSimilarPosts with _$WidgetSimilarPosts {
  const factory WidgetSimilarPosts({
    // required String title,
    // required String link,
    required PostPagination posts,
  }) = _WidgetSimilarPosts;

  // Factory method to create WidgetSimilarPosts from JSON
  factory WidgetSimilarPosts.fromJson(Map<String, dynamic> json) =>
      _$WidgetSimilarPostsFromJson(json);
}

@freezed
class PostPagination with _$PostPagination {
  const factory PostPagination({
    required int current_page,
    required List<PostResult> data,
  }) = _PostPagination;

  // Factory method to create PostPagination from JSON
  factory PostPagination.fromJson(Map<String, dynamic> json) =>
      _$PostPaginationFromJson(json);
}




@freezed
class PostResult with _$PostResult {
  const factory PostResult({
    required int? id,
    required String? countryCode,
    required String? userId,
    required String? categoryId,
    required String? postTypeId,
    required String? title,
    required String? description,
    required List<String>? tags,
    required String? price,
    String? discountedPrice,
    required String? trending,
    required String? stock,
    required String user_photo_url,
    String? minOrder,
    String? sampPrice,
    String? textOne,
    String? textTwo,
    String? avaTo,
    String? negotiable,
    required String? contactName,
    required String? email,
    required String? phone,
    String? phoneHidden,
    String? address,
    required String? cityId,
    required String? lat,
    required String? lon,
    required String? ipAddr,
    required String? length,
    required String? width,
    required String? weight,
    required String? height,
    required String? pickup,
    required String? longitude,
    required String? latitude,
    required String? hyperDel,
    String? sellerDel,
    required String? acceptTerms,
    required String? acceptMarketingOffers,
    required String? isPermanent,
    required String? reviewed,
    required String? featured,
    required String? archived,
    required String? archivedAt,
    String? deletionMailSentAt,
    String? fbProfile,
    String? partner,
    String? b2bPricing,
    String? offer,
    String? wow,
    String? sku,
    required String? createdAt,
    required String? updatedAt,
    required String? slug,
    required String? createdAtFormatted,
    required String? userPhotoUrl,
    required int? commentCount,
    required ExtraModel? extra,
    Ratings? ratings,
    required UserDetailsProduct? user_details,
    required List<Picture>? pictures,
     PostType? postType,
    required List<RatingComment> rating_comment,
       @Default([]) List<LivePrize> live_prizes,
    @Default([]) List<Shop>? deals,
    @Default([]) List<Shop>? shop,
        @Default([]) List<FeedPost>? feed_post,

  }) = _PostResult;

  factory PostResult.fromJson(Map<String, dynamic> json) =>
      _$PostResultFromJson(json);
}
@freezed
// class FeedPost with _$FeedPost {
//   const factory FeedPost({
//     required String id,
//     required String name,
//     required String photo,
//     required int subscribers,
//     required String image,
//     required String caption,
//     required String createdAt, // or DateTime if you prefer
//   }) = _FeedPost;

//   factory FeedPost.fromJson(Map<String, dynamic> json) => _$FeedPostFromJson(json);
// }
@freezed
class LivePrize with _$LivePrize {
  factory LivePrize({
     String? id,
    required String name,
     String? photo,
    required int? subscribers,
     String? image,
     String? gift_qty,
     String? total_worth,
  }) = _LivePrize;

  factory LivePrize.fromJson(Map<String, dynamic> json) => _$LivePrizeFromJson(json);
}

@freezed
class Shop with _$Shop {
  factory Shop({
    required String id,
    required String image,
    @JsonKey(name: 'discount_percentage') required double? discountPercentage,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}

@freezed
class Ratings with _$Ratings {
  const factory Ratings({
    Rating? rating,
    int? avg_rating,
    required RatingCounts ratingCounts,
    required RatingCounts ratingPercentages,
    required int totalRatings, // Required as it's a number
    required double averageRating, // Required as it's a number
  }) = _Ratings;

  factory Ratings.fromJson(Map<String, dynamic> json) =>
      _$RatingsFromJson(json);
}

@freezed
class RatingComment with _$RatingComment {
  const factory RatingComment({
    required String name,
    required String photo,
    required String comment,
    @JsonKey(name: 'ratingstar') required String ratingStar,
  }) = _RatingComment;

  factory RatingComment.fromJson(Map<String, dynamic> json) =>
      _$RatingCommentFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required String id,
    @JsonKey(name: 'post_id') required String postId,
    @JsonKey(name: 'user_id') required String userId,
    required String rating,
    @JsonKey(name: 'parent_id') String? parentId,
    String? comment,
    @JsonKey(name: 'reply_comment') String? replyComment,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class PostType with _$PostType {
  const factory PostType({
    // required int id,
    required String name,
    // required String active,
  }) = _PostType;

  factory PostType.fromJson(Map<String, dynamic> json) =>
      _$PostTypeFromJson(json);
}

@freezed
class VendorUserDetail with _$VendorUserDetail {
  const factory VendorUserDetail({
    // String? id,
    // String? name,
    // String? photo,
    @JsonKey(name: 'membership_color') String? memberColor,
    @JsonKey(name: 'membership_title') String? membershipTitle,
  }) = _VendorUserDetail;

  factory VendorUserDetail.fromJson(Map<String, dynamic> json) =>
      _$VendorUserDetailFromJson(json);
}

@freezed
class RatingCounts with _$RatingCounts {
  const factory RatingCounts({
    @JsonKey(name: '5') required int? five,
    @JsonKey(name: '4') required int? four,
    @JsonKey(name: '3') required int? three,
    @JsonKey(name: '2') required int? two,
    @JsonKey(name: '1') required int? one,
  }) = _RatingCounts;

  factory RatingCounts.fromJson(Map<String, dynamic> json) =>
      _$RatingCountsFromJson(json);
}

@freezed
class UserDetailsProduct with _$UserDetailsProduct {
  const factory UserDetailsProduct({
    required String name,
    required String photo,
    @JsonKey(name: 'user_photo_url') required String userPhotoUrl,
    @JsonKey(name: 'has_sponsored_gifts') required bool hasSponsoredGifts,
    required int livePrizes,
    required int productCount,
    required int storyCount,
    required int subscribers,
    double? distance, // Nullable field
  }) = _UserDetailsProduct;

  factory UserDetailsProduct.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsProductFromJson(json);
}

@freezed
class Picture with _$Picture {
  const factory Picture({
    required int? id,
    required String? postId,
    required String? filename,
    required String? image_url,
    required String? mimeType,
    required String? position,
    required String? active,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}

@freezed
class ExtraModel with _$ExtraModel {
  const factory ExtraModel({
    Fields? fields,
  }) = _ExtraModel;

  factory ExtraModel.fromJson(Map<String, dynamic> json) =>
      _$ExtraModelFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    // Map<String, dynamic>? headers,
    Original? original,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Original with _$Original {
  const factory Original({
    // required bool success,
    String? message,
    FieldDetails? result,
  }) = _Original;

  factory Original.fromJson(Map<String, dynamic> json) =>
      _$OriginalFromJson(json);
}

@freezed
class FieldDetails with _$FieldDetails {
  const factory FieldDetails({
    @JsonKey(name: '4') AvailableColor? field4,
    @JsonKey(name: '5') AvailableColor? field5,
    @JsonKey(name: '6') AvailableColor? field6,
    @JsonKey(name: '10') AvailableColor? field10,
    @JsonKey(name: '11') AvailableColor? field11,
    @JsonKey(name: '12') AvailableColor? field12,
    @JsonKey(name: '13') AvailableColor? field13,
    @JsonKey(name: '14') AvailableColor? field14,
    @JsonKey(name: '15') AvailableColor? field15,
  }) = _FieldDetails;

  factory FieldDetails.fromJson(Map<String, dynamic> json) =>
      _$FieldDetailsFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    // int? id,
    String? value,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class AvailableColor with _$AvailableColor {
  const factory AvailableColor({
    @JsonKey(name: 'belongs_to') required String belongsTo,
    required String name,
    required String type,
    int? max,
    // @JsonKey(name: 'default_value') DefaultValue? defaultValue,
    required String required,
    @JsonKey(name: 'use_as_filter') required String useAsFilter,
    String? help,
    required String active,
    required List<Option> options,
  }) = _AvailableColor;

  factory AvailableColor.fromJson(Map<String, dynamic> json) =>
      _$AvailableColorFromJson(json);
}

@freezed
class SimilarItems with _$SimilarItems {
  const factory SimilarItems({
    int? id,
    String? title,
    String? price,
    List<Picture>? pictures,
  }) = _SimilarItems;

  factory SimilarItems.fromJson(Map<String, dynamic> json) =>
      _$SimilarItemsFromJson(json);
}

@freezed
class Option with _$Option {
  const factory Option({
    @JsonKey(name: 'field_id') required String? fieldId,
    required String? value,
    @JsonKey(name: 'parent_id') required String? parentId,
    required String? lft,
    required String? rgt,
    required String? depth,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
