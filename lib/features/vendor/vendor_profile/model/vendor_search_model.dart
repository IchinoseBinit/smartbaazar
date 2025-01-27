import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';

part 'vendor_search_model.freezed.dart';
part 'vendor_search_model.g.dart';

@freezed
class VendorProductSearchResponse with _$VendorProductSearchResponse {
  factory VendorProductSearchResponse({
    required Vdata? data,
  }) = _VendorProductSearchResponse;

  factory VendorProductSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorProductSearchResponseFromJson(json);
}
@freezed
class Vdata with _$Vdata {
  const factory Vdata({
    required VPosts? Posts,
  }) = _Vdata;

  factory Vdata.fromJson(Map<String, dynamic> json) => _$VdataFromJson(json);
}

@freezed
class VPosts with _$VPosts {
  const factory VPosts({
    @JsonKey(name: 'current_page') required int currentPage,
    required List<PostResult> data,
  }) = _VPosts;

  factory VPosts.fromJson(Map<String, dynamic> json) => _$VPostsFromJson(json);
}

