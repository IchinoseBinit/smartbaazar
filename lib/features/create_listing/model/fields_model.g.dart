// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FieldsResponseImpl _$$FieldsResponseImplFromJson(Map<String, dynamic> json) =>
    _$FieldsResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      result: (json['result'] as List<dynamic>)
          .map((e) => FieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FieldsResponseImplToJson(
        _$FieldsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$FieldDataImpl _$$FieldDataImplFromJson(Map<String, dynamic> json) =>
    _$FieldDataImpl(
      id: (json['id'] as num).toInt(),
      belongsTo: json['belongs_to'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      max: (json['max'] as num?)?.toInt(),
      defaultValue: json['default_value'] as String?,
      required: json['required'] as String,
      useAsFilter: json['use_as_filter'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FieldDataImplToJson(_$FieldDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'belongs_to': instance.belongsTo,
      'name': instance.name,
      'type': instance.type,
      'max': instance.max,
      'default_value': instance.defaultValue,
      'required': instance.required,
      'use_as_filter': instance.useAsFilter,
      'options': instance.options,
    };

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      id: (json['id'] as num).toInt(),
      fieldId: json['field_id'] as String,
      value: json['value'] as String,
      parentId: (json['parent_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_id': instance.fieldId,
      'value': instance.value,
      'parent_id': instance.parentId,
    };
