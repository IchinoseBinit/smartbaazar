// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorCardResponse _$VendorCardResponseFromJson(Map<String, dynamic> json) {
  return _VendorCardResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorCardResponse {
  VendorCardData? get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this VendorCardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorCardResponseCopyWith<VendorCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCardResponseCopyWith<$Res> {
  factory $VendorCardResponseCopyWith(
          VendorCardResponse value, $Res Function(VendorCardResponse) then) =
      _$VendorCardResponseCopyWithImpl<$Res, VendorCardResponse>;
  @useResult
  $Res call({VendorCardData? data, String msg});

  $VendorCardDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendorCardResponseCopyWithImpl<$Res, $Val extends VendorCardResponse>
    implements $VendorCardResponseCopyWith<$Res> {
  _$VendorCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorCardData?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of VendorCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCardDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendorCardDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorCardResponseImplCopyWith<$Res>
    implements $VendorCardResponseCopyWith<$Res> {
  factory _$$VendorCardResponseImplCopyWith(_$VendorCardResponseImpl value,
          $Res Function(_$VendorCardResponseImpl) then) =
      __$$VendorCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VendorCardData? data, String msg});

  @override
  $VendorCardDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendorCardResponseImplCopyWithImpl<$Res>
    extends _$VendorCardResponseCopyWithImpl<$Res, _$VendorCardResponseImpl>
    implements _$$VendorCardResponseImplCopyWith<$Res> {
  __$$VendorCardResponseImplCopyWithImpl(_$VendorCardResponseImpl _value,
      $Res Function(_$VendorCardResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = null,
  }) {
    return _then(_$VendorCardResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorCardData?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorCardResponseImpl implements _VendorCardResponse {
  const _$VendorCardResponseImpl({required this.data, required this.msg});

  factory _$VendorCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorCardResponseImplFromJson(json);

  @override
  final VendorCardData? data;
  @override
  final String msg;

  @override
  String toString() {
    return 'VendorCardResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorCardResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of VendorCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorCardResponseImplCopyWith<_$VendorCardResponseImpl> get copyWith =>
      __$$VendorCardResponseImplCopyWithImpl<_$VendorCardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorCardResponseImplToJson(
      this,
    );
  }
}

abstract class _VendorCardResponse implements VendorCardResponse {
  const factory _VendorCardResponse(
      {required final VendorCardData? data,
      required final String msg}) = _$VendorCardResponseImpl;

  factory _VendorCardResponse.fromJson(Map<String, dynamic> json) =
      _$VendorCardResponseImpl.fromJson;

  @override
  VendorCardData? get data;
  @override
  String get msg;

  /// Create a copy of VendorCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorCardResponseImplCopyWith<_$VendorCardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorCardData _$VendorCardDataFromJson(Map<String, dynamic> json) {
  return _VendorCardData.fromJson(json);
}

/// @nodoc
mixin _$VendorCardData {
  int? get subscribed => throw _privateConstructorUsedError;
  VendorCard? get vendor_card => throw _privateConstructorUsedError;
  List<Deal>? get deals => throw _privateConstructorUsedError;

  /// Serializes this VendorCardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorCardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorCardDataCopyWith<VendorCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCardDataCopyWith<$Res> {
  factory $VendorCardDataCopyWith(
          VendorCardData value, $Res Function(VendorCardData) then) =
      _$VendorCardDataCopyWithImpl<$Res, VendorCardData>;
  @useResult
  $Res call({int? subscribed, VendorCard? vendor_card, List<Deal>? deals});

  $VendorCardCopyWith<$Res>? get vendor_card;
}

/// @nodoc
class _$VendorCardDataCopyWithImpl<$Res, $Val extends VendorCardData>
    implements $VendorCardDataCopyWith<$Res> {
  _$VendorCardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorCardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = freezed,
    Object? vendor_card = freezed,
    Object? deals = freezed,
  }) {
    return _then(_value.copyWith(
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as int?,
      vendor_card: freezed == vendor_card
          ? _value.vendor_card
          : vendor_card // ignore: cast_nullable_to_non_nullable
              as VendorCard?,
      deals: freezed == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>?,
    ) as $Val);
  }

  /// Create a copy of VendorCardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCardCopyWith<$Res>? get vendor_card {
    if (_value.vendor_card == null) {
      return null;
    }

    return $VendorCardCopyWith<$Res>(_value.vendor_card!, (value) {
      return _then(_value.copyWith(vendor_card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorCardDataImplCopyWith<$Res>
    implements $VendorCardDataCopyWith<$Res> {
  factory _$$VendorCardDataImplCopyWith(_$VendorCardDataImpl value,
          $Res Function(_$VendorCardDataImpl) then) =
      __$$VendorCardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? subscribed, VendorCard? vendor_card, List<Deal>? deals});

  @override
  $VendorCardCopyWith<$Res>? get vendor_card;
}

/// @nodoc
class __$$VendorCardDataImplCopyWithImpl<$Res>
    extends _$VendorCardDataCopyWithImpl<$Res, _$VendorCardDataImpl>
    implements _$$VendorCardDataImplCopyWith<$Res> {
  __$$VendorCardDataImplCopyWithImpl(
      _$VendorCardDataImpl _value, $Res Function(_$VendorCardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorCardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = freezed,
    Object? vendor_card = freezed,
    Object? deals = freezed,
  }) {
    return _then(_$VendorCardDataImpl(
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as int?,
      vendor_card: freezed == vendor_card
          ? _value.vendor_card
          : vendor_card // ignore: cast_nullable_to_non_nullable
              as VendorCard?,
      deals: freezed == deals
          ? _value._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorCardDataImpl implements _VendorCardData {
  const _$VendorCardDataImpl(
      {this.subscribed,
      required this.vendor_card,
      required final List<Deal>? deals})
      : _deals = deals;

  factory _$VendorCardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorCardDataImplFromJson(json);

  @override
  final int? subscribed;
  @override
  final VendorCard? vendor_card;
  final List<Deal>? _deals;
  @override
  List<Deal>? get deals {
    final value = _deals;
    if (value == null) return null;
    if (_deals is EqualUnmodifiableListView) return _deals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VendorCardData(subscribed: $subscribed, vendor_card: $vendor_card, deals: $deals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorCardDataImpl &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed) &&
            (identical(other.vendor_card, vendor_card) ||
                other.vendor_card == vendor_card) &&
            const DeepCollectionEquality().equals(other._deals, _deals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subscribed, vendor_card,
      const DeepCollectionEquality().hash(_deals));

  /// Create a copy of VendorCardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorCardDataImplCopyWith<_$VendorCardDataImpl> get copyWith =>
      __$$VendorCardDataImplCopyWithImpl<_$VendorCardDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorCardDataImplToJson(
      this,
    );
  }
}

abstract class _VendorCardData implements VendorCardData {
  const factory _VendorCardData(
      {final int? subscribed,
      required final VendorCard? vendor_card,
      required final List<Deal>? deals}) = _$VendorCardDataImpl;

  factory _VendorCardData.fromJson(Map<String, dynamic> json) =
      _$VendorCardDataImpl.fromJson;

  @override
  int? get subscribed;
  @override
  VendorCard? get vendor_card;
  @override
  List<Deal>? get deals;

  /// Create a copy of VendorCardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorCardDataImplCopyWith<_$VendorCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
