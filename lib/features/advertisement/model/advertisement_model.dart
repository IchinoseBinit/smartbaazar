import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement_model.freezed.dart';
part 'advertisement_model.g.dart';

@freezed
class AdvertisementResponse with _$AdvertisementResponse {
  const factory AdvertisementResponse({
    required Data data,
    required String msg,
  }) = _AdvertisementResponse;

  factory AdvertisementResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<Ad> ads,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Ad with _$Ad {
  const factory Ad({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String image,
    required String link,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Ad;

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}
