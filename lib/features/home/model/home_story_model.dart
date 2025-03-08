import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_story_model.freezed.dart';
part 'home_story_model.g.dart';

@freezed
class HomeStoryModel with _$HomeStoryModel {
  const factory HomeStoryModel({
    @JsonKey(name: 'home_story') HomeStoryData? homeStory, // Use HomeStoryData instead of dynamic
  }) = _HomeStoryModel;

  factory HomeStoryModel.fromJson(Map<String, dynamic> json) =>
      _$HomeStoryModelFromJson(json);
}

@freezed
class HomeStoryData with _$HomeStoryData {
  const factory HomeStoryData({
    @JsonKey(name: 'story') Story? story,
  }) = _HomeStoryData;

  factory HomeStoryData.fromJson(Map<String, dynamic> json) =>
      _$HomeStoryDataFromJson(json);
}

@freezed
class Story with _$Story {
  const factory Story({
    @JsonKey(name: 'HomeStoryAllPosts') List<HomeStoryAllPost>? HomeStoryAllPosts,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
@freezed
class HomeStoryAllPost with _$HomeStoryAllPost {
  const factory HomeStoryAllPost({
    @JsonKey(name: 'vendor_id') String? vendorId,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_image') String? vendorImage,
    @JsonKey(name: 'story_count') int? storyCount,
    @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
    // @JsonKey(name: 'similarproductcount') int? similarProductCount,
    // @JsonKey(name: 'comment_count') String? commentCount,
    // @JsonKey(name: 'average_rating') dynamic averageRating,
    // @JsonKey(name: 'discount_percentage') double? discountPercentage,
    // @JsonKey(name: 'wow') String? wow,
  }) = _HomeStoryAllPost;

  factory HomeStoryAllPost.fromJson(Map<String, dynamic> json) => _$HomeStoryAllPostFromJson(json);
}
