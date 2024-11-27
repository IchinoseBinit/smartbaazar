import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_search_model.freezed.dart';
part 'saved_search_model.g.dart';

@freezed
class SavedSearchModel with _$SavedSearchModel {
  const factory SavedSearchModel({
    bool? success,
    String? message,
    Result? result,
  }) = _SavedSearchModel;

  factory SavedSearchModel.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    SavedSearches? savedSearches,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class SavedSearches with _$SavedSearches {
  const factory SavedSearches({
    List<SavedSearch>? data,
  }) = _SavedSearches;

  factory SavedSearches.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchesFromJson(json);
}

@freezed
class SavedSearch with _$SavedSearch {
  const factory SavedSearch({
    int? id,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'user_id') String? userId,
    String? keyword,
    String? query,
    String? count, 
  }) = _SavedSearch;

  factory SavedSearch.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchFromJson(json);
}
