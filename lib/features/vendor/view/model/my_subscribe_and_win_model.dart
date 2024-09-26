import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_subscribe_and_win_model.freezed.dart';
part 'my_subscribe_and_win_model.g.dart';

@freezed
class MySubscribeAndWinModel with _$MySubscribeAndWinModel {
  factory MySubscribeAndWinModel({
    @JsonKey(name: 'content3') List<Content3>? content3,
    @JsonKey(name: 'content4') List<Content4>? content4,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'gifts') List<Gift>? gifts,
    @JsonKey(name: 'sponsor_vendors') List<SponsorVendor>? sponsorVendors,
    @JsonKey(name: 'total_woth') int? totalWorth,
    @JsonKey(name: 'gift_count') int? giftCount,
    @JsonKey(name: 'winners') List<Winner>? winners,
    @JsonKey(name: 'scratchs') List<Scratch>? scratches,
  }) = _MySubscribeAndWinModel;

  factory MySubscribeAndWinModel.fromJson(Map<String, dynamic> json) =>
      _$MySubscribeAndWinModelFromJson(json);
}

@freezed
class Content3 with _$Content3 {
  factory Content3({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
  }) = _Content3;

  factory Content3.fromJson(Map<String, dynamic> json) =>
      _$Content3FromJson(json);
}

@freezed
class Content4 with _$Content4 {
  factory Content4({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
  }) = _Content4;

  factory Content4.fromJson(Map<String, dynamic> json) =>
      _$Content4FromJson(json);
}

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Gift with _$Gift {
  factory Gift({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'gift_id') String? giftId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'gifts') GiftDetails? giftDetails,
    @JsonKey(name: 'vendors') Vendor? vendor,
  }) = _Gift;

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}

@freezed
class GiftDetails with _$GiftDetails {
  factory GiftDetails({
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
  factory Vendor({
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class SponsorVendor with _$SponsorVendor {
  factory SponsorVendor({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'username') String? username,
  }) = _SponsorVendor;

  factory SponsorVendor.fromJson(Map<String, dynamic> json) =>
      _$SponsorVendorFromJson(json);
}

@freezed
class Winner with _$Winner {
  factory Winner({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'gift_id') String? giftId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'gift_worth') GiftWorth? giftWorth,
    @JsonKey(name: 'name') WinnerName? name,
  }) = _Winner;

  factory Winner.fromJson(Map<String, dynamic> json) => _$WinnerFromJson(json);
}

@freezed
class GiftWorth with _$GiftWorth {
  factory GiftWorth({
    @JsonKey(name: 'worth') String? worth,
  }) = _GiftWorth;

  factory GiftWorth.fromJson(Map<String, dynamic> json) =>
      _$GiftWorthFromJson(json);
}

@freezed
class WinnerName with _$WinnerName {
  factory WinnerName({
    @JsonKey(name: 'name') String? name,
  }) = _WinnerName;

  factory WinnerName.fromJson(Map<String, dynamic> json) =>
      _$WinnerNameFromJson(json);
}

@freezed
class Scratch with _$Scratch {
  factory Scratch({
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
