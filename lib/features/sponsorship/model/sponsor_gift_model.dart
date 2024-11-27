import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_gift_model.freezed.dart';
part 'sponsor_gift_model.g.dart';

@freezed
class SponsorGiftModel with _$SponsorGiftModel {
  const factory SponsorGiftModel({
    @JsonKey(name: 'data') SponsorGiftData? data,
  }) = _SponsorGiftModel;

  factory SponsorGiftModel.fromJson(Map<String, dynamic> json) =>
      _$SponsorGiftModelFromJson(json);
}

@freezed
class SponsorGiftData with _$SponsorGiftData {
  const factory SponsorGiftData({
    @JsonKey(name: 'banners') List<BannerModel>? banners,
    @JsonKey(name: 'gifts') List<GiftModel>? gifts,
  }) = _SponsorGiftData;

  factory SponsorGiftData.fromJson(Map<String, dynamic> json) =>
      _$SponsorGiftDataFromJson(json);
}


@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}

@freezed
class GiftModel with _$GiftModel {
  const factory GiftModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'discount_percentage') String? discountPercentage,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'worth') String? worth,
    @JsonKey(name: 'gift_qty') String? giftQty,
    @JsonKey(name: 'total_worth') String? totalWorth,
    @JsonKey(name: 'approved') String? approved,
    @JsonKey(name: 'time_frame') String? timeFrame,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'mileage') String? mileage,
    @JsonKey(name: 'mileage_count') String? mileageCount,
    @JsonKey(name: 'gift_qty_count') String? giftQtyCount,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _GiftModel;

  factory GiftModel.fromJson(Map<String, dynamic> json) =>
      _$GiftModelFromJson(json);
}
