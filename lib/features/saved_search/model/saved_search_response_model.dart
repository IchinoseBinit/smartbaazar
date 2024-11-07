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
    @JsonKey(name: "used") required List<Used>? used,
    @JsonKey(name: "services") required List<Services>? services,
    @JsonKey(name: "jobs") required List<Jobs>? jobs,
    @JsonKey(name: "events") required List<Events>? events,
    @JsonKey(name: "b2b") required List<B2B>? b2B,
    @JsonKey(name: "grocery") required List<Grocery>? grocery,
    @JsonKey(name: "posts") required Posts? posts,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BrandNew with _$BrandNew {
  const factory BrandNew({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "price") required String? price,
    required String image,
  }) = _BrandNew;

  factory BrandNew.fromJson(Map<String, dynamic> json) =>
      _$BrandNewFromJson(json);
}

@freezed
class Posts with _$Posts {
  const factory Posts({
    @JsonKey(name: "current_page") required int? currentPage,
    @JsonKey(name: "data") required List<BrandNew> data,
    @JsonKey(name: "first_page_url") required String? firstPageUrl,
    @JsonKey(name: "from") required int? from,
    @JsonKey(name: "last_page") required int? lastPage,
    @JsonKey(name: "last_page_url") required String? lastPageUrl,
    @JsonKey(name: "links") required List<Link> links,
    @JsonKey(name: "next_page_url") required dynamic nextPageUrl,
    @JsonKey(name: "path") required String? path,
    @JsonKey(name: "per_page") required int? perPage,
    @JsonKey(name: "prev_page_url") required dynamic prevPageUrl,
    @JsonKey(name: "to") required int? to,
    @JsonKey(name: "total") required int? total,
  }) = _Posts;

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "url") required String? url,
    @JsonKey(name: "label") required String? label,
    @JsonKey(name: "active") required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
class Grocery with _$Grocery {
  const factory Grocery({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    // @JsonKey(name: "category_id") required String? categoryId,
    // @JsonKey(name: "post_type_id") required String? postTypeId,
    @JsonKey(name: "title") required String? title,
    // @JsonKey(name: "description") required String? description,
    @JsonKey(name: "price") required String? price,
    required String? image,
  }) = _Grocery;
  factory Grocery.fromJson(Map<String, dynamic> json) =>
      _$GroceryFromJson(json);
}

@freezed
class Used with _$Used {
  const factory Used({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    // @JsonKey(name: "category_id") required String? categoryId,
    // @JsonKey(name: "post_type_id") required String? postTypeId,
    @JsonKey(name: "title") required String? title,
    // @JsonKey(name: "description") required String? description,
    @JsonKey(name: "price") required String? price,
    required String? image,
  }) = _Used;
  factory Used.fromJson(Map<String, dynamic> json) => _$UsedFromJson(json);
}

@freezed
class Services with _$Services {
  const factory Services({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    // @JsonKey(name: "category_id") required String? categoryId,
    // @JsonKey(name: "post_type_id") required String? postTypeId,
    @JsonKey(name: "title") required String? title,
    // @JsonKey(name: "description") required String? description,
    @JsonKey(name: "price") required String? price,
    required String? image,
  }) = _Services;
  factory Services.fromJson(Map<String, dynamic> json) =>
      _$ServicesFromJson(json);
}

@freezed
class Jobs with _$Jobs {
  const factory Jobs({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    // @JsonKey(name: "category_id") required String? categoryId,
    // @JsonKey(name: "post_type_id") required String? postTypeId,
    @JsonKey(name: "title") required String? title,
    // @JsonKey(name: "description") required String? description,
    @JsonKey(name: "price") required String? price,
    required String? image,
  }) = _Jobs;
  factory Jobs.fromJson(Map<String, dynamic> json) => _$JobsFromJson(json);
}

@freezed
class Events with _$Events {
  const factory Events({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    // @JsonKey(name: "category_id") required String? categoryId,
    // @JsonKey(name: "post_type_id") required String? postTypeId,
    @JsonKey(name: "title") required String? title,
    // @JsonKey(name: "description") required String? description,
    @JsonKey(name: "price") required String? price,
    required String? image,
  }) = _Events;
  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}

@freezed
class B2B with _$B2B {
  const factory B2B({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    // @JsonKey(name: "category_id") required String? categoryId,
    // @JsonKey(name: "post_type_id") required String? postTypeId,
    @JsonKey(name: "title") required String? title,
    // @JsonKey(name: "description") required String? description,
    @JsonKey(name: "price") required String? price,
    required String? image,
  }) = _B2B;
  factory B2B.fromJson(Map<String, dynamic> json) => _$B2BFromJson(json);
}
