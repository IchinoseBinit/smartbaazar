import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_scratch_model.freezed.dart';
part 'lottery_scratch_model.g.dart';

@freezed
class GiftResponseModel with _$GiftResponseModel {
  factory GiftResponseModel({
    LotteryData? data,
    String? msg,
  }) = _GiftResponseModel;

  factory GiftResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GiftResponseModelFromJson(json);
}

@freezed
class LotteryData with _$LotteryData {
  factory LotteryData({
    TotalParticipants? total_participants,
    GiftName? user_name,
    int? status,
    dynamic banners,
    GiftGot? gifts,
    String? message,
  }) = _LotteryData;

  factory LotteryData.fromJson(Map<String, dynamic> json) => _$LotteryDataFromJson(json);
}

@freezed
class TotalParticipants with _$TotalParticipants {
  factory TotalParticipants({
    String? total,
  }) = _TotalParticipants;

  factory TotalParticipants.fromJson(Map<String, dynamic> json) =>
      _$TotalParticipantsFromJson(json);
}

@freezed
class GiftName with _$GiftName {
  factory GiftName({
    String? username,
    String? name,
    String? email,
    String? link,
  }) = _GiftName;

  factory GiftName.fromJson(Map<String, dynamic> json) =>
      _$GiftNameFromJson(json);
}

@freezed
class GiftGot with _$GiftGot {
  factory GiftGot({
    String? id,
    String? user_id,
    String? post_id,
    String? name,
    String? discount_percentage,
    String? image,
    String? worth,
    String? gift_qty,
    String? total_worth,
    String? approved,
    String? time_frame,
    String? status,
    String? mileage,
    String? mileage_count,
    String? gift_qty_count,
    String? created_at,
    String? updated_at,
  }) = _GiftGot;

  factory GiftGot.fromJson(Map<String, dynamic> json) => _$GiftGotFromJson(json);
}
