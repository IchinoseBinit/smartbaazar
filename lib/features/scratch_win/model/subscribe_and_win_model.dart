import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe_and_win_model.freezed.dart';
part 'subscribe_and_win_model.g.dart';

@freezed
class SubscribeAndWinModel with _$SubscribeAndWinModel {
  const factory SubscribeAndWinModel({
    @JsonKey(name: 'content3') List<Content>? content3,
    @JsonKey(name: 'content4') List<Content>? content4,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'gifts') List<Gift>? gifts,
    @JsonKey(name: 'sponsor_vendors') List<SponsorVendor>? sponsorVendors,
    @JsonKey(name: 'total_worth') int? totalWorth,
    @JsonKey(name: 'gift_count') int? giftCount,
    @JsonKey(name: 'winners') List<Winner>? winners,
  }) = _SubscribeAndWinModel;

  factory SubscribeAndWinModel.fromJson(Map<String, dynamic> json) =>
      _$SubscribeAndWinModelFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);
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
class Gift with _$Gift {
  const factory Gift({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'gift_id') String? giftId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'gifts') GiftDetails? gifts,
    @JsonKey(name: 'vendors') Vendor? vendors,
  }) = _Gift;

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}

@freezed
class GiftDetails with _$GiftDetails {
  const factory GiftDetails({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'worth') String? worth,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _GiftDetails;

  factory GiftDetails.fromJson(Map<String, dynamic> json) =>
      _$GiftDetailsFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
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
class Winner with _$Winner {
  const factory Winner({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'gift_id') String? giftId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'gift_worth') GiftWorth? giftWorth,
    @JsonKey(name: 'name') Name? name,
  }) = _Winner;

  factory Winner.fromJson(Map<String, dynamic> json) => _$WinnerFromJson(json);
}

@freezed
class GiftWorth with _$GiftWorth {
  const factory GiftWorth({
    @JsonKey(name: 'worth') String? worth,
  }) = _GiftWorth;

  factory GiftWorth.fromJson(Map<String, dynamic> json) => _$GiftWorthFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    @JsonKey(name: 'name') String? name,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
