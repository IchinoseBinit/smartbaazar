import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';

part 'trending_card_model.freezed.dart';
part 'trending_card_model.g.dart';

@freezed
class TrendingResponse with _$TrendingResponse {
  const factory TrendingResponse({
    required List<TrendingVendor> trending,
  }) = _TrendingResponse;

  factory TrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingResponseFromJson(json);
}

@freezed
class TrendingVendor with _$TrendingVendor {
  const factory TrendingVendor({
    required String? id,
    required String? name,
    required String? username,
    @JsonKey(name: 'membership_plan_id') required String? membershipPlanId,
    @JsonKey(name: 'membership_status') required String? membershipStatus,
    required String? photo,
    required String? phone,
    @JsonKey(name: 'branch_location') required String? branchLocation,
    @JsonKey(name: 'nearestBranch') dynamic nearestBranch,
   required TrendingVendorCard? vendor_card,
  }) = _TrendingVendor;

  factory TrendingVendor.fromJson(Map<String, dynamic> json) => _$TrendingVendorFromJson(json);
}


@freezed
class TrendingVendorCard with _$TrendingVendorCard {
  const factory TrendingVendorCard({
    String? name,
    String? photo,
    String? longitude,
    String? latitude,
    int? subscribers,
    String? phone,
    String? profile_url,
    int? storycount,
    int? prize_worth,
    bool? has_sponsored_gifts,
    String? nearestbranch,
    String? membership_id,
    String? membership_title,
    String? membership_color,
    int? connection,
    @JsonKey(name: 'subscribed') int? subscribed,  // Keep only this one
  }) = _TrendingVendorCard;

  factory TrendingVendorCard.fromJson(Map<String, dynamic> json) =>
      _$TrendingVendorCardFromJson(json);
}
