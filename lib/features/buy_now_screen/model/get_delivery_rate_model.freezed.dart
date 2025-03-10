// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_delivery_rate_model.dart';

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
  String? get responseCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get totalSize => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  ParcelFareData? get data => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {String? responseCode,
      String? message,
      int? totalSize,
      int? limit,
      int? offset,
      ParcelFareData? data,
      List<dynamic>? errors});

  $ParcelFareDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ParcelFareResponseCopyWithImpl<$Res, $Val extends ParcelFareResponse>
    implements $ParcelFareResponseCopyWith<$Res> {
  _$ParcelFareResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as ParcelFareData?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParcelFareDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ParcelFareDataCopyWith<$Res>(_value.data!, (value) {
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
      {String? responseCode,
      String? message,
      int? totalSize,
      int? limit,
      int? offset,
      ParcelFareData? data,
      List<dynamic>? errors});

  @override
  $ParcelFareDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ParcelFareResponseImplCopyWithImpl<$Res>
    extends _$ParcelFareResponseCopyWithImpl<$Res, _$ParcelFareResponseImpl>
    implements _$$ParcelFareResponseImplCopyWith<$Res> {
  __$$ParcelFareResponseImplCopyWithImpl(_$ParcelFareResponseImpl _value,
      $Res Function(_$ParcelFareResponseImpl) _then)
      : super(_value, _then);

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
              as ParcelFareData?,
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
      {this.responseCode,
      this.message,
      this.totalSize,
      this.limit,
      this.offset,
      this.data,
      final List<dynamic>? errors})
      : _errors = errors;

  factory _$ParcelFareResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelFareResponseImplFromJson(json);

  @override
  final String? responseCode;
  @override
  final String? message;
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final ParcelFareData? data;
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, responseCode, message, totalSize,
      limit, offset, data, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
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
      {final String? responseCode,
      final String? message,
      final int? totalSize,
      final int? limit,
      final int? offset,
      final ParcelFareData? data,
      final List<dynamic>? errors}) = _$ParcelFareResponseImpl;

  factory _ParcelFareResponse.fromJson(Map<String, dynamic> json) =
      _$ParcelFareResponseImpl.fromJson;

  @override
  String? get responseCode;
  @override
  String? get message;
  @override
  int? get totalSize;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  ParcelFareData? get data;
  @override
  List<dynamic>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$ParcelFareResponseImplCopyWith<_$ParcelFareResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParcelFareData _$ParcelFareDataFromJson(Map<String, dynamic> json) {
  return _ParcelFareData.fromJson(json);
}

/// @nodoc
mixin _$ParcelFareData {
  String? get id => throw _privateConstructorUsedError;
  String? get zoneId => throw _privateConstructorUsedError;
  String? get areaId => throw _privateConstructorUsedError;
  int? get baseFare => throw _privateConstructorUsedError;
  int? get baseFarePerKm => throw _privateConstructorUsedError;
  List<Fare>? get fare => throw _privateConstructorUsedError;
  double? get estimatedDistance => throw _privateConstructorUsedError;
  String? get estimatedDuration => throw _privateConstructorUsedError;
  int? get estimatedFare => throw _privateConstructorUsedError;
  int? get discountFare => throw _privateConstructorUsedError;
  int? get discountAmount => throw _privateConstructorUsedError;
  bool? get couponApplicable => throw _privateConstructorUsedError;
  String? get requestType => throw _privateConstructorUsedError;
  String? get encodedPolyline => throw _privateConstructorUsedError;
  int? get returnFee => throw _privateConstructorUsedError;
  int? get cancellationFee => throw _privateConstructorUsedError;
  int? get extraEstimatedFare => throw _privateConstructorUsedError;
  int? get extraDiscountFare => throw _privateConstructorUsedError;
  int? get extraDiscountAmount => throw _privateConstructorUsedError;
  int? get extraReturnFee => throw _privateConstructorUsedError;
  int? get extraCancellationFee => throw _privateConstructorUsedError;
  int? get extraFareAmount => throw _privateConstructorUsedError;
  int? get extraFareFee => throw _privateConstructorUsedError;
  String? get extraFareReason => throw _privateConstructorUsedError;
  int? get estId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelFareDataCopyWith<ParcelFareData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelFareDataCopyWith<$Res> {
  factory $ParcelFareDataCopyWith(
          ParcelFareData value, $Res Function(ParcelFareData) then) =
      _$ParcelFareDataCopyWithImpl<$Res, ParcelFareData>;
  @useResult
  $Res call(
      {String? id,
      String? zoneId,
      String? areaId,
      int? baseFare,
      int? baseFarePerKm,
      List<Fare>? fare,
      double? estimatedDistance,
      String? estimatedDuration,
      int? estimatedFare,
      int? discountFare,
      int? discountAmount,
      bool? couponApplicable,
      String? requestType,
      String? encodedPolyline,
      int? returnFee,
      int? cancellationFee,
      int? extraEstimatedFare,
      int? extraDiscountFare,
      int? extraDiscountAmount,
      int? extraReturnFee,
      int? extraCancellationFee,
      int? extraFareAmount,
      int? extraFareFee,
      String? extraFareReason,
      int? estId});
}

/// @nodoc
class _$ParcelFareDataCopyWithImpl<$Res, $Val extends ParcelFareData>
    implements $ParcelFareDataCopyWith<$Res> {
  _$ParcelFareDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$ParcelFareDataImplCopyWith<$Res>
    implements $ParcelFareDataCopyWith<$Res> {
  factory _$$ParcelFareDataImplCopyWith(_$ParcelFareDataImpl value,
          $Res Function(_$ParcelFareDataImpl) then) =
      __$$ParcelFareDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? zoneId,
      String? areaId,
      int? baseFare,
      int? baseFarePerKm,
      List<Fare>? fare,
      double? estimatedDistance,
      String? estimatedDuration,
      int? estimatedFare,
      int? discountFare,
      int? discountAmount,
      bool? couponApplicable,
      String? requestType,
      String? encodedPolyline,
      int? returnFee,
      int? cancellationFee,
      int? extraEstimatedFare,
      int? extraDiscountFare,
      int? extraDiscountAmount,
      int? extraReturnFee,
      int? extraCancellationFee,
      int? extraFareAmount,
      int? extraFareFee,
      String? extraFareReason,
      int? estId});
}

/// @nodoc
class __$$ParcelFareDataImplCopyWithImpl<$Res>
    extends _$ParcelFareDataCopyWithImpl<$Res, _$ParcelFareDataImpl>
    implements _$$ParcelFareDataImplCopyWith<$Res> {
  __$$ParcelFareDataImplCopyWithImpl(
      _$ParcelFareDataImpl _value, $Res Function(_$ParcelFareDataImpl) _then)
      : super(_value, _then);

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
    return _then(_$ParcelFareDataImpl(
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
class _$ParcelFareDataImpl implements _ParcelFareData {
  const _$ParcelFareDataImpl(
      {this.id,
      this.zoneId,
      this.areaId,
      this.baseFare,
      this.baseFarePerKm,
      final List<Fare>? fare,
      this.estimatedDistance,
      this.estimatedDuration,
      this.estimatedFare,
      this.discountFare,
      this.discountAmount,
      this.couponApplicable,
      this.requestType,
      this.encodedPolyline,
      this.returnFee,
      this.cancellationFee,
      this.extraEstimatedFare,
      this.extraDiscountFare,
      this.extraDiscountAmount,
      this.extraReturnFee,
      this.extraCancellationFee,
      this.extraFareAmount,
      this.extraFareFee,
      this.extraFareReason,
      this.estId})
      : _fare = fare;

  factory _$ParcelFareDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelFareDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? zoneId;
  @override
  final String? areaId;
  @override
  final int? baseFare;
  @override
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
  final double? estimatedDistance;
  @override
  final String? estimatedDuration;
  @override
  final int? estimatedFare;
  @override
  final int? discountFare;
  @override
  final int? discountAmount;
  @override
  final bool? couponApplicable;
  @override
  final String? requestType;
  @override
  final String? encodedPolyline;
  @override
  final int? returnFee;
  @override
  final int? cancellationFee;
  @override
  final int? extraEstimatedFare;
  @override
  final int? extraDiscountFare;
  @override
  final int? extraDiscountAmount;
  @override
  final int? extraReturnFee;
  @override
  final int? extraCancellationFee;
  @override
  final int? extraFareAmount;
  @override
  final int? extraFareFee;
  @override
  final String? extraFareReason;
  @override
  final int? estId;

  @override
  String toString() {
    return 'ParcelFareData(id: $id, zoneId: $zoneId, areaId: $areaId, baseFare: $baseFare, baseFarePerKm: $baseFarePerKm, fare: $fare, estimatedDistance: $estimatedDistance, estimatedDuration: $estimatedDuration, estimatedFare: $estimatedFare, discountFare: $discountFare, discountAmount: $discountAmount, couponApplicable: $couponApplicable, requestType: $requestType, encodedPolyline: $encodedPolyline, returnFee: $returnFee, cancellationFee: $cancellationFee, extraEstimatedFare: $extraEstimatedFare, extraDiscountFare: $extraDiscountFare, extraDiscountAmount: $extraDiscountAmount, extraReturnFee: $extraReturnFee, extraCancellationFee: $extraCancellationFee, extraFareAmount: $extraFareAmount, extraFareFee: $extraFareFee, extraFareReason: $extraFareReason, estId: $estId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelFareDataImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelFareDataImplCopyWith<_$ParcelFareDataImpl> get copyWith =>
      __$$ParcelFareDataImplCopyWithImpl<_$ParcelFareDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelFareDataImplToJson(
      this,
    );
  }
}

abstract class _ParcelFareData implements ParcelFareData {
  const factory _ParcelFareData(
      {final String? id,
      final String? zoneId,
      final String? areaId,
      final int? baseFare,
      final int? baseFarePerKm,
      final List<Fare>? fare,
      final double? estimatedDistance,
      final String? estimatedDuration,
      final int? estimatedFare,
      final int? discountFare,
      final int? discountAmount,
      final bool? couponApplicable,
      final String? requestType,
      final String? encodedPolyline,
      final int? returnFee,
      final int? cancellationFee,
      final int? extraEstimatedFare,
      final int? extraDiscountFare,
      final int? extraDiscountAmount,
      final int? extraReturnFee,
      final int? extraCancellationFee,
      final int? extraFareAmount,
      final int? extraFareFee,
      final String? extraFareReason,
      final int? estId}) = _$ParcelFareDataImpl;

  factory _ParcelFareData.fromJson(Map<String, dynamic> json) =
      _$ParcelFareDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get zoneId;
  @override
  String? get areaId;
  @override
  int? get baseFare;
  @override
  int? get baseFarePerKm;
  @override
  List<Fare>? get fare;
  @override
  double? get estimatedDistance;
  @override
  String? get estimatedDuration;
  @override
  int? get estimatedFare;
  @override
  int? get discountFare;
  @override
  int? get discountAmount;
  @override
  bool? get couponApplicable;
  @override
  String? get requestType;
  @override
  String? get encodedPolyline;
  @override
  int? get returnFee;
  @override
  int? get cancellationFee;
  @override
  int? get extraEstimatedFare;
  @override
  int? get extraDiscountFare;
  @override
  int? get extraDiscountAmount;
  @override
  int? get extraReturnFee;
  @override
  int? get extraCancellationFee;
  @override
  int? get extraFareAmount;
  @override
  int? get extraFareFee;
  @override
  String? get extraFareReason;
  @override
  int? get estId;
  @override
  @JsonKey(ignore: true)
  _$$ParcelFareDataImplCopyWith<_$ParcelFareDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fare _$FareFromJson(Map<String, dynamic> json) {
  return _Fare.fromJson(json);
}

/// @nodoc
mixin _$Fare {
  int? get id => throw _privateConstructorUsedError;
  String? get parcelFareId => throw _privateConstructorUsedError;
  String? get parcelWeightId => throw _privateConstructorUsedError;
  String? get parcelCategoryId => throw _privateConstructorUsedError;
  int? get baseFare => throw _privateConstructorUsedError;
  int? get returnFee => throw _privateConstructorUsedError;
  int? get cancellationFee => throw _privateConstructorUsedError;
  String? get farePerKm => throw _privateConstructorUsedError;
  String? get zoneId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FareCopyWith<Fare> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FareCopyWith<$Res> {
  factory $FareCopyWith(Fare value, $Res Function(Fare) then) =
      _$FareCopyWithImpl<$Res, Fare>;
  @useResult
  $Res call(
      {int? id,
      String? parcelFareId,
      String? parcelWeightId,
      String? parcelCategoryId,
      int? baseFare,
      int? returnFee,
      int? cancellationFee,
      String? farePerKm,
      String? zoneId,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$FareCopyWithImpl<$Res, $Val extends Fare>
    implements $FareCopyWith<$Res> {
  _$FareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
      String? parcelFareId,
      String? parcelWeightId,
      String? parcelCategoryId,
      int? baseFare,
      int? returnFee,
      int? cancellationFee,
      String? farePerKm,
      String? zoneId,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$FareImplCopyWithImpl<$Res>
    extends _$FareCopyWithImpl<$Res, _$FareImpl>
    implements _$$FareImplCopyWith<$Res> {
  __$$FareImplCopyWithImpl(_$FareImpl _value, $Res Function(_$FareImpl) _then)
      : super(_value, _then);

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
      this.parcelFareId,
      this.parcelWeightId,
      this.parcelCategoryId,
      this.baseFare,
      this.returnFee,
      this.cancellationFee,
      this.farePerKm,
      this.zoneId,
      this.createdAt,
      this.updatedAt});

  factory _$FareImpl.fromJson(Map<String, dynamic> json) =>
      _$$FareImplFromJson(json);

  @override
  final int? id;
  @override
  final String? parcelFareId;
  @override
  final String? parcelWeightId;
  @override
  final String? parcelCategoryId;
  @override
  final int? baseFare;
  @override
  final int? returnFee;
  @override
  final int? cancellationFee;
  @override
  final String? farePerKm;
  @override
  final String? zoneId;
  @override
  final String? createdAt;
  @override
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
      final String? parcelFareId,
      final String? parcelWeightId,
      final String? parcelCategoryId,
      final int? baseFare,
      final int? returnFee,
      final int? cancellationFee,
      final String? farePerKm,
      final String? zoneId,
      final String? createdAt,
      final String? updatedAt}) = _$FareImpl;

  factory _Fare.fromJson(Map<String, dynamic> json) = _$FareImpl.fromJson;

  @override
  int? get id;
  @override
  String? get parcelFareId;
  @override
  String? get parcelWeightId;
  @override
  String? get parcelCategoryId;
  @override
  int? get baseFare;
  @override
  int? get returnFee;
  @override
  int? get cancellationFee;
  @override
  String? get farePerKm;
  @override
  String? get zoneId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FareImplCopyWith<_$FareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
