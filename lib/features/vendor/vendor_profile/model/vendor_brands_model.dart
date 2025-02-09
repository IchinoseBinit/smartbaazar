import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'vendor_brands_model.freezed.dart';
part 'vendor_brands_model.g.dart';

@freezed
class VendorBrandResponse with _$VendorBrandResponse {
  const factory VendorBrandResponse({
    required VendorBrandData? data, // Made nullable
    required String? msg, // Made nullable
  }) = _VendorBrandResponse;

  factory VendorBrandResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorBrandResponseFromJson(json);
}

@freezed
class VendorBrandData with _$VendorBrandData {
  const factory VendorBrandData({
    required VendorAbout? vendor_about,
    required List<BrandNewModel>? brandnew, // Made nullable
    List<BrandNewModel>? used, // Made nullable
    List<BrandNewModel>? services, // Made nullable
    List<BrandNewModel>? jobs, // Made nullable
    List<BrandNewModel>? events, // Made nullable
    List<BrandNewModel>? b2b, // Made nullable
    List<BrandNewModel>? grocery, // Made nullable
    required List<Deal>? deals, // Made nullable
  }) = _VendorBrandData;

  factory VendorBrandData.fromJson(Map<String, dynamic> json) =>
      _$VendorBrandDataFromJson(json);
}
