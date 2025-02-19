import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'brand_bazar_model.freezed.dart';
part 'brand_bazar_model.g.dart';

@freezed
class BrandBazarModel with _$BrandBazarModel {
  const factory BrandBazarModel({
     Data? data,
    required String msg,
  }) = _BrandBazarModel;

  factory BrandBazarModel.fromJson(Map<String, dynamic> json) =>
      _$BrandBazarModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<BrandNewModel> new_products,
    required List<Advertisement> advertisements,
    required List<TrandBanner> trand_banners,
    required List<BrandbazarLogo> brandbazarLogos,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class TrandBanner with _$TrandBanner {
  const factory TrandBanner({
    required String id,
    required String image,
    required String bazar,
  }) = _TrandBanner;

  factory TrandBanner.fromJson(Map<String, dynamic> json) =>
      _$TrandBannerFromJson(json);
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
