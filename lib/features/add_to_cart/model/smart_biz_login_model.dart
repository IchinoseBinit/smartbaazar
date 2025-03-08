import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_biz_login_model.freezed.dart';
part 'smart_biz_login_model.g.dart';

@freezed
class BizLoginResponse with _$BizLoginResponse {
  const factory BizLoginResponse({
    String? responseCode,
    String? message,
    int? totalSize,
    int? limit,
    int? offset,
    BizLoginData? data,
  }) = _BizLoginResponse;

  factory BizLoginResponse.fromJson(Map<String, dynamic> json) => _$BizLoginResponseFromJson(json);
}

@freezed
class BizLoginData with _$BizLoginData {
  const factory BizLoginData({
    String? token,
    int? isActive,
    int? isPhoneVerified,
    int? isProfileVerified,
  }) = _BizLoginData;

  factory BizLoginData.fromJson(Map<String, dynamic> json) => _$BizLoginDataFromJson(json);
}
