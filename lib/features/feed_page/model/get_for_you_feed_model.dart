import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_for_you_feed_model.freezed.dart';
part 'get_for_you_feed_model.g.dart';

@freezed
class GetForYouFeedModel with _$GetForYouFeedModel {
  const factory GetForYouFeedModel({
    @JsonKey(name: 'data') GetForYouFeedData? data,
    String? msg,
  }) = _GetForYouFeedModel;

  factory GetForYouFeedModel.fromJson(Map<String, dynamic> json) =>
      _$GetForYouFeedModelFromJson(json);
}

@freezed
class GetForYouFeedData with _$GetForYouFeedData {
  const factory GetForYouFeedData({
    @JsonKey(name: 'feed_post') List<FeedPost>? feedPost,
    // Story? story,
  }) = _GetForYouFeedData;

  factory GetForYouFeedData.fromJson(Map<String, dynamic> json) =>
      _$GetForYouFeedDataFromJson(json);
}

@freezed
class FeedPost with _$FeedPost {
  const factory FeedPost({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    String? image,
    String? caption,
    String? like,
    String? approved,
    String? offers,
    @JsonKey(name: 'caption_title') String? captionTitle,
    List<Product>? products,
    String? wow,
    String? views,
    String? wow_status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'feed_detail') FeedDetail? feedDetail,
    @JsonKey(name: 'interested') Interested? interested,
    @JsonKey(name: 'userdetail') UserDetail? userDetail,
  }) = _FeedPost;

  factory FeedPost.fromJson(Map<String, dynamic> json) =>
      _$FeedPostFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    String? id,
    String? title,
    String? price,
    String? image,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class FeedDetail with _$FeedDetail {
  const factory FeedDetail({
    @JsonKey(name: 'caption_title') String? captionTitle,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'image') String? image,
  }) = _FeedDetail;

  factory FeedDetail.fromJson(Map<String, dynamic> json) =>
      _$FeedDetailFromJson(json);
}

@freezed
class Interested with _$Interested {
  const factory Interested({
    @JsonKey(name: 'interested') String? interested,
    @JsonKey(name: 'engagement') int? engagement,
    @JsonKey(name: 'views') String? views,
  }) = _Interested;

  factory Interested.fromJson(Map<String, dynamic> json) =>
      _$InterestedFromJson(json);
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
    double? distance,
    @JsonKey(name: 'vendor_image') String? vendorImage,
    @JsonKey(name: 'membership_id') String? membershipId,
    @JsonKey(name: 'membership_title') String? membershipTitle,
    @JsonKey(name: 'membership_color') String? membershipColor,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
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

//   factory FeedStory.fromJson(Map<String, dynamic> json) =>
//       _$FeedStoryFromJson(json);
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

//     factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

// }
