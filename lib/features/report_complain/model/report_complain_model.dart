import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_complain_model.freezed.dart';
part 'report_complain_model.g.dart';

@freezed
class ReportComplainModel with _$ReportComplainModel {
  const factory ReportComplainModel({
    @JsonKey(name: 'report_type_id') required String reportTypeId,
    required String email,
    required String message,
    @JsonKey(name: 'captcha_key') String? captchaKey,
  }) = _ReportComplainModel;

  factory ReportComplainModel.fromJson(Map<String, dynamic> json) =>
      _$ReportComplainModelFromJson(json);
}
