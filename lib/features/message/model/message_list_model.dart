import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_list_model.freezed.dart';
part 'message_list_model.g.dart';

@freezed
class MessageListModel with _$MessageListModel {
  const factory MessageListModel({
    required bool? success,
    String? message,
    required MessageResult? result,
  }) = _MessageListModel;

  factory MessageListModel.fromJson(Map<String, dynamic> json) =>
      _$MessageListModelFromJson(json);
}

@freezed
class MessageResult with _$MessageResult {
  const factory MessageResult({
    required List<MessageData>? data,
    required PaginationLinks? links,
    required PaginationMeta? meta,
  }) = _MessageResult;

  factory MessageResult.fromJson(Map<String, dynamic> json) =>
      _$MessageResultFromJson(json);
}

@freezed
class MessageData with _$MessageData {
  const factory MessageData({
    required int? id,
    @JsonKey(name: 'thread_id')required String? threadId,
    @JsonKey(name: 'user_id')required String? userId,
    required String? body,
    String? filename,
  }) = _MessageData;

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
}

@freezed
class PaginationLinks with _$PaginationLinks {
  const factory PaginationLinks({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
}

@freezed
class PaginationMeta with _$PaginationMeta {
  const factory PaginationMeta({
    @JsonKey(name: 'current_page')required int? currentPage,
    required int? from,
     @JsonKey(name: 'last_page') required int? lastPage,
    required List<PageLink>? links,
    required String? path,
     @JsonKey(name: 'per_page')required String? perPage,
    required int? to,
    required int? total,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}

@freezed
class PageLink with _$PageLink {
  const factory PageLink({
    String? url,
    required String? label,
    required bool? active,
  }) = _PageLink;

  factory PageLink.fromJson(Map<String, dynamic> json) =>
      _$PageLinkFromJson(json);
}
