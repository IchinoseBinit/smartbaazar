import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'vendor_live_prizes_model.freezed.dart';
part 'vendor_live_prizes_model.g.dart';

@freezed
class VendorLivePrizePostResponse with _$VendorLivePrizePostResponse {
  const factory VendorLivePrizePostResponse({
    required VendorLivePrizePostData data, // ✅ Fixed Class Name
    required String msg,
  }) = _VendorLivePrizePostResponse;

  factory VendorLivePrizePostResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorLivePrizePostResponseFromJson(json);
}

@freezed
class VendorLivePrizePostData with _$VendorLivePrizePostData { // ✅ Fixed Class Name
  const factory VendorLivePrizePostData({
    required List<FeedPost>? live_prizes,
    required List<FeedPost> feedPosts,
  }) = _VendorLivePrizePostData;

  factory VendorLivePrizePostData.fromJson(Map<String, dynamic> json) =>
      _$VendorLivePrizePostDataFromJson(json);
}
