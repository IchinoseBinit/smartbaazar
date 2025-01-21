import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_model.freezed.dart';
 part 'business_model.g.dart';


@freezed
class Business with _$Business {
  factory Business({
    required String vendorId,
    required String vendorName,
    // required String vendorUsername,
    // required String logo,
    // String? location,
    // required String contact,
    // required String totalConnections,
    // required String dealsCircle,
    // required String storyCount,
    // required String totalPrizeWorth,
    // required bool hasSponsoredGifts,
    // required String membershipId,
    // required String membershipTitle,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}