import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/feed_page/model/get_feed_stories_model.dart';

part 'home_search_model.freezed.dart';
part 'home_search_model.g.dart';

@freezed
class HomeSearchResopnse with _$HomeSearchResopnse {
  const factory HomeSearchResopnse({
    required HomeSearchData data,
    required String msg,
  }) = _HomeSearchResopnse;

  factory HomeSearchResopnse.fromJson(Map<String, dynamic> json) => _$HomeSearchResopnseFromJson(json);
}

@freezed
class HomeSearchData with _$HomeSearchData {
  const factory HomeSearchData({
    required HomeSearchStoryData home_story,
  }) = _HomeSearchData;

  factory HomeSearchData.fromJson(Map<String, dynamic> json) => _$HomeSearchDataFromJson(json);
}

@freezed
class HomeSearchStoryData with _$HomeSearchStoryData {
  const factory HomeSearchStoryData({
    required FeedStory story,
  }) = _HomeSearchStoryData;

  factory HomeSearchStoryData.fromJson(Map<String, dynamic> json) => _$HomeSearchStoryDataFromJson(json);
}



