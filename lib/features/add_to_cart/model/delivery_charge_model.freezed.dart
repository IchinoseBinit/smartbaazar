// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_charge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParcelFareResponse _$ParcelFareResponseFromJson(Map<String, dynamic> json) {
  return _ParcelFareResponse.fromJson(json);
}

/// @nodoc
mixin _$ParcelFareResponse {
  @JsonKey(name: 'response_code')
  String? get responseCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_size')
  int? get totalSize => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  ParcelData? get data => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;

  /// Serializes this ParcelFareResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParcelFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParcelFareResponseCopyWith<ParcelFareResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelFareResponseCopyWith<$Res> {
  factory $ParcelFareResponseCopyWith(
          ParcelFareResponse value, $Res Function(ParcelFareResponse) then) =
      _$ParcelFareResponseCopyWithImpl<$Res, ParcelFareResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'response_code') String? responseCode,
      String? message,
      @JsonKey(name: 'total_size') int? totalSize,
      int? limit,
      int? offset,
      ParcelData? data,
      List<dynamic>? errors});

  $ParcelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ParcelFareResponseCopyWithImpl<$Res, $Val extends ParcelFareResponse>
    implements $ParcelFareResponseCopyWith<$Res> {
  _$ParcelFareResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParcelFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? message = freezed,
    Object? totalSize = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? data = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSize: freezed == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ParcelData?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  /// Create a copy of ParcelFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParcelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ParcelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParcelFareResponseImplCopyWith<$Res>
    implements $ParcelFareResponseCopyWith<$Res> {
  factory _$$ParcelFareResponseImplCopyWith(_$ParcelFareResponseImpl value,
          $Res Function(_$ParcelFareResponseImpl) then) =
      __$$ParcelFareResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'response_code') String? responseCode,
      String? message,
      @JsonKey(name: 'total_size') int? totalSize,
      int? limit,
      int? offset,
      ParcelData? data,
      List<dynamic>? errors});

  @override
  $ParcelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ParcelFareResponseImplCopyWithImpl<$Res>
    extends _$ParcelFareResponseCopyWithImpl<$Res, _$ParcelFareResponseImpl>
    implements _$$ParcelFareResponseImplCopyWith<$Res> {
  __$$ParcelFareResponseImplCopyWithImpl(_$ParcelFareResponseImpl _value,
      $Res Function(_$ParcelFareResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParcelFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? message = freezed,
    Object? totalSize = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? data = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ParcelFareResponseImpl(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSize: freezed == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ParcelData?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelFareResponseImpl implements _ParcelFareResponse {
  const _$ParcelFareResponseImpl(
      {@JsonKey(name: 'response_code') this.responseCode,
      this.message,
      @JsonKey(name: 'total_size') this.totalSize,
      this.limit,
      this.offset,
      this.data,
      final List<dynamic>? errors})
      : _errors = errors;

  factory _$ParcelFareResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelFareResponseImplFromJson(json);

  @override
  @JsonKey(name: 'response_code')
  final String? responseCode;
  @override
  final String? message;
  @override
  @JsonKey(name: 'total_size')
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final ParcelData? data;
  final List<dynamic>? _errors;
  @override
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ParcelFareResponse(responseCode: $responseCode, message: $message, totalSize: $totalSize, limit: $limit, offset: $offset, data: $data, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelFareResponseImpl &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responseCode, message, totalSize,
      limit, offset, data, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ParcelFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelFareResponseImplCopyWith<_$ParcelFareResponseImpl> get copyWith =>
      __$$ParcelFareResponseImplCopyWithImpl<_$ParcelFareResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelFareResponseImplToJson(
      this,
    );
  }
}

abstract class _ParcelFareResponse implements ParcelFareResponse {
  const factory _ParcelFareResponse(
      {@JsonKey(name: 'response_code') final String? responseCode,
      final String? message,
      @JsonKey(name: 'total_size') final int? totalSize,
      final int? limit,
      final int? offset,
      final ParcelData? data,
      final List<dynamic>? errors}) = _$ParcelFareResponseImpl;

  factory _ParcelFareResponse.fromJson(Map<String, dynamic> json) =
      _$ParcelFareResponseImpl.fromJson;

  @override
  @JsonKey(name: 'response_code')
  String? get responseCode;
  @override
  String? get message;
  @override
  @JsonKey(name: 'total_size')
  int? get totalSize;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  ParcelData? get data;
  @override
  List<dynamic>? get errors;

  /// Create a copy of ParcelFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelFareResponseImplCopyWith<_$ParcelFareResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParcelData _$ParcelDataFromJson(Map<String, dynamic> json) {
  return _ParcelData.fromJson(json);
}

/// @nodoc
mixin _$ParcelData {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'zone_id')
  String? get zoneId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  String? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_fare')
  int? get baseFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_fare_per_km')
  int? get baseFarePerKm => throw _privateConstructorUsedError;
  List<Fare>? get fare => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_distance')
  double? get estimatedDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_duration')
  String? get estimatedDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_fare')
  int? get estimatedFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_fare')
  int? get discountFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  int? get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_applicable')
  bool? get couponApplicable => throw _privateConstructorUsedError;
  @JsonKey(name: 'request type')
  String? get requestType => throw _privateConstructorUsedError;
  @JsonKey(name: 'encoded_polyline')
  String? get encodedPolyline => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_fee')
  int? get returnFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_fee')
  int? get cancellationFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_estimated_fare')
  int? get extraEstimatedFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_discount_fare')
  int? get extraDiscountFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_discount_amount')
  int? get extraDiscountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_return_fee')
  int? get extraReturnFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_cancellation_fee')
  int? get extraCancellationFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_fare_amount')
  int? get extraFareAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_fare_fee')
  int? get extraFareFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_fare_reason')
  String? get extraFareReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'est_id')
  int? get estId => throw _privateConstructorUsedError;

  /// Serializes this ParcelData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParcelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParcelDataCopyWith<ParcelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelDataCopyWith<$Res> {
  factory $ParcelDataCopyWith(
          ParcelData value, $Res Function(ParcelData) then) =
      _$ParcelDataCopyWithImpl<$Res, ParcelData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'zone_id') String? zoneId,
      @JsonKey(name: 'area_id') String? areaId,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'base_fare_per_km') int? baseFarePerKm,
      List<Fare>? fare,
      @JsonKey(name: 'estimated_distance') double? estimatedDistance,
      @JsonKey(name: 'estimated_duration') String? estimatedDuration,
      @JsonKey(name: 'estimated_fare') int? estimatedFare,
      @JsonKey(name: 'discount_fare') int? discountFare,
      @JsonKey(name: 'discount_amount') int? discountAmount,
      @JsonKey(name: 'coupon_applicable') bool? couponApplicable,
      @JsonKey(name: 'request type') String? requestType,
      @JsonKey(name: 'encoded_polyline') String? encodedPolyline,
      @JsonKey(name: 'return_fee') int? returnFee,
      @JsonKey(name: 'cancellation_fee') int? cancellationFee,
      @JsonKey(name: 'extra_estimated_fare') int? extraEstimatedFare,
      @JsonKey(name: 'extra_discount_fare') int? extraDiscountFare,
      @JsonKey(name: 'extra_discount_amount') int? extraDiscountAmount,
      @JsonKey(name: 'extra_return_fee') int? extraReturnFee,
      @JsonKey(name: 'extra_cancellation_fee') int? extraCancellationFee,
      @JsonKey(name: 'extra_fare_amount') int? extraFareAmount,
      @JsonKey(name: 'extra_fare_fee') int? extraFareFee,
      @JsonKey(name: 'extra_fare_reason') String? extraFareReason,
      @JsonKey(name: 'est_id') int? estId});
}

/// @nodoc
class _$ParcelDataCopyWithImpl<$Res, $Val extends ParcelData>
    implements $ParcelDataCopyWith<$Res> {
  _$ParcelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParcelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? zoneId = freezed,
    Object? areaId = freezed,
    Object? baseFare = freezed,
    Object? baseFarePerKm = freezed,
    Object? fare = freezed,
    Object? estimatedDistance = freezed,
    Object? estimatedDuration = freezed,
    Object? estimatedFare = freezed,
    Object? discountFare = freezed,
    Object? discountAmount = freezed,
    Object? couponApplicable = freezed,
    Object? requestType = freezed,
    Object? encodedPolyline = freezed,
    Object? returnFee = freezed,
    Object? cancellationFee = freezed,
    Object? extraEstimatedFare = freezed,
    Object? extraDiscountFare = freezed,
    Object? extraDiscountAmount = freezed,
    Object? extraReturnFee = freezed,
    Object? extraCancellationFee = freezed,
    Object? extraFareAmount = freezed,
    Object? extraFareFee = freezed,
    Object? extraFareReason = freezed,
    Object? estId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseFare: freezed == baseFare
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as int?,
      baseFarePerKm: freezed == baseFarePerKm
          ? _value.baseFarePerKm
          : baseFarePerKm // ignore: cast_nullable_to_non_nullable
              as int?,
      fare: freezed == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as List<Fare>?,
      estimatedDistance: freezed == estimatedDistance
          ? _value.estimatedDistance
          : estimatedDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedFare: freezed == estimatedFare
          ? _value.estimatedFare
          : estimatedFare // ignore: cast_nullable_to_non_nullable
              as int?,
      discountFare: freezed == discountFare
          ? _value.discountFare
          : discountFare // ignore: cast_nullable_to_non_nullable
              as int?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      couponApplicable: freezed == couponApplicable
          ? _value.couponApplicable
          : couponApplicable // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      encodedPolyline: freezed == encodedPolyline
          ? _value.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
      returnFee: freezed == returnFee
          ? _value.returnFee
          : returnFee // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationFee: freezed == cancellationFee
          ? _value.cancellationFee
          : cancellationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraEstimatedFare: freezed == extraEstimatedFare
          ? _value.extraEstimatedFare
          : extraEstimatedFare // ignore: cast_nullable_to_non_nullable
              as int?,
      extraDiscountFare: freezed == extraDiscountFare
          ? _value.extraDiscountFare
          : extraDiscountFare // ignore: cast_nullable_to_non_nullable
              as int?,
      extraDiscountAmount: freezed == extraDiscountAmount
          ? _value.extraDiscountAmount
          : extraDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      extraReturnFee: freezed == extraReturnFee
          ? _value.extraReturnFee
          : extraReturnFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraCancellationFee: freezed == extraCancellationFee
          ? _value.extraCancellationFee
          : extraCancellationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraFareAmount: freezed == extraFareAmount
          ? _value.extraFareAmount
          : extraFareAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      extraFareFee: freezed == extraFareFee
          ? _value.extraFareFee
          : extraFareFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraFareReason: freezed == extraFareReason
          ? _value.extraFareReason
          : extraFareReason // ignore: cast_nullable_to_non_nullable
              as String?,
      estId: freezed == estId
          ? _value.estId
          : estId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParcelDataImplCopyWith<$Res>
    implements $ParcelDataCopyWith<$Res> {
  factory _$$ParcelDataImplCopyWith(
          _$ParcelDataImpl value, $Res Function(_$ParcelDataImpl) then) =
      __$$ParcelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'zone_id') String? zoneId,
      @JsonKey(name: 'area_id') String? areaId,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'base_fare_per_km') int? baseFarePerKm,
      List<Fare>? fare,
      @JsonKey(name: 'estimated_distance') double? estimatedDistance,
      @JsonKey(name: 'estimated_duration') String? estimatedDuration,
      @JsonKey(name: 'estimated_fare') int? estimatedFare,
      @JsonKey(name: 'discount_fare') int? discountFare,
      @JsonKey(name: 'discount_amount') int? discountAmount,
      @JsonKey(name: 'coupon_applicable') bool? couponApplicable,
      @JsonKey(name: 'request type') String? requestType,
      @JsonKey(name: 'encoded_polyline') String? encodedPolyline,
      @JsonKey(name: 'return_fee') int? returnFee,
      @JsonKey(name: 'cancellation_fee') int? cancellationFee,
      @JsonKey(name: 'extra_estimated_fare') int? extraEstimatedFare,
      @JsonKey(name: 'extra_discount_fare') int? extraDiscountFare,
      @JsonKey(name: 'extra_discount_amount') int? extraDiscountAmount,
      @JsonKey(name: 'extra_return_fee') int? extraReturnFee,
      @JsonKey(name: 'extra_cancellation_fee') int? extraCancellationFee,
      @JsonKey(name: 'extra_fare_amount') int? extraFareAmount,
      @JsonKey(name: 'extra_fare_fee') int? extraFareFee,
      @JsonKey(name: 'extra_fare_reason') String? extraFareReason,
      @JsonKey(name: 'est_id') int? estId});
}

/// @nodoc
class __$$ParcelDataImplCopyWithImpl<$Res>
    extends _$ParcelDataCopyWithImpl<$Res, _$ParcelDataImpl>
    implements _$$ParcelDataImplCopyWith<$Res> {
  __$$ParcelDataImplCopyWithImpl(
      _$ParcelDataImpl _value, $Res Function(_$ParcelDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParcelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? zoneId = freezed,
    Object? areaId = freezed,
    Object? baseFare = freezed,
    Object? baseFarePerKm = freezed,
    Object? fare = freezed,
    Object? estimatedDistance = freezed,
    Object? estimatedDuration = freezed,
    Object? estimatedFare = freezed,
    Object? discountFare = freezed,
    Object? discountAmount = freezed,
    Object? couponApplicable = freezed,
    Object? requestType = freezed,
    Object? encodedPolyline = freezed,
    Object? returnFee = freezed,
    Object? cancellationFee = freezed,
    Object? extraEstimatedFare = freezed,
    Object? extraDiscountFare = freezed,
    Object? extraDiscountAmount = freezed,
    Object? extraReturnFee = freezed,
    Object? extraCancellationFee = freezed,
    Object? extraFareAmount = freezed,
    Object? extraFareFee = freezed,
    Object? extraFareReason = freezed,
    Object? estId = freezed,
  }) {
    return _then(_$ParcelDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseFare: freezed == baseFare
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as int?,
      baseFarePerKm: freezed == baseFarePerKm
          ? _value.baseFarePerKm
          : baseFarePerKm // ignore: cast_nullable_to_non_nullable
              as int?,
      fare: freezed == fare
          ? _value._fare
          : fare // ignore: cast_nullable_to_non_nullable
              as List<Fare>?,
      estimatedDistance: freezed == estimatedDistance
          ? _value.estimatedDistance
          : estimatedDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedFare: freezed == estimatedFare
          ? _value.estimatedFare
          : estimatedFare // ignore: cast_nullable_to_non_nullable
              as int?,
      discountFare: freezed == discountFare
          ? _value.discountFare
          : discountFare // ignore: cast_nullable_to_non_nullable
              as int?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      couponApplicable: freezed == couponApplicable
          ? _value.couponApplicable
          : couponApplicable // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      encodedPolyline: freezed == encodedPolyline
          ? _value.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String?,
      returnFee: freezed == returnFee
          ? _value.returnFee
          : returnFee // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationFee: freezed == cancellationFee
          ? _value.cancellationFee
          : cancellationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraEstimatedFare: freezed == extraEstimatedFare
          ? _value.extraEstimatedFare
          : extraEstimatedFare // ignore: cast_nullable_to_non_nullable
              as int?,
      extraDiscountFare: freezed == extraDiscountFare
          ? _value.extraDiscountFare
          : extraDiscountFare // ignore: cast_nullable_to_non_nullable
              as int?,
      extraDiscountAmount: freezed == extraDiscountAmount
          ? _value.extraDiscountAmount
          : extraDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      extraReturnFee: freezed == extraReturnFee
          ? _value.extraReturnFee
          : extraReturnFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraCancellationFee: freezed == extraCancellationFee
          ? _value.extraCancellationFee
          : extraCancellationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraFareAmount: freezed == extraFareAmount
          ? _value.extraFareAmount
          : extraFareAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      extraFareFee: freezed == extraFareFee
          ? _value.extraFareFee
          : extraFareFee // ignore: cast_nullable_to_non_nullable
              as int?,
      extraFareReason: freezed == extraFareReason
          ? _value.extraFareReason
          : extraFareReason // ignore: cast_nullable_to_non_nullable
              as String?,
      estId: freezed == estId
          ? _value.estId
          : estId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelDataImpl implements _ParcelData {
  const _$ParcelDataImpl(
      {this.id,
      @JsonKey(name: 'zone_id') this.zoneId,
      @JsonKey(name: 'area_id') this.areaId,
      @JsonKey(name: 'base_fare') this.baseFare,
      @JsonKey(name: 'base_fare_per_km') this.baseFarePerKm,
      final List<Fare>? fare,
      @JsonKey(name: 'estimated_distance') this.estimatedDistance,
      @JsonKey(name: 'estimated_duration') this.estimatedDuration,
      @JsonKey(name: 'estimated_fare') this.estimatedFare,
      @JsonKey(name: 'discount_fare') this.discountFare,
      @JsonKey(name: 'discount_amount') this.discountAmount,
      @JsonKey(name: 'coupon_applicable') this.couponApplicable,
      @JsonKey(name: 'request type') this.requestType,
      @JsonKey(name: 'encoded_polyline') this.encodedPolyline,
      @JsonKey(name: 'return_fee') this.returnFee,
      @JsonKey(name: 'cancellation_fee') this.cancellationFee,
      @JsonKey(name: 'extra_estimated_fare') this.extraEstimatedFare,
      @JsonKey(name: 'extra_discount_fare') this.extraDiscountFare,
      @JsonKey(name: 'extra_discount_amount') this.extraDiscountAmount,
      @JsonKey(name: 'extra_return_fee') this.extraReturnFee,
      @JsonKey(name: 'extra_cancellation_fee') this.extraCancellationFee,
      @JsonKey(name: 'extra_fare_amount') this.extraFareAmount,
      @JsonKey(name: 'extra_fare_fee') this.extraFareFee,
      @JsonKey(name: 'extra_fare_reason') this.extraFareReason,
      @JsonKey(name: 'est_id') this.estId})
      : _fare = fare;

  factory _$ParcelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelDataImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'zone_id')
  final String? zoneId;
  @override
  @JsonKey(name: 'area_id')
  final String? areaId;
  @override
  @JsonKey(name: 'base_fare')
  final int? baseFare;
  @override
  @JsonKey(name: 'base_fare_per_km')
  final int? baseFarePerKm;
  final List<Fare>? _fare;
  @override
  List<Fare>? get fare {
    final value = _fare;
    if (value == null) return null;
    if (_fare is EqualUnmodifiableListView) return _fare;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'estimated_distance')
  final double? estimatedDistance;
  @override
  @JsonKey(name: 'estimated_duration')
  final String? estimatedDuration;
  @override
  @JsonKey(name: 'estimated_fare')
  final int? estimatedFare;
  @override
  @JsonKey(name: 'discount_fare')
  final int? discountFare;
  @override
  @JsonKey(name: 'discount_amount')
  final int? discountAmount;
  @override
  @JsonKey(name: 'coupon_applicable')
  final bool? couponApplicable;
  @override
  @JsonKey(name: 'request type')
  final String? requestType;
  @override
  @JsonKey(name: 'encoded_polyline')
  final String? encodedPolyline;
  @override
  @JsonKey(name: 'return_fee')
  final int? returnFee;
  @override
  @JsonKey(name: 'cancellation_fee')
  final int? cancellationFee;
  @override
  @JsonKey(name: 'extra_estimated_fare')
  final int? extraEstimatedFare;
  @override
  @JsonKey(name: 'extra_discount_fare')
  final int? extraDiscountFare;
  @override
  @JsonKey(name: 'extra_discount_amount')
  final int? extraDiscountAmount;
  @override
  @JsonKey(name: 'extra_return_fee')
  final int? extraReturnFee;
  @override
  @JsonKey(name: 'extra_cancellation_fee')
  final int? extraCancellationFee;
  @override
  @JsonKey(name: 'extra_fare_amount')
  final int? extraFareAmount;
  @override
  @JsonKey(name: 'extra_fare_fee')
  final int? extraFareFee;
  @override
  @JsonKey(name: 'extra_fare_reason')
  final String? extraFareReason;
  @override
  @JsonKey(name: 'est_id')
  final int? estId;

  @override
  String toString() {
    return 'ParcelData(id: $id, zoneId: $zoneId, areaId: $areaId, baseFare: $baseFare, baseFarePerKm: $baseFarePerKm, fare: $fare, estimatedDistance: $estimatedDistance, estimatedDuration: $estimatedDuration, estimatedFare: $estimatedFare, discountFare: $discountFare, discountAmount: $discountAmount, couponApplicable: $couponApplicable, requestType: $requestType, encodedPolyline: $encodedPolyline, returnFee: $returnFee, cancellationFee: $cancellationFee, extraEstimatedFare: $extraEstimatedFare, extraDiscountFare: $extraDiscountFare, extraDiscountAmount: $extraDiscountAmount, extraReturnFee: $extraReturnFee, extraCancellationFee: $extraCancellationFee, extraFareAmount: $extraFareAmount, extraFareFee: $extraFareFee, extraFareReason: $extraFareReason, estId: $estId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.baseFare, baseFare) ||
                other.baseFare == baseFare) &&
            (identical(other.baseFarePerKm, baseFarePerKm) ||
                other.baseFarePerKm == baseFarePerKm) &&
            const DeepCollectionEquality().equals(other._fare, _fare) &&
            (identical(other.estimatedDistance, estimatedDistance) ||
                other.estimatedDistance == estimatedDistance) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.estimatedFare, estimatedFare) ||
                other.estimatedFare == estimatedFare) &&
            (identical(other.discountFare, discountFare) ||
                other.discountFare == discountFare) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.couponApplicable, couponApplicable) ||
                other.couponApplicable == couponApplicable) &&
            (identical(other.requestType, requestType) ||
                other.requestType == requestType) &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline) &&
            (identical(other.returnFee, returnFee) ||
                other.returnFee == returnFee) &&
            (identical(other.cancellationFee, cancellationFee) ||
                other.cancellationFee == cancellationFee) &&
            (identical(other.extraEstimatedFare, extraEstimatedFare) ||
                other.extraEstimatedFare == extraEstimatedFare) &&
            (identical(other.extraDiscountFare, extraDiscountFare) ||
                other.extraDiscountFare == extraDiscountFare) &&
            (identical(other.extraDiscountAmount, extraDiscountAmount) ||
                other.extraDiscountAmount == extraDiscountAmount) &&
            (identical(other.extraReturnFee, extraReturnFee) ||
                other.extraReturnFee == extraReturnFee) &&
            (identical(other.extraCancellationFee, extraCancellationFee) ||
                other.extraCancellationFee == extraCancellationFee) &&
            (identical(other.extraFareAmount, extraFareAmount) ||
                other.extraFareAmount == extraFareAmount) &&
            (identical(other.extraFareFee, extraFareFee) ||
                other.extraFareFee == extraFareFee) &&
            (identical(other.extraFareReason, extraFareReason) ||
                other.extraFareReason == extraFareReason) &&
            (identical(other.estId, estId) || other.estId == estId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        zoneId,
        areaId,
        baseFare,
        baseFarePerKm,
        const DeepCollectionEquality().hash(_fare),
        estimatedDistance,
        estimatedDuration,
        estimatedFare,
        discountFare,
        discountAmount,
        couponApplicable,
        requestType,
        encodedPolyline,
        returnFee,
        cancellationFee,
        extraEstimatedFare,
        extraDiscountFare,
        extraDiscountAmount,
        extraReturnFee,
        extraCancellationFee,
        extraFareAmount,
        extraFareFee,
        extraFareReason,
        estId
      ]);

  /// Create a copy of ParcelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelDataImplCopyWith<_$ParcelDataImpl> get copyWith =>
      __$$ParcelDataImplCopyWithImpl<_$ParcelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelDataImplToJson(
      this,
    );
  }
}

abstract class _ParcelData implements ParcelData {
  const factory _ParcelData(
      {final String? id,
      @JsonKey(name: 'zone_id') final String? zoneId,
      @JsonKey(name: 'area_id') final String? areaId,
      @JsonKey(name: 'base_fare') final int? baseFare,
      @JsonKey(name: 'base_fare_per_km') final int? baseFarePerKm,
      final List<Fare>? fare,
      @JsonKey(name: 'estimated_distance') final double? estimatedDistance,
      @JsonKey(name: 'estimated_duration') final String? estimatedDuration,
      @JsonKey(name: 'estimated_fare') final int? estimatedFare,
      @JsonKey(name: 'discount_fare') final int? discountFare,
      @JsonKey(name: 'discount_amount') final int? discountAmount,
      @JsonKey(name: 'coupon_applicable') final bool? couponApplicable,
      @JsonKey(name: 'request type') final String? requestType,
      @JsonKey(name: 'encoded_polyline') final String? encodedPolyline,
      @JsonKey(name: 'return_fee') final int? returnFee,
      @JsonKey(name: 'cancellation_fee') final int? cancellationFee,
      @JsonKey(name: 'extra_estimated_fare') final int? extraEstimatedFare,
      @JsonKey(name: 'extra_discount_fare') final int? extraDiscountFare,
      @JsonKey(name: 'extra_discount_amount') final int? extraDiscountAmount,
      @JsonKey(name: 'extra_return_fee') final int? extraReturnFee,
      @JsonKey(name: 'extra_cancellation_fee') final int? extraCancellationFee,
      @JsonKey(name: 'extra_fare_amount') final int? extraFareAmount,
      @JsonKey(name: 'extra_fare_fee') final int? extraFareFee,
      @JsonKey(name: 'extra_fare_reason') final String? extraFareReason,
      @JsonKey(name: 'est_id') final int? estId}) = _$ParcelDataImpl;

  factory _ParcelData.fromJson(Map<String, dynamic> json) =
      _$ParcelDataImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'zone_id')
  String? get zoneId;
  @override
  @JsonKey(name: 'area_id')
  String? get areaId;
  @override
  @JsonKey(name: 'base_fare')
  int? get baseFare;
  @override
  @JsonKey(name: 'base_fare_per_km')
  int? get baseFarePerKm;
  @override
  List<Fare>? get fare;
  @override
  @JsonKey(name: 'estimated_distance')
  double? get estimatedDistance;
  @override
  @JsonKey(name: 'estimated_duration')
  String? get estimatedDuration;
  @override
  @JsonKey(name: 'estimated_fare')
  int? get estimatedFare;
  @override
  @JsonKey(name: 'discount_fare')
  int? get discountFare;
  @override
  @JsonKey(name: 'discount_amount')
  int? get discountAmount;
  @override
  @JsonKey(name: 'coupon_applicable')
  bool? get couponApplicable;
  @override
  @JsonKey(name: 'request type')
  String? get requestType;
  @override
  @JsonKey(name: 'encoded_polyline')
  String? get encodedPolyline;
  @override
  @JsonKey(name: 'return_fee')
  int? get returnFee;
  @override
  @JsonKey(name: 'cancellation_fee')
  int? get cancellationFee;
  @override
  @JsonKey(name: 'extra_estimated_fare')
  int? get extraEstimatedFare;
  @override
  @JsonKey(name: 'extra_discount_fare')
  int? get extraDiscountFare;
  @override
  @JsonKey(name: 'extra_discount_amount')
  int? get extraDiscountAmount;
  @override
  @JsonKey(name: 'extra_return_fee')
  int? get extraReturnFee;
  @override
  @JsonKey(name: 'extra_cancellation_fee')
  int? get extraCancellationFee;
  @override
  @JsonKey(name: 'extra_fare_amount')
  int? get extraFareAmount;
  @override
  @JsonKey(name: 'extra_fare_fee')
  int? get extraFareFee;
  @override
  @JsonKey(name: 'extra_fare_reason')
  String? get extraFareReason;
  @override
  @JsonKey(name: 'est_id')
  int? get estId;

  /// Create a copy of ParcelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelDataImplCopyWith<_$ParcelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fare _$FareFromJson(Map<String, dynamic> json) {
  return _Fare.fromJson(json);
}

/// @nodoc
mixin _$Fare {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parcel_fare_id')
  String? get parcelFareId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parcel_weight_id')
  String? get parcelWeightId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parcel_category_id')
  String? get parcelCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_fare')
  int? get baseFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_fee')
  int? get returnFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_fee')
  int? get cancellationFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_per_km')
  String? get farePerKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'zone_id')
  String? get zoneId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Fare to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fare
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FareCopyWith<Fare> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FareCopyWith<$Res> {
  factory $FareCopyWith(Fare value, $Res Function(Fare) then) =
      _$FareCopyWithImpl<$Res, Fare>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parcel_fare_id') String? parcelFareId,
      @JsonKey(name: 'parcel_weight_id') String? parcelWeightId,
      @JsonKey(name: 'parcel_category_id') String? parcelCategoryId,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'return_fee') int? returnFee,
      @JsonKey(name: 'cancellation_fee') int? cancellationFee,
      @JsonKey(name: 'fare_per_km') String? farePerKm,
      @JsonKey(name: 'zone_id') String? zoneId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$FareCopyWithImpl<$Res, $Val extends Fare>
    implements $FareCopyWith<$Res> {
  _$FareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fare
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parcelFareId = freezed,
    Object? parcelWeightId = freezed,
    Object? parcelCategoryId = freezed,
    Object? baseFare = freezed,
    Object? returnFee = freezed,
    Object? cancellationFee = freezed,
    Object? farePerKm = freezed,
    Object? zoneId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parcelFareId: freezed == parcelFareId
          ? _value.parcelFareId
          : parcelFareId // ignore: cast_nullable_to_non_nullable
              as String?,
      parcelWeightId: freezed == parcelWeightId
          ? _value.parcelWeightId
          : parcelWeightId // ignore: cast_nullable_to_non_nullable
              as String?,
      parcelCategoryId: freezed == parcelCategoryId
          ? _value.parcelCategoryId
          : parcelCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseFare: freezed == baseFare
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as int?,
      returnFee: freezed == returnFee
          ? _value.returnFee
          : returnFee // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationFee: freezed == cancellationFee
          ? _value.cancellationFee
          : cancellationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      farePerKm: freezed == farePerKm
          ? _value.farePerKm
          : farePerKm // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FareImplCopyWith<$Res> implements $FareCopyWith<$Res> {
  factory _$$FareImplCopyWith(
          _$FareImpl value, $Res Function(_$FareImpl) then) =
      __$$FareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parcel_fare_id') String? parcelFareId,
      @JsonKey(name: 'parcel_weight_id') String? parcelWeightId,
      @JsonKey(name: 'parcel_category_id') String? parcelCategoryId,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'return_fee') int? returnFee,
      @JsonKey(name: 'cancellation_fee') int? cancellationFee,
      @JsonKey(name: 'fare_per_km') String? farePerKm,
      @JsonKey(name: 'zone_id') String? zoneId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$FareImplCopyWithImpl<$Res>
    extends _$FareCopyWithImpl<$Res, _$FareImpl>
    implements _$$FareImplCopyWith<$Res> {
  __$$FareImplCopyWithImpl(_$FareImpl _value, $Res Function(_$FareImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fare
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parcelFareId = freezed,
    Object? parcelWeightId = freezed,
    Object? parcelCategoryId = freezed,
    Object? baseFare = freezed,
    Object? returnFee = freezed,
    Object? cancellationFee = freezed,
    Object? farePerKm = freezed,
    Object? zoneId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FareImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parcelFareId: freezed == parcelFareId
          ? _value.parcelFareId
          : parcelFareId // ignore: cast_nullable_to_non_nullable
              as String?,
      parcelWeightId: freezed == parcelWeightId
          ? _value.parcelWeightId
          : parcelWeightId // ignore: cast_nullable_to_non_nullable
              as String?,
      parcelCategoryId: freezed == parcelCategoryId
          ? _value.parcelCategoryId
          : parcelCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      baseFare: freezed == baseFare
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as int?,
      returnFee: freezed == returnFee
          ? _value.returnFee
          : returnFee // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationFee: freezed == cancellationFee
          ? _value.cancellationFee
          : cancellationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      farePerKm: freezed == farePerKm
          ? _value.farePerKm
          : farePerKm // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneId: freezed == zoneId
          ? _value.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
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
class _$FareImpl implements _Fare {
  const _$FareImpl(
      {this.id,
      @JsonKey(name: 'parcel_fare_id') this.parcelFareId,
      @JsonKey(name: 'parcel_weight_id') this.parcelWeightId,
      @JsonKey(name: 'parcel_category_id') this.parcelCategoryId,
      @JsonKey(name: 'base_fare') this.baseFare,
      @JsonKey(name: 'return_fee') this.returnFee,
      @JsonKey(name: 'cancellation_fee') this.cancellationFee,
      @JsonKey(name: 'fare_per_km') this.farePerKm,
      @JsonKey(name: 'zone_id') this.zoneId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$FareImpl.fromJson(Map<String, dynamic> json) =>
      _$$FareImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'parcel_fare_id')
  final String? parcelFareId;
  @override
  @JsonKey(name: 'parcel_weight_id')
  final String? parcelWeightId;
  @override
  @JsonKey(name: 'parcel_category_id')
  final String? parcelCategoryId;
  @override
  @JsonKey(name: 'base_fare')
  final int? baseFare;
  @override
  @JsonKey(name: 'return_fee')
  final int? returnFee;
  @override
  @JsonKey(name: 'cancellation_fee')
  final int? cancellationFee;
  @override
  @JsonKey(name: 'fare_per_km')
  final String? farePerKm;
  @override
  @JsonKey(name: 'zone_id')
  final String? zoneId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Fare(id: $id, parcelFareId: $parcelFareId, parcelWeightId: $parcelWeightId, parcelCategoryId: $parcelCategoryId, baseFare: $baseFare, returnFee: $returnFee, cancellationFee: $cancellationFee, farePerKm: $farePerKm, zoneId: $zoneId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FareImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parcelFareId, parcelFareId) ||
                other.parcelFareId == parcelFareId) &&
            (identical(other.parcelWeightId, parcelWeightId) ||
                other.parcelWeightId == parcelWeightId) &&
            (identical(other.parcelCategoryId, parcelCategoryId) ||
                other.parcelCategoryId == parcelCategoryId) &&
            (identical(other.baseFare, baseFare) ||
                other.baseFare == baseFare) &&
            (identical(other.returnFee, returnFee) ||
                other.returnFee == returnFee) &&
            (identical(other.cancellationFee, cancellationFee) ||
                other.cancellationFee == cancellationFee) &&
            (identical(other.farePerKm, farePerKm) ||
                other.farePerKm == farePerKm) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parcelFareId,
      parcelWeightId,
      parcelCategoryId,
      baseFare,
      returnFee,
      cancellationFee,
      farePerKm,
      zoneId,
      createdAt,
      updatedAt);

  /// Create a copy of Fare
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FareImplCopyWith<_$FareImpl> get copyWith =>
      __$$FareImplCopyWithImpl<_$FareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FareImplToJson(
      this,
    );
  }
}

abstract class _Fare implements Fare {
  const factory _Fare(
      {final int? id,
      @JsonKey(name: 'parcel_fare_id') final String? parcelFareId,
      @JsonKey(name: 'parcel_weight_id') final String? parcelWeightId,
      @JsonKey(name: 'parcel_category_id') final String? parcelCategoryId,
      @JsonKey(name: 'base_fare') final int? baseFare,
      @JsonKey(name: 'return_fee') final int? returnFee,
      @JsonKey(name: 'cancellation_fee') final int? cancellationFee,
      @JsonKey(name: 'fare_per_km') final String? farePerKm,
      @JsonKey(name: 'zone_id') final String? zoneId,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$FareImpl;

  factory _Fare.fromJson(Map<String, dynamic> json) = _$FareImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'parcel_fare_id')
  String? get parcelFareId;
  @override
  @JsonKey(name: 'parcel_weight_id')
  String? get parcelWeightId;
  @override
  @JsonKey(name: 'parcel_category_id')
  String? get parcelCategoryId;
  @override
  @JsonKey(name: 'base_fare')
  int? get baseFare;
  @override
  @JsonKey(name: 'return_fee')
  int? get returnFee;
  @override
  @JsonKey(name: 'cancellation_fee')
  int? get cancellationFee;
  @override
  @JsonKey(name: 'fare_per_km')
  String? get farePerKm;
  @override
  @JsonKey(name: 'zone_id')
  String? get zoneId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of Fare
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FareImplCopyWith<_$FareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
