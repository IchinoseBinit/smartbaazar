import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'vendor_card_model.freezed.dart';
part 'vendor_card_model.g.dart';


@freezed
class VendorCardResponse with _$VendorCardResponse {
  const factory VendorCardResponse({
    required VendorCardData? data,
    required String msg,
  }) = _VendorCardResponse;

  factory VendorCardResponse.fromJson(Map<String, dynamic> json) =>
      _$VendorCardResponseFromJson(json);
}

@freezed
class VendorCardData with _$VendorCardData {
  const factory VendorCardData({
        int? subscribed,

    required VendorCard? vendor_card,
    required List<Deal>? deals,
  }) = _VendorCardData;

  factory VendorCardData.fromJson(Map<String, dynamic> json) =>
      _$VendorCardDataFromJson(json);
}