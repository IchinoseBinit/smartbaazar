import 'package:freezed_annotation/freezed_annotation.dart';
part 'fields_model.freezed.dart';
part 'fields_model.g.dart';

@freezed
class FieldsResponse with _$FieldsResponse {
  factory FieldsResponse({
    required bool success,
    String? message,
    required List<FieldData> result, // Change Map to List
  }) = _FieldsResponse;

  factory FieldsResponse.fromJson(Map<String, dynamic> json) => _$FieldsResponseFromJson(json);
}


@freezed
class FieldData with _$FieldData {
  factory FieldData({
    required int id,
    @JsonKey(name: 'belongs_to') required String belongsTo,
    required String name,
    required String type,
    @JsonKey(name: 'default_value') String? defaultValue,
    required String required,
    @JsonKey(name: 'use_as_filter') required String useAsFilter,
    required List<Option> options,
  }) = _FieldData;

  factory FieldData.fromJson(Map<String, dynamic> json) => _$FieldDataFromJson(json);
}

@freezed
class Option with _$Option {
  factory Option({
    required int id,
    @JsonKey(name: 'field_id') required String fieldId,
    required String value,
    @JsonKey(name: 'parent_id') int? parentId,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
