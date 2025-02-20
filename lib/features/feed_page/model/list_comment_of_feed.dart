import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_comment_of_feed.freezed.dart';
part 'list_comment_of_feed.g.dart';

@freezed
class FeedCommentModel with _$FeedCommentModel {
  factory FeedCommentModel({
    String? id,
    String? appFeedId,
    String? userId,
    String? parentId,
    String? comment,
    String? createdAt,
    String? photo,
    String? name,
  }) = _FeedCommentModel;

  factory FeedCommentModel.fromJson(Map<String, dynamic> json) =>
      _$FeedCommentModelFromJson(json);
}
