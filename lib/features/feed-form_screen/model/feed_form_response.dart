import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_form_response.freezed.dart';
part 'feed_form_response.g.dart';

@freezed
class FeedFormResponseModel with _$FeedFormResponseModel {
  const factory FeedFormResponseModel({
    required bool data,
    required String msg,
  }) = _FeedFormResponseModel;

  factory FeedFormResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FeedFormResponseModelFromJson(json);
}
