import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    required LoginDataResult result,
    required LoginDataExtra extra,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}

@freezed
class LoginDataResult with _$LoginDataResult {
  const factory LoginDataResult({
    required int id,
    required String name,
    required String username,
    required String photo_url,
    required String gender_id,
    required String photo,
    required String phone,
    required String email,
    required String dob,
    required String gender,
  }) = _LoginDataResult;

  factory LoginDataResult.fromJson(Map<String, dynamic> json) =>
      _$LoginDataResultFromJson(json);
}

@freezed
class LoginDataExtra with _$LoginDataExtra {
  const factory LoginDataExtra({
    required String authToken,
  }) = _LoginDataExtra;

  factory LoginDataExtra.fromJson(Map<String, dynamic> json) =>
      _$LoginDataExtraFromJson(json);
}
