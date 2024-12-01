import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_model.freezed.dart';
part 'refresh_token_model.g.dart';

@freezed
class RefreshTokenResponse with _$RefreshTokenResponse {
  factory RefreshTokenResponse({
    required bool success,
    required String authToken,
    required String refreshToken,
    required String tokenType,
  }) = _RefreshTokenResponse;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseFromJson(json);
}
