import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'reply_message_model.freezed.dart';
part 'reply_message_model.g.dart';

@freezed
class ReplyMessageModel with _$ReplyMessageModel {
  const factory ReplyMessageModel({
    required bool success,
    String? message, // nullable in case message is not returned
    required ReplyResult result,
  }) = _ReplyMessageModel;

  factory ReplyMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ReplyMessageModelFromJson(json);
}

@freezed
class ReplyResult with _$ReplyResult {
  const factory ReplyResult({
    required int id,
    @JsonKey(name: 'post_id') required String postId,
    required String subject,
  }) = _ReplyResult;

  factory ReplyResult.fromJson(Map<String, dynamic> json) =>
      _$ReplyResultFromJson(json);
}
