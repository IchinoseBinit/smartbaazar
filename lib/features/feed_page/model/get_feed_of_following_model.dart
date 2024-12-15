import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_feed_of_following_model.freezed.dart';
part 'get_feed_of_following_model.g.dart';

@freezed
class GetFeedOfFollowingModel with _$GetFeedOfFollowingModel {
  factory GetFeedOfFollowingModel({
    @JsonKey(name: 'data') DataModel? data,
    @JsonKey(name: 'msg') String? msg,
  }) = _GetFeedOfFollowingModel;

  factory GetFeedOfFollowingModel.fromJson(Map<String, dynamic> json) => _$GetFeedOfFollowingModelFromJson(json);
}

@freezed
class DataModel with _$DataModel {
  factory DataModel({
    @JsonKey(name: '0') List<FeedItem>? feedItems,
    @JsonKey(name: 'story') Map<String, Story>? story,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class FeedItem with _$FeedItem {
  factory FeedItem({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'caption_title') String? captionTitle,
    @JsonKey(name: 'views') String? views,
    @JsonKey(name: 'wow') dynamic wow,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'offers') Offers? offers,
    @JsonKey(name: 'products') String? products,
    @JsonKey(name: 'feed_detail') FeedDetail? feedDetail,
    @JsonKey(name: 'interested') Interested? interested,
    @JsonKey(name: 'userdetail') UserDetail? userDetail,
  }) = _FeedItem;

  factory FeedItem.fromJson(Map<String, dynamic> json) => _$FeedItemFromJson(json);
}

@freezed
class Offers with _$Offers {
  factory Offers({
    @JsonKey(name: 'offers') String? offers,
    @JsonKey(name: 'products') List<Product>? products,
  }) = _Offers;

  factory Offers.fromJson(Map<String, dynamic> json) => _$OffersFromJson(json);
}

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class FeedDetail with _$FeedDetail {
  factory FeedDetail({
    @JsonKey(name: 'cation_title') String? captionTitle,
    @JsonKey(name: 'cation') String? caption,
    @JsonKey(name: 'image') String? image,
  }) = _FeedDetail;

  factory FeedDetail.fromJson(Map<String, dynamic> json) => _$FeedDetailFromJson(json);
}

@freezed
class Interested with _$Interested {
  factory Interested({
    @JsonKey(name: 'interested') dynamic interested,
    @JsonKey(name: 'engagement') int? engagement,
    @JsonKey(name: 'views') String? views,
  }) = _Interested;

  factory Interested.fromJson(Map<String, dynamic> json) => _$InterestedFromJson(json);
}

@freezed
class UserDetail with _$UserDetail {
  factory UserDetail({
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'subscribers') int? subscribers,
    @JsonKey(name: 'productCount') int? productCount,
    @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
    @JsonKey(name: 'storyCount') int? storyCount,
    @JsonKey(name: 'live_prize') int? livePrize,
    @JsonKey(name: 'distance') dynamic distance,
    @JsonKey(name: 'vendor_image') String? vendorImage,
    @JsonKey(name: 'membership_id') String? membershipId,
    @JsonKey(name: 'membership_title') String? membershipTitle,
    @JsonKey(name: 'membership_color') String? membershipColor,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);
}

@freezed
class Story with _$Story {
  factory Story({
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_image') String? vendorImage,
    @JsonKey(name: 'story_count') int? storyCount,
    @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
    @JsonKey(name: 'posts') List<Post>? posts,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}

@freezed
class Post with _$Post {
  factory Post({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'similarproductcount') int? similarProductCount,
    @JsonKey(name: 'comment_count') String? commentCount,
    @JsonKey(name: 'average_rating') double? averageRating,
    @JsonKey(name: 'discount_percentage') dynamic discountPercentage,
    @JsonKey(name: 'wow') dynamic wow,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
