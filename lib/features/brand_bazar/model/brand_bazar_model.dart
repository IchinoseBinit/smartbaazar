import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_bazar_model.freezed.dart';
part 'brand_bazar_model.g.dart';

@freezed
class BrandBazarModel with _$BrandBazarModel {
  const factory BrandBazarModel({
    required Data data,
    required String msg,
  }) = _BrandBazarModel;

  factory BrandBazarModel.fromJson(Map<String, dynamic> json) =>
      _$BrandBazarModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "new_products") required List<dynamic>? newProducts,
    @JsonKey(name: "services") required List<dynamic>? services,
    @JsonKey(name: "jobs") required List<dynamic>? jobs,
    @JsonKey(name: "events") required List<dynamic>? events,
    @JsonKey(name: "grocery") required List<dynamic>? grocery,
    @JsonKey(name: "advertisements")
    required List<Advertisement>? advertisements,
    @JsonKey(name: "trand_banners") required List<TrendBanner>? trandBanners,
    @JsonKey(name: "brandbazarLogos")
    required List<BrandbazarLogo>? brandbazarLogos,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement({
    required String? id,
    required String? order,
    required String? status,
    required String? image,
    required String? link,
    @JsonKey(name: "created_at") required String? createdAt,
    @JsonKey(name: "updated_at") required String? updatedAt,
  }) = _Advertisement;

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);
}

@freezed
class TrendBanner with _$TrendBanner {
  const factory TrendBanner({
    required String? id,
    required String? bazar,
    required String? image,
    @JsonKey(name: "created_at") required String? createdAt,
    @JsonKey(name: "updated_at") required String? updatedAt,
  }) = _TrendBanner;

  factory TrendBanner.fromJson(Map<String, dynamic> json) =>
      _$TrendBannerFromJson(json);
}

@freezed
class BrandbazarLogo with _$BrandbazarLogo {
  const factory BrandbazarLogo({
    @JsonKey(name: "brand_logo") required String? brandLogo,
    @JsonKey(name: "user_id") required String? userId,
  }) = _BrandbazarLogo;

  factory BrandbazarLogo.fromJson(Map<String, dynamic> json) =>
      _$BrandbazarLogoFromJson(json);
}
