import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_search_model.freezed.dart';
part 'story_search_model.g.dart';

@freezed
class StorySearchModel with _$StorySearchModel {
  const factory StorySearchModel({
    @JsonKey(name: 'data') required Data? data,
    @JsonKey(name: 'msg') required String? msg,
  }) = _StorySearchModel;

  factory StorySearchModel.fromJson(Map<String, dynamic> json) =>
      _$StorySearchModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'home_story') required HomeStory? homeStory,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class HomeStory with _$HomeStory {
  const factory HomeStory({
    @JsonKey(name: 'story') required Story? story,
  }) = _HomeStory;

  factory HomeStory.fromJson(Map<String, dynamic> json) => _$HomeStoryFromJson(json);
}

@freezed
class Story with _$Story {
  const factory Story({
    @JsonKey(name: 'posts') required List<Post>? posts,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    @JsonKey(name: 'vendor_id') required String? vendorId,
    @JsonKey(name: 'vendor_name') required String? vendorName,
    @JsonKey(name: 'vendor_image') required String? vendorImage,
    @JsonKey(name: 'has_sponsored_gifts') required bool? hasSponsoredGifts,
    required String? id,
    required String? title,
    required String? image,
    @JsonKey(name: 'similarproductcount') required int? similarProductCount,
    @JsonKey(name: 'comment_count') required int? commentCount,
    @JsonKey(name: 'average_rating') required double? averageRating,
    @JsonKey(name: 'discount_percentage') required int? discountPercentage,
    @JsonKey(name: 'wow') required String? wow,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}