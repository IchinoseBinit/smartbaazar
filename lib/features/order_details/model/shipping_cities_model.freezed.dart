// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_cities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingCitiesModel _$ShippingCitiesModelFromJson(Map<String, dynamic> json) {
  return _ShippingCitiesModel.fromJson(json);
}

/// @nodoc
mixin _$ShippingCitiesModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_place_name")
  String? get actualPlaceName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingCitiesModelCopyWith<ShippingCitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingCitiesModelCopyWith<$Res> {
  factory $ShippingCitiesModelCopyWith(
          ShippingCitiesModel value, $Res Function(ShippingCitiesModel) then) =
      _$ShippingCitiesModelCopyWithImpl<$Res, ShippingCitiesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "actual_place_name") String? actualPlaceName});
}

/// @nodoc
class _$ShippingCitiesModelCopyWithImpl<$Res, $Val extends ShippingCitiesModel>
    implements $ShippingCitiesModelCopyWith<$Res> {
  _$ShippingCitiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? actualPlaceName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPlaceName: freezed == actualPlaceName
          ? _value.actualPlaceName
          : actualPlaceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingCitiesModelImplCopyWith<$Res>
    implements $ShippingCitiesModelCopyWith<$Res> {
  factory _$$ShippingCitiesModelImplCopyWith(_$ShippingCitiesModelImpl value,
          $Res Function(_$ShippingCitiesModelImpl) then) =
      __$$ShippingCitiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "actual_place_name") String? actualPlaceName});
}

/// @nodoc
class __$$ShippingCitiesModelImplCopyWithImpl<$Res>
    extends _$ShippingCitiesModelCopyWithImpl<$Res, _$ShippingCitiesModelImpl>
    implements _$$ShippingCitiesModelImplCopyWith<$Res> {
  __$$ShippingCitiesModelImplCopyWithImpl(_$ShippingCitiesModelImpl _value,
      $Res Function(_$ShippingCitiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? actualPlaceName = freezed,
  }) {
    return _then(_$ShippingCitiesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPlaceName: freezed == actualPlaceName
          ? _value.actualPlaceName
          : actualPlaceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingCitiesModelImpl implements _ShippingCitiesModel {
  const _$ShippingCitiesModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "actual_place_name") required this.actualPlaceName});

  factory _$ShippingCitiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingCitiesModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "actual_place_name")
  final String? actualPlaceName;

  @override
  String toString() {
    return 'ShippingCitiesModel(id: $id, name: $name, description: $description, actualPlaceName: $actualPlaceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingCitiesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.actualPlaceName, actualPlaceName) ||
                other.actualPlaceName == actualPlaceName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, actualPlaceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingCitiesModelImplCopyWith<_$ShippingCitiesModelImpl> get copyWith =>
      __$$ShippingCitiesModelImplCopyWithImpl<_$ShippingCitiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingCitiesModelImplToJson(
      this,
    );
  }
}

abstract class _ShippingCitiesModel implements ShippingCitiesModel {
  const factory _ShippingCitiesModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "description") required final String? description,
      @JsonKey(name: "actual_place_name")
      required final String? actualPlaceName}) = _$ShippingCitiesModelImpl;

  factory _ShippingCitiesModel.fromJson(Map<String, dynamic> json) =
      _$ShippingCitiesModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "actual_place_name")
  String? get actualPlaceName;
  @override
  @JsonKey(ignore: true)
  _$$ShippingCitiesModelImplCopyWith<_$ShippingCitiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
