import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/home/api/buy_or_now_provider.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_search_model.dart';

part 'vendor_search_model.freezed.dart';
part 'vendor_search_model.g.dart';

@freezed
class VendorProductSearchResponse with _$VendorProductSearchResponse {
  factory VendorProductSearchResponse({
    VendorPost? vendorPost, // Changed to camelCase
  }) = _VendorProductSearchResponse;

  factory VendorProductSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorProductSearchResponseFromJson(json);
}

@freezed
class VendorPost with _$VendorPost {
  factory VendorPost({
    @JsonKey(name: 'current_page') int? currentPage,
    List<PostResult>? data,
  }) = _VendorPost;

  factory VendorPost.fromJson(Map<String, dynamic> json) => _$VendorPostFromJson(json);
}