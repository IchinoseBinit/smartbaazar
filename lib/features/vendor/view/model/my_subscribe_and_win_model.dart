import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_subscribe_and_win_model.freezed.dart';
part 'my_subscribe_and_win_model.g.dart';

@freezed
class MySubscribeAndWinModel with _$MySubscribeAndWinModel {
  const factory MySubscribeAndWinModel({
    @JsonKey(name: 'content3') List<ContentBlock>? content3,
    @JsonKey(name: 'content4') List<ContentBlock>? content4,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'gifts') List<dynamic>? gifts,
    @JsonKey(name: 'sponsor_vendors') List<SponsorVendor>? sponsorVendors,
    @JsonKey(name: 'total_woth') int? totalWoth,
    @JsonKey(name: 'gift_count') int? giftCount,
    @JsonKey(name: 'winners') List<dynamic>? winners,
    @JsonKey(name: 'scratchs') List<Scratch>? scratchs,
  }) = _MySubscribeAndWinModel;

  factory MySubscribeAndWinModel.fromJson(Map<String, dynamic> json) =>
      _$MySubscribeAndWinModelFromJson(json);
}

@freezed
class ContentBlock with _$ContentBlock {
  const factory ContentBlock({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
  }) = _ContentBlock;

  factory ContentBlock.fromJson(Map<String, dynamic> json) =>
      _$ContentBlockFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class SponsorVendor with _$SponsorVendor {
  const factory SponsorVendor({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'username') String? username,
  }) = _SponsorVendor;

  factory SponsorVendor.fromJson(Map<String, dynamic> json) =>
      _$SponsorVendorFromJson(json);
}

@freezed
class Scratch with _$Scratch {
  const factory Scratch({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'bazar') String? bazar,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _Scratch;

  factory Scratch.fromJson(Map<String, dynamic> json) =>
      _$ScratchFromJson(json);
}
