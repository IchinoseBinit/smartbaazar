import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'vendor_all_products_model.freezed.dart';
part 'vendor_all_products_model.g.dart';


@freezed
class VendorAllProductsResponse with _$VendorAllProductsResponse {
  const factory VendorAllProductsResponse({
    required VendorProfileAllProductsData data,
    required String msg,
  }) = _VendorAllProductsResponse;

  factory VendorAllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorAllProductsResponseFromJson(json);
}

@freezed
class VendorProfileAllProductsData with _$VendorProfileAllProductsData {
  const factory VendorProfileAllProductsData({
List<BrandNewModel>? all_products,    
  }) = _VendorProfileAllProductsData;

  factory VendorProfileAllProductsData.fromJson(Map<String, dynamic> json) =>
      _$VendorProfileAllProductsDataFromJson(json);
}