import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_comment_of_story.freezed.dart';
part 'list_comment_of_story.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'replies') List<CommentModel>? replies,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
