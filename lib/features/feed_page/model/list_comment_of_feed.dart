import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_comment_of_feed.freezed.dart';
part 'list_comment_of_feed.g.dart';

@freezed
class FeedCommentModel with _$FeedCommentModel {
  factory FeedCommentModel({
    String? id,
    String? app_feed_id,
    String? user_id,
    String? parent_id,
    String? comment,
    String? created_at,
    String? photo,
    String? name,
  }) = _FeedCommentModel;

  factory FeedCommentModel.fromJson(Map<String, dynamic> json) =>
      _$FeedCommentModelFromJson(json);
}
