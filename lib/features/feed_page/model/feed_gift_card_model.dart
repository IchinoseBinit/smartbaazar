import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_gift_card_model.freezed.dart';
part 'feed_gift_card_model.g.dart';

@freezed
class FeedGiftCardModel with _$FeedGiftCardModel {
  const factory FeedGiftCardModel({
    @JsonKey(name: 'buy_or_win_card') List<BuyOrWinCard>? buyOrWinCard,
    @JsonKey(name: 'userDetail') UserDetail? userDetail,
  }) = _FeedGiftCardModel;

  factory FeedGiftCardModel.fromJson(Map<String, dynamic> json) => _$FeedGiftCardModelFromJson(json);
}

@freezed
class BuyOrWinCard with _$BuyOrWinCard {
  const factory BuyOrWinCard({
    @JsonKey(name: 'vendor_image') String? vendorImage,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'worth') String? worth,
    @JsonKey(name: 'wow') String? wow,
    @JsonKey(name: 'gift_qty') String? giftQty,
    @JsonKey(name: 'winners') int? winners,
  }) = _BuyOrWinCard;

  factory BuyOrWinCard.fromJson(Map<String, dynamic> json) => _$BuyOrWinCardFromJson(json);
}

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'vendor_image') String? vendorImage,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
    @JsonKey(name: 'membership_status') String? membershipStatus,
    @JsonKey(name: 'membership_id') String? membershipId,
    @JsonKey(name: 'membership_title') String? membershipTitle,
    @JsonKey(name: 'membership_color') String? membershipColor,
    @JsonKey(name: 'storyCount') int? storyCount,
    @JsonKey(name: 'subscribers') int? subscribers,
    @JsonKey(name: 'livePrizes') int? livePrizes,
    @JsonKey(name: 'total_contribution') String? totalContribution,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);
}
