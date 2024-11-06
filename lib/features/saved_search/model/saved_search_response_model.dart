import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_search_response_model.freezed.dart';
part 'saved_search_response_model.g.dart';

@freezed
class SavedSearchesResponseModel with _$SavedSearchesResponseModel {
  const factory SavedSearchesResponseModel({
    @JsonKey(name: "data") required Data data,
    @JsonKey(name: "msg") required String? msg,
  }) = _SavedSearchesResponseModel;

  factory SavedSearchesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchesResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "brand_new") required List<BrandNew>? brandNew,
    @JsonKey(name: "used") required List<dynamic> used,
    @JsonKey(name: "services") required List<dynamic> services,
    @JsonKey(name: "jobs") required List<dynamic> jobs,
    @JsonKey(name: "events") required List<dynamic> events,
    @JsonKey(name: "b2b") required List<dynamic> b2B,
    @JsonKey(name: "grocery") required List<dynamic> grocery,
    @JsonKey(name: "posts") required Posts posts,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BrandNew with _$BrandNew {
  const factory BrandNew({
    @JsonKey(name: "id") required String id,

    @JsonKey(name: "user_id") required String userId,

    @JsonKey(name: "title") required String title,

 
    @JsonKey(name: "price") required String price,
    required String image,
  }) = _BrandNew;

  factory BrandNew.fromJson(Map<String, dynamic> json) => _$BrandNewFromJson(json);
}

@freezed
class Posts with _$Posts {
  const factory Posts({
    @JsonKey(name: "current_page") required int currentPage,
    @JsonKey(name: "data") required List<BrandNew> data,
    @JsonKey(name: "first_page_url") required String firstPageUrl,
    @JsonKey(name: "from") required int from,
    @JsonKey(name: "last_page") required int lastPage,
    @JsonKey(name: "last_page_url") required String lastPageUrl,
    @JsonKey(name: "links") required List<Link> links,
    @JsonKey(name: "next_page_url") required dynamic nextPageUrl,
    @JsonKey(name: "path") required String path,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "prev_page_url") required dynamic prevPageUrl,
    @JsonKey(name: "to") required int to,
    @JsonKey(name: "total") required int total,
  }) = _Posts;

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "url") required String? url,
    @JsonKey(name: "label") required String label,
    @JsonKey(name: "active") required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
