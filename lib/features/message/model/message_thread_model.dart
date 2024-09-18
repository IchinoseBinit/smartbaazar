import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message_thread_model.freezed.dart';
part 'message_thread_model.g.dart';

@freezed
class MessageThreadModel with _$MessageThreadModel {
  const factory MessageThreadModel({
    required bool success,
    String? message,
    required Result result,
  }) = _MessageThreadModel;

  factory MessageThreadModel.fromJson(Map<String, dynamic> json) =>
      _$MessageThreadModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<ThreadData>? data,
    required Links? links,
    required Meta? meta,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ThreadData with _$ThreadData {
  const factory ThreadData({
    required int? id,
     @JsonKey(name: 'post_id')required String? postId,
    required String? subject,
  }) = _ThreadData;

  factory ThreadData.fromJson(Map<String, dynamic> json) =>
      _$ThreadDataFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    required String? first,
    required String? last,
    String? prev,
    String? next,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
     @JsonKey(name: 'current_page')required int? currentPage,
    required int? from,
     @JsonKey(name: 'last_page')required int? lastPage,
    required List<PageLinks>? links,
    required String? path,
     @JsonKey(name: 'per_page')required String? perPage,
    required int? to,
    required int? total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class PageLinks with _$PageLinks {
  const factory PageLinks({
    String? url,
    required String? label,
    required bool? active,
  }) = _PageLinks;

  factory PageLinks.fromJson(Map<String, dynamic> json) =>
      _$PageLinksFromJson(json);
}
