import 'package:freezed_annotation/freezed_annotation.dart';

part 'enquire_model.freezed.dart';
part 'enquire_model.g.dart';

@freezed
class EnquireResponse with _$EnquireResponse {
  const factory EnquireResponse({
    required EnquireData? data,
    required String? msg,
  }) = _EnquireResponse;

  factory EnquireResponse.fromJson(Map<String, dynamic> json) =>
      _$EnquireResponseFromJson(json);
}

@freezed
class EnquireData with _$EnquireData {
  const factory EnquireData({
    required int? enquire,
    required String? vendor_id,
    required Thread? thread,
  }) = _EnquireData;

  factory EnquireData.fromJson(Map<String, dynamic> json) =>
      _$EnquireDataFromJson(json);
}

@freezed
class Thread with _$Thread {
  const factory Thread({
    required String? id,
    required String? post_id,
    required String? subject,
  }) = _Thread;

  factory Thread.fromJson(Map<String, dynamic> json) => _$ThreadFromJson(json);
}
