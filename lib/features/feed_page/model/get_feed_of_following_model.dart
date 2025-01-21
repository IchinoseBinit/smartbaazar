import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_feed_of_following_model.freezed.dart';
part 'get_feed_of_following_model.g.dart';

@freezed
class GetFeedOfFollowingModel with _$GetFeedOfFollowingModel {
  const factory GetFeedOfFollowingModel({
    @JsonKey(name: 'data') Data? data,
    @JsonKey(name: 'msg') String? msg,
  }) = _GetFeedOfFollowingModel;

  factory GetFeedOfFollowingModel.fromJson(Map<String, dynamic> json) => _$GetFeedOfFollowingModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'feed_post') List<FeedPost>? feedPost,
    // @JsonKey(name: 'story') Story? story,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class FeedPost with _$FeedPost {
  const factory FeedPost({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'caption_title') String? captionTitle,
    @JsonKey(name: 'views') String? views,
    @JsonKey(name: 'wow') dynamic wow,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'offers') String? offers,
    @JsonKey(name: 'products') List<Product>? products,
    @JsonKey(name: 'feed_detail') FeedDetail? feedDetail,
    @JsonKey(name: 'interested') Interested? interested,
    @JsonKey(name: 'userdetail') UserDetail? userDetail,
  }) = _FeedPost;

  factory FeedPost.fromJson(Map<String, dynamic> json) => _$FeedPostFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class FeedDetail with _$FeedDetail {
  const factory FeedDetail({
    @JsonKey(name: 'caption_title') String? captionTitle,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'image') String? image,
  }) = _FeedDetail;

  factory FeedDetail.fromJson(Map<String, dynamic> json) => _$FeedDetailFromJson(json);
}

@freezed
class Interested with _$Interested {
  const factory Interested({
    @JsonKey(name: 'interested') dynamic interested,
    @JsonKey(name: 'engagement') int? engagement,
    @JsonKey(name: 'views') String? views,
  }) = _Interested;

  factory Interested.fromJson(Map<String, dynamic> json) => _$InterestedFromJson(json);
}

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
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

// @freezed
// class Story with _$Story {
//   const factory Story({
//     @JsonKey(name: 'feed_story') List<FeedStory>? feedStory,
//   }) = _Story;

//   factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
// }

// @freezed
// class FeedStory with _$FeedStory {
//   const factory FeedStory({
//     @JsonKey(name: 'id') String? id,
//     @JsonKey(name: 'vendor_name') String? vendorName,
//     @JsonKey(name: 'vendor_image') String? vendorImage,
//     @JsonKey(name: 'story_count') int? storyCount,
//     @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
//     @JsonKey(name: 'posts') List<Post>? posts,
//   }) = _FeedStory;

//   factory FeedStory.fromJson(Map<String, dynamic> json) => _$FeedStoryFromJson(json);
// }

// @freezed
// class Post with _$Post {
//   const factory Post({
//     @JsonKey(name: 'id') String? id,
//     @JsonKey(name: 'title') String? title,
//     @JsonKey(name: 'image') String? image,
//     @JsonKey(name: 'similarproductcount') int? similarProductCount,
//     @JsonKey(name: 'comment_count') String? commentCount,
//     @JsonKey(name: 'average_rating') dynamic averageRating,
//     @JsonKey(name: 'discount_percentage') dynamic discountPercentage,
//     @JsonKey(name: 'wow') dynamic wow,
//   }) = _Post;

//   factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
// }
