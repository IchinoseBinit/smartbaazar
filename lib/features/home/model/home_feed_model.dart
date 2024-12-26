import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_feed_model.freezed.dart';
part 'home_feed_model.g.dart';

@freezed
class FeedStoryResponse with _$FeedStoryResponse {
  const factory FeedStoryResponse({
    required Data? data,
    required String? msg,
  }) = _FeedStoryResponse;

  factory FeedStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedStoryResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'feedstory') required FeedStory? feedStory,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class FeedStory with _$FeedStory {
  const factory FeedStory({
    required List<Post> posts,
  }) = _FeedStory;

  factory FeedStory.fromJson(Map<String, dynamic> json) =>
      _$FeedStoryFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    @JsonKey(name: 'vendor_id') required String vendorId,
    @JsonKey(name: 'vendor_name') required String vendorName,
    @JsonKey(name: 'vendor_image') required String vendorImage,
    @JsonKey(name: 'story_count') required int storyCount,
    @JsonKey(name: 'has_sponsored_gifts') required bool hasSponsoredGifts,
    required String id,
    required String title,
    required String image,
    @JsonKey(name: 'similarproductcount') required int similarProductCount,
    @JsonKey(name: 'comment_count') required String commentCount,
    @JsonKey(name: 'average_rating') required double averageRating,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    String? wow,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
