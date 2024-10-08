import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_thread_model.freezed.dart';
part 'message_thread_model.g.dart';

@freezed
class MessageThreadModel with _$MessageThreadModel {
  const factory MessageThreadModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'result') Result? result,
  }) = _MessageThreadModel;

  factory MessageThreadModel.fromJson(Map<String, dynamic> json) =>
      _$MessageThreadModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: 'data') List<ThreadData>? data,
    @JsonKey(name: 'links') Links? links,
    @JsonKey(name: 'meta') Meta? meta,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ThreadData with _$ThreadData {
  const factory ThreadData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'post_id') String? postId,
    @JsonKey(name: 'subject') String? subject,
  }) = _ThreadData;

  factory ThreadData.fromJson(Map<String, dynamic> json) =>
      _$ThreadDataFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    @JsonKey(name: 'first') String? first,
    @JsonKey(name: 'last') String? last,
    @JsonKey(name: 'prev') String? prev,
    @JsonKey(name: 'next') String? next,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'from') int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'links') List<MetaLink>? links,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') String? perPage,
    @JsonKey(name: 'to') int? to,
    @JsonKey(name: 'total') int? total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class MetaLink with _$MetaLink {
  const factory MetaLink({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'active') bool? active,
  }) = _MetaLink;

  factory MetaLink.fromJson(Map<String, dynamic> json) => _$MetaLinkFromJson(json);
}
