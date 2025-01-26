import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required bool? success,
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
    usermodel? user,
    required UserDetailsProduct? user_details,
    required List<Picture>? pictures,
    PostType? postType,
    City? city,
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
class City with _$City {
  const factory City({
    required int id,
    @JsonKey(name: 'country_code') required String countryCode,
    required String name,
    required String latitude,
    required String longitude,
    // @JsonKey(name: 'subadmin1_code') required String subadmin1Code,
    // @JsonKey(name: 'subadmin2_code') required String subadmin2Code,
    required String population,
    @JsonKey(name: 'time_zone') required String timeZone,
    required String active,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

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

  factory LivePrize.fromJson(Map<String, dynamic> json) =>
      _$LivePrizeFromJson(json);
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
class usermodel with _$usermodel {
  const factory usermodel({
    required int id,
    required String name,
    required String username,
    @JsonKey(name: 'created_at_formatted') required String createdAtFormatted,
    @JsonKey(name: 'photo_url') required String photoUrl,
    @JsonKey(name: 'story_count') required int storyCount,
  }) = _usermodel;

  factory usermodel.fromJson(Map<String, dynamic> json) =>
      _$usermodelFromJson(json);
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
class MembershipPlan with _$MembershipPlan {
  const factory MembershipPlan({
    required String? id,
    required String? title,
    required String? color,
    // Uncomment if needed later:
    // required String? mimeType,
    // required String? position,
    // required String? active,
  }) = _MembershipPlan;

  factory MembershipPlan.fromJson(Map<String, dynamic> json) =>
      _$MembershipPlanFromJson(json);
}

@freezed
class Picture with _$Picture {
  const factory Picture({
    required int? id,
    required String? postId,
    required String? filename,
    required String? image_url,
    // required String? mimeType,
    // required String? position,
    // required String? active,
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
    Map<String, dynamic>? headers,
    Original? original,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Original with _$Original {
  const factory Original({
    // required bool success,
    String? message,
    List<FieldDetails>? result,
  }) = _Original;

  factory Original.fromJson(Map<String, dynamic> json) =>
      _$OriginalFromJson(json);
}

@freezed
class FieldDetails with _$FieldDetails {
  const factory FieldDetails({
    int? id,
    @JsonKey(name: 'belongs_to') String? belongsTo,
    String? name,
    String? type,
    int? max,
    @JsonKey(name: 'default_value')
    @DefaultValueConverter() 
    dynamic defaultValue, // Can be String or JSON
    String? required,
    @JsonKey(name: 'use_as_filter') String? useAsFilter,
    String? help,
    String? active,
    List<FieldOption>? options,
  }) = _FieldDetails;

  factory FieldDetails.fromJson(Map<String, dynamic> json) =>
      _$FieldDetailsFromJson(json);
}

class DefaultValueConverter implements JsonConverter<dynamic, dynamic> {
  const DefaultValueConverter();

  @override
  dynamic fromJson(dynamic json) {
    if (json is String) {
      return json; // It's a string
    } else if (json is Map<String, dynamic>) {
      return json; // It's a JSON object
    }
    return null; // Handle invalid types
  }

  @override
  dynamic toJson(dynamic object) {
    if (object is String) {
      return object; // Serialize as string
    } else if (object is Map<String, dynamic>) {
      return object; // Serialize as JSON
    }
    return null; // Handle invalid types
  }
}


@freezed
class FieldOption with _$FieldOption {
  const factory FieldOption({
    int? id,
    @JsonKey(name: 'field_id') String? fieldId,
    String? value,
    @JsonKey(name: 'parent_id') String? parentId,
 
  }) = _FieldOption;

  factory FieldOption.fromJson(Map<String, dynamic> json) =>
      _$FieldOptionFromJson(json);
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
    required String name,
    required String type,

    List<Option>? options,
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
    // @JsonKey(name: 'parent_id') required String? parentId,

    required String? depth,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
