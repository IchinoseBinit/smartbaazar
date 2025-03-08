// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_brands_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorBrandResponse _$VendorBrandResponseFromJson(Map<String, dynamic> json) {
  return _VendorBrandResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorBrandResponse {
  VendorBrandData? get data =>
      throw _privateConstructorUsedError; // Made nullable
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorBrandResponseCopyWith<VendorBrandResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorBrandResponseCopyWith<$Res> {
  factory $VendorBrandResponseCopyWith(
          VendorBrandResponse value, $Res Function(VendorBrandResponse) then) =
      _$VendorBrandResponseCopyWithImpl<$Res, VendorBrandResponse>;
  @useResult
  $Res call({VendorBrandData? data, String? msg});

  $VendorBrandDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendorBrandResponseCopyWithImpl<$Res, $Val extends VendorBrandResponse>
    implements $VendorBrandResponseCopyWith<$Res> {
  _$VendorBrandResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as VendorBrandData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorBrandDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendorBrandDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorBrandResponseImplCopyWith<$Res>
    implements $VendorBrandResponseCopyWith<$Res> {
  factory _$$VendorBrandResponseImplCopyWith(_$VendorBrandResponseImpl value,
          $Res Function(_$VendorBrandResponseImpl) then) =
      __$$VendorBrandResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VendorBrandData? data, String? msg});

  @override
  $VendorBrandDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendorBrandResponseImplCopyWithImpl<$Res>
    extends _$VendorBrandResponseCopyWithImpl<$Res, _$VendorBrandResponseImpl>
    implements _$$VendorBrandResponseImplCopyWith<$Res> {
  __$$VendorBrandResponseImplCopyWithImpl(_$VendorBrandResponseImpl _value,
      $Res Function(_$VendorBrandResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$VendorBrandResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorBrandData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorBrandResponseImpl implements _VendorBrandResponse {
  const _$VendorBrandResponseImpl({required this.data, required this.msg});

  factory _$VendorBrandResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorBrandResponseImplFromJson(json);

  @override
  final VendorBrandData? data;
// Made nullable
  @override
  final String? msg;

  @override
  String toString() {
    return 'VendorBrandResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorBrandResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorBrandResponseImplCopyWith<_$VendorBrandResponseImpl> get copyWith =>
      __$$VendorBrandResponseImplCopyWithImpl<_$VendorBrandResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorBrandResponseImplToJson(
      this,
    );
  }
}

abstract class _VendorBrandResponse implements VendorBrandResponse {
  const factory _VendorBrandResponse(
      {required final VendorBrandData? data,
      required final String? msg}) = _$VendorBrandResponseImpl;

  factory _VendorBrandResponse.fromJson(Map<String, dynamic> json) =
      _$VendorBrandResponseImpl.fromJson;

  @override
  VendorBrandData? get data;
  @override // Made nullable
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$VendorBrandResponseImplCopyWith<_$VendorBrandResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorBrandData _$VendorBrandDataFromJson(Map<String, dynamic> json) {
  return _VendorBrandData.fromJson(json);
}

/// @nodoc
mixin _$VendorBrandData {
  VendorAbout? get vendor_about => throw _privateConstructorUsedError;
  List<BrandNewModel>? get brandnew =>
      throw _privateConstructorUsedError; // Made nullable
  List<BrandNewModel>? get used =>
      throw _privateConstructorUsedError; // Made nullable
  List<BrandNewModel>? get services =>
      throw _privateConstructorUsedError; // Made nullable
  List<BrandNewModel>? get jobs =>
      throw _privateConstructorUsedError; // Made nullable
  List<BrandNewModel>? get events =>
      throw _privateConstructorUsedError; // Made nullable
  List<BrandNewModel>? get b2b =>
      throw _privateConstructorUsedError; // Made nullable
  List<BrandNewModel>? get grocery =>
      throw _privateConstructorUsedError; // Made nullable
  List<Deal>? get deals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorBrandDataCopyWith<VendorBrandData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorBrandDataCopyWith<$Res> {
  factory $VendorBrandDataCopyWith(
          VendorBrandData value, $Res Function(VendorBrandData) then) =
      _$VendorBrandDataCopyWithImpl<$Res, VendorBrandData>;
  @useResult
  $Res call(
      {VendorAbout? vendor_about,
      List<BrandNewModel>? brandnew,
      List<BrandNewModel>? used,
      List<BrandNewModel>? services,
      List<BrandNewModel>? jobs,
      List<BrandNewModel>? events,
      List<BrandNewModel>? b2b,
      List<BrandNewModel>? grocery,
      List<Deal>? deals});

  $VendorAboutCopyWith<$Res>? get vendor_about;
}

/// @nodoc
class _$VendorBrandDataCopyWithImpl<$Res, $Val extends VendorBrandData>
    implements $VendorBrandDataCopyWith<$Res> {
  _$VendorBrandDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor_about = freezed,
    Object? brandnew = freezed,
    Object? used = freezed,
    Object? services = freezed,
    Object? jobs = freezed,
    Object? events = freezed,
    Object? b2b = freezed,
    Object? grocery = freezed,
    Object? deals = freezed,
  }) {
    return _then(_value.copyWith(
      vendor_about: freezed == vendor_about
          ? _value.vendor_about
          : vendor_about // ignore: cast_nullable_to_non_nullable
              as VendorAbout?,
      brandnew: freezed == brandnew
          ? _value.brandnew
          : brandnew // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      used: freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      jobs: freezed == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      b2b: freezed == b2b
          ? _value.b2b
          : b2b // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      grocery: freezed == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      deals: freezed == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorAboutCopyWith<$Res>? get vendor_about {
    if (_value.vendor_about == null) {
      return null;
    }

    return $VendorAboutCopyWith<$Res>(_value.vendor_about!, (value) {
      return _then(_value.copyWith(vendor_about: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorBrandDataImplCopyWith<$Res>
    implements $VendorBrandDataCopyWith<$Res> {
  factory _$$VendorBrandDataImplCopyWith(_$VendorBrandDataImpl value,
          $Res Function(_$VendorBrandDataImpl) then) =
      __$$VendorBrandDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VendorAbout? vendor_about,
      List<BrandNewModel>? brandnew,
      List<BrandNewModel>? used,
      List<BrandNewModel>? services,
      List<BrandNewModel>? jobs,
      List<BrandNewModel>? events,
      List<BrandNewModel>? b2b,
      List<BrandNewModel>? grocery,
      List<Deal>? deals});

  @override
  $VendorAboutCopyWith<$Res>? get vendor_about;
}

/// @nodoc
class __$$VendorBrandDataImplCopyWithImpl<$Res>
    extends _$VendorBrandDataCopyWithImpl<$Res, _$VendorBrandDataImpl>
    implements _$$VendorBrandDataImplCopyWith<$Res> {
  __$$VendorBrandDataImplCopyWithImpl(
      _$VendorBrandDataImpl _value, $Res Function(_$VendorBrandDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor_about = freezed,
    Object? brandnew = freezed,
    Object? used = freezed,
    Object? services = freezed,
    Object? jobs = freezed,
    Object? events = freezed,
    Object? b2b = freezed,
    Object? grocery = freezed,
    Object? deals = freezed,
  }) {
    return _then(_$VendorBrandDataImpl(
      vendor_about: freezed == vendor_about
          ? _value.vendor_about
          : vendor_about // ignore: cast_nullable_to_non_nullable
              as VendorAbout?,
      brandnew: freezed == brandnew
          ? _value._brandnew
          : brandnew // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      used: freezed == used
          ? _value._used
          : used // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      jobs: freezed == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      b2b: freezed == b2b
          ? _value._b2b
          : b2b // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      grocery: freezed == grocery
          ? _value._grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<BrandNewModel>?,
      deals: freezed == deals
          ? _value._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Deal>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorBrandDataImpl implements _VendorBrandData {
  const _$VendorBrandDataImpl(
      {required this.vendor_about,
      required final List<BrandNewModel>? brandnew,
      final List<BrandNewModel>? used,
      final List<BrandNewModel>? services,
      final List<BrandNewModel>? jobs,
      final List<BrandNewModel>? events,
      final List<BrandNewModel>? b2b,
      final List<BrandNewModel>? grocery,
      required final List<Deal>? deals})
      : _brandnew = brandnew,
        _used = used,
        _services = services,
        _jobs = jobs,
        _events = events,
        _b2b = b2b,
        _grocery = grocery,
        _deals = deals;

  factory _$VendorBrandDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorBrandDataImplFromJson(json);

  @override
  final VendorAbout? vendor_about;
  final List<BrandNewModel>? _brandnew;
  @override
  List<BrandNewModel>? get brandnew {
    final value = _brandnew;
    if (value == null) return null;
    if (_brandnew is EqualUnmodifiableListView) return _brandnew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Made nullable
  final List<BrandNewModel>? _used;
// Made nullable
  @override
  List<BrandNewModel>? get used {
    final value = _used;
    if (value == null) return null;
    if (_used is EqualUnmodifiableListView) return _used;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Made nullable
  final List<BrandNewModel>? _services;
// Made nullable
  @override
  List<BrandNewModel>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Made nullable
  final List<BrandNewModel>? _jobs;
// Made nullable
  @override
  List<BrandNewModel>? get jobs {
    final value = _jobs;
    if (value == null) return null;
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Made nullable
  final List<BrandNewModel>? _events;
// Made nullable
  @override
  List<BrandNewModel>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Made nullable
  final List<BrandNewModel>? _b2b;
// Made nullable
  @override
  List<BrandNewModel>? get b2b {
    final value = _b2b;
    if (value == null) return null;
    if (_b2b is EqualUnmodifiableListView) return _b2b;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Made nullable
  final List<BrandNewModel>? _grocery;
// Made nullable
  @override
  List<BrandNewModel>? get grocery {
    final value = _grocery;
    if (value == null) return null;
    if (_grocery is EqualUnmodifiableListView) return _grocery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Made nullable
  final List<Deal>? _deals;
// Made nullable
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
    return 'VendorBrandData(vendor_about: $vendor_about, brandnew: $brandnew, used: $used, services: $services, jobs: $jobs, events: $events, b2b: $b2b, grocery: $grocery, deals: $deals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorBrandDataImpl &&
            (identical(other.vendor_about, vendor_about) ||
                other.vendor_about == vendor_about) &&
            const DeepCollectionEquality().equals(other._brandnew, _brandnew) &&
            const DeepCollectionEquality().equals(other._used, _used) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._b2b, _b2b) &&
            const DeepCollectionEquality().equals(other._grocery, _grocery) &&
            const DeepCollectionEquality().equals(other._deals, _deals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendor_about,
      const DeepCollectionEquality().hash(_brandnew),
      const DeepCollectionEquality().hash(_used),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_jobs),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_b2b),
      const DeepCollectionEquality().hash(_grocery),
      const DeepCollectionEquality().hash(_deals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorBrandDataImplCopyWith<_$VendorBrandDataImpl> get copyWith =>
      __$$VendorBrandDataImplCopyWithImpl<_$VendorBrandDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorBrandDataImplToJson(
      this,
    );
  }
}

abstract class _VendorBrandData implements VendorBrandData {
  const factory _VendorBrandData(
      {required final VendorAbout? vendor_about,
      required final List<BrandNewModel>? brandnew,
      final List<BrandNewModel>? used,
      final List<BrandNewModel>? services,
      final List<BrandNewModel>? jobs,
      final List<BrandNewModel>? events,
      final List<BrandNewModel>? b2b,
      final List<BrandNewModel>? grocery,
      required final List<Deal>? deals}) = _$VendorBrandDataImpl;

  factory _VendorBrandData.fromJson(Map<String, dynamic> json) =
      _$VendorBrandDataImpl.fromJson;

  @override
  VendorAbout? get vendor_about;
  @override
  List<BrandNewModel>? get brandnew;
  @override // Made nullable
  List<BrandNewModel>? get used;
  @override // Made nullable
  List<BrandNewModel>? get services;
  @override // Made nullable
  List<BrandNewModel>? get jobs;
  @override // Made nullable
  List<BrandNewModel>? get events;
  @override // Made nullable
  List<BrandNewModel>? get b2b;
  @override // Made nullable
  List<BrandNewModel>? get grocery;
  @override // Made nullable
  List<Deal>? get deals;
  @override
  @JsonKey(ignore: true)
  _$$VendorBrandDataImplCopyWith<_$VendorBrandDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
