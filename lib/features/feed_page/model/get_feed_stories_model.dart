import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_feed_stories_model.freezed.dart';
part 'get_feed_stories_model.g.dart';

@freezed
class GetFeedStoriesModel with _$GetFeedStoriesModel {
  const factory GetFeedStoriesModel({
    @JsonKey(name: 'data') FeedStoryData? data,
    @JsonKey(name: 'msg') String? msg,
  }) = _GetFeedStoriesModel;

  factory GetFeedStoriesModel.fromJson(Map<String, dynamic> json) =>
      _$GetFeedStoriesModelFromJson(json);
}

@freezed
class FeedStoryData with _$FeedStoryData {
  const factory FeedStoryData({
    @JsonKey(name: 'feedstory') FeedStory? feedstory,
  }) = _FeedStoryData;

  factory FeedStoryData.fromJson(Map<String, dynamic> json) =>
      _$FeedStoryDataFromJson(json);
}

@freezed
class FeedStory with _$FeedStory {
  const factory FeedStory({
    @JsonKey(name: 'posts') List<Post>? posts,
  }) = _FeedStory;

  factory FeedStory.fromJson(Map<String, dynamic> json) =>
      _$FeedStoryFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    @JsonKey(name: 'vendor_id') String? vendorId,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_image') String? vendorImage,
    @JsonKey(name: 'story_count') int? storyCount,
    @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
    String? id,
    String? title,
    String? image,
    String? price,
    @JsonKey(name: 'discounted_price') String? discountedPrice,
    String? description,
    @JsonKey(name: 'similarproductcount') int? similarProductCount,
    @JsonKey(name: 'comment_count') int? commentCount,
    @JsonKey(name: 'average_rating') int? averageRating,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    String? wow,
    @JsonKey(name: 'wow_status') int? wowStatus,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
