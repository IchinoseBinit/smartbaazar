import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
class FAQModel with _$FAQModel {
  const factory FAQModel({
    required bool success,
    required String? message,
    required FAQResult result,
  }) = _FAQModel;

  factory FAQModel.fromJson(Map<String, dynamic> json) => _$FAQModelFromJson(json);
}

@freezed
class FAQResult with _$FAQResult {
  const factory FAQResult({
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
  }) = _FAQResult;

  factory FAQResult.fromJson(Map<String, dynamic> json) => _$FAQResultFromJson(json);
}
