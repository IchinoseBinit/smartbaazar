import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'vendor_all_products_model.freezed.dart';
part 'vendor_all_products_model.g.dart';

@freezed
class VendorAllProductsResponse with _$VendorAllProductsResponse {
  const factory VendorAllProductsResponse({
    required VendorProfileAllProductsData? data,
    required String? msg,
  }) = _VendorAllProductsResponse;

  factory VendorAllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorAllProductsResponseFromJson(json);
}

@freezed
class VendorProfileAllProductsData with _$VendorProfileAllProductsData {
  const factory VendorProfileAllProductsData({
    required AllProductsWrapper? all_products, // Wrapped inside another class
  }) = _VendorProfileAllProductsData;

  factory VendorProfileAllProductsData.fromJson(Map<String, dynamic> json) =>
      _$VendorProfileAllProductsDataFromJson(json);
}

@freezed
class AllProductsWrapper with _$AllProductsWrapper {
  const factory AllProductsWrapper({
    required List<VendorAllproductsModel>? data,  // API returns data inside this object
  }) = _AllProductsWrapper;

  factory AllProductsWrapper.fromJson(Map<String, dynamic> json) =>
      _$AllProductsWrapperFromJson(json);
}


@freezed
class VendorAllproductsModel with _$VendorAllproductsModel {
  const factory VendorAllproductsModel({
    required String id,
    required String country_code,
    required String user_id,
    required String category_id,
    required String post_type_id,
    required String title,
    String? story_display_days,
    String? b2b_pricing,
    required String image,
    required String post_type,
    required String username,
    String? offers,
    String? price,
    String? wow,
    required String? city,
    required int? similarVendorProfileProductCount,
    required String? discounted_price,
    required double? shortestDistance,
    required int? commentcount,
    required int? discount_percentage,
    required int? avg_rating,
    required UserDetailsModel? userdetails,
      final List<FezzedSaved>? savedByLoggedUser,

  }) = _VendorAllproductsModel;

  factory VendorAllproductsModel.fromJson(Map<String, dynamic> json) =>
      _$VendorAllproductsModelFromJson(json);
}