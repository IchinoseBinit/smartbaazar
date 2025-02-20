// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_model_dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffersModelDropdown _$OffersModelDropdownFromJson(Map<String, dynamic> json) {
  return _OffersModelDropdown.fromJson(json);
}

/// @nodoc
mixin _$OffersModelDropdown {
  @JsonKey(name: 'data')
  List<OfferData>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;

  /// Serializes this OffersModelDropdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffersModelDropdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersModelDropdownCopyWith<OffersModelDropdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersModelDropdownCopyWith<$Res> {
  factory $OffersModelDropdownCopyWith(
          OffersModelDropdown value, $Res Function(OffersModelDropdown) then) =
      _$OffersModelDropdownCopyWithImpl<$Res, OffersModelDropdown>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<OfferData>? data,
      @JsonKey(name: 'msg') String? msg});
}

/// @nodoc
class _$OffersModelDropdownCopyWithImpl<$Res, $Val extends OffersModelDropdown>
    implements $OffersModelDropdownCopyWith<$Res> {
  _$OffersModelDropdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersModelDropdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferData>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersModelDropdownImplCopyWith<$Res>
    implements $OffersModelDropdownCopyWith<$Res> {
  factory _$$OffersModelDropdownImplCopyWith(_$OffersModelDropdownImpl value,
          $Res Function(_$OffersModelDropdownImpl) then) =
      __$$OffersModelDropdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<OfferData>? data,
      @JsonKey(name: 'msg') String? msg});
}

/// @nodoc
class __$$OffersModelDropdownImplCopyWithImpl<$Res>
    extends _$OffersModelDropdownCopyWithImpl<$Res, _$OffersModelDropdownImpl>
    implements _$$OffersModelDropdownImplCopyWith<$Res> {
  __$$OffersModelDropdownImplCopyWithImpl(_$OffersModelDropdownImpl _value,
      $Res Function(_$OffersModelDropdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersModelDropdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$OffersModelDropdownImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferData>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersModelDropdownImpl implements _OffersModelDropdown {
  _$OffersModelDropdownImpl(
      {@JsonKey(name: 'data') final List<OfferData>? data,
      @JsonKey(name: 'msg') this.msg})
      : _data = data;

  factory _$OffersModelDropdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersModelDropdownImplFromJson(json);

  final List<OfferData>? _data;
  @override
  @JsonKey(name: 'data')
  List<OfferData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'msg')
  final String? msg;

  @override
  String toString() {
    return 'OffersModelDropdown(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersModelDropdownImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data), msg);

  /// Create a copy of OffersModelDropdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersModelDropdownImplCopyWith<_$OffersModelDropdownImpl> get copyWith =>
      __$$OffersModelDropdownImplCopyWithImpl<_$OffersModelDropdownImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersModelDropdownImplToJson(
      this,
    );
  }
}

abstract class _OffersModelDropdown implements OffersModelDropdown {
  factory _OffersModelDropdown(
      {@JsonKey(name: 'data') final List<OfferData>? data,
      @JsonKey(name: 'msg') final String? msg}) = _$OffersModelDropdownImpl;

  factory _OffersModelDropdown.fromJson(Map<String, dynamic> json) =
      _$OffersModelDropdownImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<OfferData>? get data;
  @override
  @JsonKey(name: 'msg')
  String? get msg;

  /// Create a copy of OffersModelDropdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffersModelDropdownImplCopyWith<_$OffersModelDropdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferData _$OfferDataFromJson(Map<String, dynamic> json) {
  return _OfferData.fromJson(json);
}

/// @nodoc
mixin _$OfferData {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'offers')
  String? get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OfferData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferDataCopyWith<OfferData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferDataCopyWith<$Res> {
  factory $OfferDataCopyWith(OfferData value, $Res Function(OfferData) then) =
      _$OfferDataCopyWithImpl<$Res, OfferData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'offers') String? offers,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$OfferDataCopyWithImpl<$Res, $Val extends OfferData>
    implements $OfferDataCopyWith<$Res> {
  _$OfferDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? offers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferDataImplCopyWith<$Res>
    implements $OfferDataCopyWith<$Res> {
  factory _$$OfferDataImplCopyWith(
          _$OfferDataImpl value, $Res Function(_$OfferDataImpl) then) =
      __$$OfferDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'offers') String? offers,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$OfferDataImplCopyWithImpl<$Res>
    extends _$OfferDataCopyWithImpl<$Res, _$OfferDataImpl>
    implements _$$OfferDataImplCopyWith<$Res> {
  __$$OfferDataImplCopyWithImpl(
      _$OfferDataImpl _value, $Res Function(_$OfferDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? offers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OfferDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferDataImpl implements _OfferData {
  _$OfferDataImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'offers') this.offers,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OfferDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'offers')
  final String? offers;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'OfferData(id: $id, offers: $offers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, offers, createdAt, updatedAt);

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferDataImplCopyWith<_$OfferDataImpl> get copyWith =>
      __$$OfferDataImplCopyWithImpl<_$OfferDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferDataImplToJson(
      this,
    );
  }
}

abstract class _OfferData implements OfferData {
  factory _OfferData(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'offers') final String? offers,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$OfferDataImpl;

  factory _OfferData.fromJson(Map<String, dynamic> json) =
      _$OfferDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'offers')
  String? get offers;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferDataImplCopyWith<_$OfferDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
