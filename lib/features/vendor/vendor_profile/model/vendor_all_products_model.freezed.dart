// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_all_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorAllProductsResponse _$VendorAllProductsResponseFromJson(
    Map<String, dynamic> json) {
  return _VendorAllProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorAllProductsResponse {
  VendorProfileAllProductsData get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorAllProductsResponseCopyWith<VendorAllProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorAllProductsResponseCopyWith<$Res> {
  factory $VendorAllProductsResponseCopyWith(VendorAllProductsResponse value,
          $Res Function(VendorAllProductsResponse) then) =
      _$VendorAllProductsResponseCopyWithImpl<$Res, VendorAllProductsResponse>;
  @useResult
  $Res call({VendorProfileAllProductsData data, String msg});

  $VendorProfileAllProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$VendorAllProductsResponseCopyWithImpl<$Res,
        $Val extends VendorAllProductsResponse>
    implements $VendorAllProductsResponseCopyWith<$Res> {
  _$VendorAllProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorProfileAllProductsData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorProfileAllProductsDataCopyWith<$Res> get data {
    return $VendorProfileAllProductsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorAllProductsResponseImplCopyWith<$Res>
    implements $VendorAllProductsResponseCopyWith<$Res> {
  factory _$$VendorAllProductsResponseImplCopyWith(
          _$VendorAllProductsResponseImpl value,
          $Res Function(_$VendorAllProductsResponseImpl) then) =
      __$$VendorAllProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VendorProfileAllProductsData data, String msg});

  @override
  $VendorProfileAllProductsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$VendorAllProductsResponseImplCopyWithImpl<$Res>
    extends _$VendorAllProductsResponseCopyWithImpl<$Res,
        _$VendorAllProductsResponseImpl>
    implements _$$VendorAllProductsResponseImplCopyWith<$Res> {
  __$$VendorAllProductsResponseImplCopyWithImpl(
      _$VendorAllProductsResponseImpl _value,
      $Res Function(_$VendorAllProductsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$VendorAllProductsResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorProfileAllProductsData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorAllProductsResponseImpl implements _VendorAllProductsResponse {
  const _$VendorAllProductsResponseImpl(
      {required this.data, required this.msg});

  factory _$VendorAllProductsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorAllProductsResponseImplFromJson(json);

  @override
  final VendorProfileAllProductsData data;
  @override
  final String msg;

  @override
  String toString() {
    return 'VendorAllProductsResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorAllProductsResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorAllProductsResponseImplCopyWith<_$VendorAllProductsResponseImpl>
      get copyWith => __$$VendorAllProductsResponseImplCopyWithImpl<
          _$VendorAllProductsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorAllProductsResponseImplToJson(
      this,
    );
  }
}

abstract class _VendorAllProductsResponse implements VendorAllProductsResponse {
  const factory _VendorAllProductsResponse(
      {required final VendorProfileAllProductsData data,
      required final String msg}) = _$VendorAllProductsResponseImpl;

  factory _VendorAllProductsResponse.fromJson(Map<String, dynamic> json) =
      _$VendorAllProductsResponseImpl.fromJson;

  @override
  VendorProfileAllProductsData get data;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$VendorAllProductsResponseImplCopyWith<_$VendorAllProductsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VendorProfileAllProductsData _$VendorProfileAllProductsDataFromJson(
    Map<String, dynamic> json) {
  return _VendorProfileAllProductsData.fromJson(json);
}

/// @nodoc
mixin _$VendorProfileAllProductsData {
  List<BrandNewModel>? get all_products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProfileAllProductsDataCopyWith<VendorProfileAllProductsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProfileAllProductsDataCopyWith<$Res> {
  factory $VendorProfileAllProductsDataCopyWith(
          VendorProfileAllProductsData value,
          $Res Function(VendorProfileAllProductsData) then) =
      _$VendorProfileAllProductsDataCopyWithImpl<$Res,
          VendorProfileAllProductsData>;
  @useResult
  $Res call({List<BrandNewModel>? all_products});
}

/// @nodoc
class _$VendorProfileAllProductsDataCopyWithImpl<$Res,
        $Val extends VendorProfileAllProductsData>
    implements $VendorProfileAllProductsDataCopyWith<$Res> {
  _$VendorProfileAllProductsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all_products = freezed,
  }) {
    return _then(_value.copyWith(
      all_products: freezed == all_products
          ? _value.all_products
          : all_products // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorProfileAllProductsDataImplCopyWith<$Res>
    implements $VendorProfileAllProductsDataCopyWith<$Res> {
  factory _$$VendorProfileAllProductsDataImplCopyWith(
          _$VendorProfileAllProductsDataImpl value,
          $Res Function(_$VendorProfileAllProductsDataImpl) then) =
      __$$VendorProfileAllProductsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandNewModel>? all_products});
}

/// @nodoc
class __$$VendorProfileAllProductsDataImplCopyWithImpl<$Res>
    extends _$VendorProfileAllProductsDataCopyWithImpl<$Res,
        _$VendorProfileAllProductsDataImpl>
    implements _$$VendorProfileAllProductsDataImplCopyWith<$Res> {
  __$$VendorProfileAllProductsDataImplCopyWithImpl(
      _$VendorProfileAllProductsDataImpl _value,
      $Res Function(_$VendorProfileAllProductsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all_products = freezed,
  }) {
    return _then(_$VendorProfileAllProductsDataImpl(
      all_products: freezed == all_products
          ? _value._all_products
          : all_products // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProfileAllProductsDataImpl
    implements _VendorProfileAllProductsData {
  const _$VendorProfileAllProductsDataImpl(
      {final List<BrandNewModel>? all_products})
      : _all_products = all_products;

  factory _$VendorProfileAllProductsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VendorProfileAllProductsDataImplFromJson(json);

  final List<BrandNewModel>? _all_products;
  @override
  List<BrandNewModel>? get all_products {
    final value = _all_products;
    if (value == null) return null;
    if (_all_products is EqualUnmodifiableListView) return _all_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VendorProfileAllProductsData(all_products: $all_products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProfileAllProductsDataImpl &&
            const DeepCollectionEquality()
                .equals(other._all_products, _all_products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_all_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProfileAllProductsDataImplCopyWith<
          _$VendorProfileAllProductsDataImpl>
      get copyWith => __$$VendorProfileAllProductsDataImplCopyWithImpl<
          _$VendorProfileAllProductsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProfileAllProductsDataImplToJson(
      this,
    );
  }
}

abstract class _VendorProfileAllProductsData
    implements VendorProfileAllProductsData {
  const factory _VendorProfileAllProductsData(
          {final List<BrandNewModel>? all_products}) =
      _$VendorProfileAllProductsDataImpl;

  factory _VendorProfileAllProductsData.fromJson(Map<String, dynamic> json) =
      _$VendorProfileAllProductsDataImpl.fromJson;

  @override
  List<BrandNewModel>? get all_products;
  @override
  @JsonKey(ignore: true)
  _$$VendorProfileAllProductsDataImplCopyWith<
          _$VendorProfileAllProductsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
