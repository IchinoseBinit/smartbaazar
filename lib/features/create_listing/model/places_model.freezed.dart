// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) {
  return _PlacesResponse.fromJson(json);
}

/// @nodoc
mixin _$PlacesResponse {
  bool? get success => throw _privateConstructorUsedError;
  List<Place>? get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesResponseCopyWith<PlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesResponseCopyWith<$Res> {
  factory $PlacesResponseCopyWith(
          PlacesResponse value, $Res Function(PlacesResponse) then) =
      _$PlacesResponseCopyWithImpl<$Res, PlacesResponse>;
  @useResult
  $Res call({bool? success, List<Place>? places});
}

/// @nodoc
class _$PlacesResponseCopyWithImpl<$Res, $Val extends PlacesResponse>
    implements $PlacesResponseCopyWith<$Res> {
  _$PlacesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacesResponseImplCopyWith<$Res>
    implements $PlacesResponseCopyWith<$Res> {
  factory _$$PlacesResponseImplCopyWith(_$PlacesResponseImpl value,
          $Res Function(_$PlacesResponseImpl) then) =
      __$$PlacesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, List<Place>? places});
}

/// @nodoc
class __$$PlacesResponseImplCopyWithImpl<$Res>
    extends _$PlacesResponseCopyWithImpl<$Res, _$PlacesResponseImpl>
    implements _$$PlacesResponseImplCopyWith<$Res> {
  __$$PlacesResponseImplCopyWithImpl(
      _$PlacesResponseImpl _value, $Res Function(_$PlacesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? places = freezed,
  }) {
    return _then(_$PlacesResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesResponseImpl implements _PlacesResponse {
  const _$PlacesResponseImpl({this.success, final List<Place>? places})
      : _places = places;

  factory _$PlacesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacesResponseImplFromJson(json);

  @override
  final bool? success;
  final List<Place>? _places;
  @override
  List<Place>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlacesResponse(success: $success, places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesResponseImplCopyWith<_$PlacesResponseImpl> get copyWith =>
      __$$PlacesResponseImplCopyWithImpl<_$PlacesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesResponseImplToJson(
      this,
    );
  }
}

abstract class _PlacesResponse implements PlacesResponse {
  const factory _PlacesResponse(
      {final bool? success, final List<Place>? places}) = _$PlacesResponseImpl;

  factory _PlacesResponse.fromJson(Map<String, dynamic> json) =
      _$PlacesResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  List<Place>? get places;
  @override
  @JsonKey(ignore: true)
  _$$PlacesResponseImplCopyWith<_$PlacesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String? get description => throw _privateConstructorUsedError;
  String? get place_id => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {String? description,
      String? place_id,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? place_id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      place_id: freezed == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      String? place_id,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? place_id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$PlaceImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      place_id: freezed == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  const _$PlaceImpl(
      {this.description, this.place_id, this.latitude, this.longitude});

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final String? description;
  @override
  final String? place_id;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'Place(description: $description, place_id: $place_id, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.place_id, place_id) ||
                other.place_id == place_id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, place_id, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {final String? description,
      final String? place_id,
      final double? latitude,
      final double? longitude}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  String? get description;
  @override
  String? get place_id;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
