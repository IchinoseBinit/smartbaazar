import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_policy_model.freezed.dart';
part 'privacy_policy_model.g.dart';

@freezed
class PrivacyPolicyModel with _$PrivacyPolicyModel {
  factory PrivacyPolicyModel({
    required String title,
    required String content,
    
  }) = _PrivacyPolicyModel;

  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) => _$PrivacyPolicyModelFromJson(json);
}