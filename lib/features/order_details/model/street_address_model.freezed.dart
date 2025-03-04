// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StreetAddressModel _$StreetAddressModelFromJson(Map<String, dynamic> json) {
  return _StreetAddressModel.fromJson(json);
}

/// @nodoc
mixin _$StreetAddressModel {
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "place_id")
  String get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreetAddressModelCopyWith<StreetAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetAddressModelCopyWith<$Res> {
  factory $StreetAddressModelCopyWith(
          StreetAddressModel value, $Res Function(StreetAddressModel) then) =
      _$StreetAddressModelCopyWithImpl<$Res, StreetAddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "place_id") String placeId,
      @JsonKey(name: "latitude") double latitude,
      @JsonKey(name: "longitude") double longitude});
}

/// @nodoc
class _$StreetAddressModelCopyWithImpl<$Res, $Val extends StreetAddressModel>
    implements $StreetAddressModelCopyWith<$Res> {
  _$StreetAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? placeId = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreetAddressModelImplCopyWith<$Res>
    implements $StreetAddressModelCopyWith<$Res> {
  factory _$$StreetAddressModelImplCopyWith(_$StreetAddressModelImpl value,
          $Res Function(_$StreetAddressModelImpl) then) =
      __$$StreetAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "place_id") String placeId,
      @JsonKey(name: "latitude") double latitude,
      @JsonKey(name: "longitude") double longitude});
}

/// @nodoc
class __$$StreetAddressModelImplCopyWithImpl<$Res>
    extends _$StreetAddressModelCopyWithImpl<$Res, _$StreetAddressModelImpl>
    implements _$$StreetAddressModelImplCopyWith<$Res> {
  __$$StreetAddressModelImplCopyWithImpl(_$StreetAddressModelImpl _value,
      $Res Function(_$StreetAddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? placeId = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$StreetAddressModelImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreetAddressModelImpl implements _StreetAddressModel {
  const _$StreetAddressModelImpl(
      {@JsonKey(name: "description") required this.description,
      @JsonKey(name: "place_id") required this.placeId,
      @JsonKey(name: "latitude") required this.latitude,
      @JsonKey(name: "longitude") required this.longitude});

  factory _$StreetAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreetAddressModelImplFromJson(json);

  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "place_id")
  final String placeId;
  @override
  @JsonKey(name: "latitude")
  final double latitude;
  @override
  @JsonKey(name: "longitude")
  final double longitude;

  @override
  String toString() {
    return 'StreetAddressModel(description: $description, placeId: $placeId, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreetAddressModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, placeId, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreetAddressModelImplCopyWith<_$StreetAddressModelImpl> get copyWith =>
      __$$StreetAddressModelImplCopyWithImpl<_$StreetAddressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreetAddressModelImplToJson(
      this,
    );
  }
}

abstract class _StreetAddressModel implements StreetAddressModel {
  const factory _StreetAddressModel(
          {@JsonKey(name: "description") required final String description,
          @JsonKey(name: "place_id") required final String placeId,
          @JsonKey(name: "latitude") required final double latitude,
          @JsonKey(name: "longitude") required final double longitude}) =
      _$StreetAddressModelImpl;

  factory _StreetAddressModel.fromJson(Map<String, dynamic> json) =
      _$StreetAddressModelImpl.fromJson;

  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "place_id")
  String get placeId;
  @override
  @JsonKey(name: "latitude")
  double get latitude;
  @override
  @JsonKey(name: "longitude")
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$StreetAddressModelImplCopyWith<_$StreetAddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
