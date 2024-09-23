import 'package:freezed_annotation/freezed_annotation.dart';

part'terms_condition_model.freezed.dart';
part'terms_condition_model.g.dart';

@freezed
class TermsConditionsModel with _$TermsConditionsModel {
  const factory TermsConditionsModel({
    required bool success,
    required String? message,
    required Result result,
  }) = _TermsConditionsModel;

  factory TermsConditionsModel.fromJson(Map<String, dynamic> json) => _$TermsConditionsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required int id,
    required int? parentId,
    required String type,
    required String name,
    // required String slug,
    // required String? picture,
    required String title,
    required String content,
    // required String? externalLink,
    // required String? nameColor,
    // required String? titleColor,
    // required String targetBlank,
    // required String seoTitle,
    // required String seoDescription,
    // required String seoKeywords,
    // required String excludedFromFooter,
    // required String active,
    // required String lft,
    // required String rgt,
    // required String depth,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
