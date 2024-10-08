// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_bazar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandBazarModel _$BrandBazarModelFromJson(Map<String, dynamic> json) {
  return _BrandBazarModel.fromJson(json);
}

/// @nodoc
mixin _$BrandBazarModel {
  Data get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this BrandBazarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandBazarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandBazarModelCopyWith<BrandBazarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandBazarModelCopyWith<$Res> {
  factory $BrandBazarModelCopyWith(
          BrandBazarModel value, $Res Function(BrandBazarModel) then) =
      _$BrandBazarModelCopyWithImpl<$Res, BrandBazarModel>;
  @useResult
  $Res call({Data data, String msg});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$BrandBazarModelCopyWithImpl<$Res, $Val extends BrandBazarModel>
    implements $BrandBazarModelCopyWith<$Res> {
  _$BrandBazarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandBazarModel
  /// with the given fields replaced by the non-null parameter values.
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
              as Data,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of BrandBazarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandBazarModelImplCopyWith<$Res>
    implements $BrandBazarModelCopyWith<$Res> {
  factory _$$BrandBazarModelImplCopyWith(_$BrandBazarModelImpl value,
          $Res Function(_$BrandBazarModelImpl) then) =
      __$$BrandBazarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data, String msg});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$BrandBazarModelImplCopyWithImpl<$Res>
    extends _$BrandBazarModelCopyWithImpl<$Res, _$BrandBazarModelImpl>
    implements _$$BrandBazarModelImplCopyWith<$Res> {
  __$$BrandBazarModelImplCopyWithImpl(
      _$BrandBazarModelImpl _value, $Res Function(_$BrandBazarModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandBazarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$BrandBazarModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandBazarModelImpl implements _BrandBazarModel {
  const _$BrandBazarModelImpl({required this.data, required this.msg});

  factory _$BrandBazarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandBazarModelImplFromJson(json);

  @override
  final Data data;
  @override
  final String msg;

  @override
  String toString() {
    return 'BrandBazarModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandBazarModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of BrandBazarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandBazarModelImplCopyWith<_$BrandBazarModelImpl> get copyWith =>
      __$$BrandBazarModelImplCopyWithImpl<_$BrandBazarModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandBazarModelImplToJson(
      this,
    );
  }
}

abstract class _BrandBazarModel implements BrandBazarModel {
  const factory _BrandBazarModel(
      {required final Data data,
      required final String msg}) = _$BrandBazarModelImpl;

  factory _BrandBazarModel.fromJson(Map<String, dynamic> json) =
      _$BrandBazarModelImpl.fromJson;

  @override
  Data get data;
  @override
  String get msg;

  /// Create a copy of BrandBazarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandBazarModelImplCopyWith<_$BrandBazarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "new_products")
  List<dynamic>? get newProducts => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<dynamic>? get services => throw _privateConstructorUsedError;
  @JsonKey(name: "jobs")
  List<dynamic>? get jobs => throw _privateConstructorUsedError;
  @JsonKey(name: "events")
  List<dynamic>? get events => throw _privateConstructorUsedError;
  @JsonKey(name: "grocery")
  List<dynamic>? get grocery => throw _privateConstructorUsedError;
  @JsonKey(name: "advertisements")
  List<Advertisement>? get advertisements => throw _privateConstructorUsedError;
  @JsonKey(name: "trand_banners")
  List<TrendBanner>? get trandBanners => throw _privateConstructorUsedError;
  @JsonKey(name: "brandbazarLogos")
  List<BrandbazarLogo>? get brandbazarLogos =>
      throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "new_products") List<dynamic>? newProducts,
      @JsonKey(name: "services") List<dynamic>? services,
      @JsonKey(name: "jobs") List<dynamic>? jobs,
      @JsonKey(name: "events") List<dynamic>? events,
      @JsonKey(name: "grocery") List<dynamic>? grocery,
      @JsonKey(name: "advertisements") List<Advertisement>? advertisements,
      @JsonKey(name: "trand_banners") List<TrendBanner>? trandBanners,
      @JsonKey(name: "brandbazarLogos") List<BrandbazarLogo>? brandbazarLogos});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newProducts = freezed,
    Object? services = freezed,
    Object? jobs = freezed,
    Object? events = freezed,
    Object? grocery = freezed,
    Object? advertisements = freezed,
    Object? trandBanners = freezed,
    Object? brandbazarLogos = freezed,
  }) {
    return _then(_value.copyWith(
      newProducts: freezed == newProducts
          ? _value.newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      jobs: freezed == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      grocery: freezed == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      advertisements: freezed == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>?,
      trandBanners: freezed == trandBanners
          ? _value.trandBanners
          : trandBanners // ignore: cast_nullable_to_non_nullable
              as List<TrendBanner>?,
      brandbazarLogos: freezed == brandbazarLogos
          ? _value.brandbazarLogos
          : brandbazarLogos // ignore: cast_nullable_to_non_nullable
              as List<BrandbazarLogo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "new_products") List<dynamic>? newProducts,
      @JsonKey(name: "services") List<dynamic>? services,
      @JsonKey(name: "jobs") List<dynamic>? jobs,
      @JsonKey(name: "events") List<dynamic>? events,
      @JsonKey(name: "grocery") List<dynamic>? grocery,
      @JsonKey(name: "advertisements") List<Advertisement>? advertisements,
      @JsonKey(name: "trand_banners") List<TrendBanner>? trandBanners,
      @JsonKey(name: "brandbazarLogos") List<BrandbazarLogo>? brandbazarLogos});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newProducts = freezed,
    Object? services = freezed,
    Object? jobs = freezed,
    Object? events = freezed,
    Object? grocery = freezed,
    Object? advertisements = freezed,
    Object? trandBanners = freezed,
    Object? brandbazarLogos = freezed,
  }) {
    return _then(_$DataImpl(
      newProducts: freezed == newProducts
          ? _value._newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      jobs: freezed == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      grocery: freezed == grocery
          ? _value._grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      advertisements: freezed == advertisements
          ? _value._advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>?,
      trandBanners: freezed == trandBanners
          ? _value._trandBanners
          : trandBanners // ignore: cast_nullable_to_non_nullable
              as List<TrendBanner>?,
      brandbazarLogos: freezed == brandbazarLogos
          ? _value._brandbazarLogos
          : brandbazarLogos // ignore: cast_nullable_to_non_nullable
              as List<BrandbazarLogo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "new_products") required final List<dynamic>? newProducts,
      @JsonKey(name: "services") required final List<dynamic>? services,
      @JsonKey(name: "jobs") required final List<dynamic>? jobs,
      @JsonKey(name: "events") required final List<dynamic>? events,
      @JsonKey(name: "grocery") required final List<dynamic>? grocery,
      @JsonKey(name: "advertisements")
      required final List<Advertisement>? advertisements,
      @JsonKey(name: "trand_banners")
      required final List<TrendBanner>? trandBanners,
      @JsonKey(name: "brandbazarLogos")
      required final List<BrandbazarLogo>? brandbazarLogos})
      : _newProducts = newProducts,
        _services = services,
        _jobs = jobs,
        _events = events,
        _grocery = grocery,
        _advertisements = advertisements,
        _trandBanners = trandBanners,
        _brandbazarLogos = brandbazarLogos;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<dynamic>? _newProducts;
  @override
  @JsonKey(name: "new_products")
  List<dynamic>? get newProducts {
    final value = _newProducts;
    if (value == null) return null;
    if (_newProducts is EqualUnmodifiableListView) return _newProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _services;
  @override
  @JsonKey(name: "services")
  List<dynamic>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _jobs;
  @override
  @JsonKey(name: "jobs")
  List<dynamic>? get jobs {
    final value = _jobs;
    if (value == null) return null;
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _events;
  @override
  @JsonKey(name: "events")
  List<dynamic>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _grocery;
  @override
  @JsonKey(name: "grocery")
  List<dynamic>? get grocery {
    final value = _grocery;
    if (value == null) return null;
    if (_grocery is EqualUnmodifiableListView) return _grocery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Advertisement>? _advertisements;
  @override
  @JsonKey(name: "advertisements")
  List<Advertisement>? get advertisements {
    final value = _advertisements;
    if (value == null) return null;
    if (_advertisements is EqualUnmodifiableListView) return _advertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TrendBanner>? _trandBanners;
  @override
  @JsonKey(name: "trand_banners")
  List<TrendBanner>? get trandBanners {
    final value = _trandBanners;
    if (value == null) return null;
    if (_trandBanners is EqualUnmodifiableListView) return _trandBanners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BrandbazarLogo>? _brandbazarLogos;
  @override
  @JsonKey(name: "brandbazarLogos")
  List<BrandbazarLogo>? get brandbazarLogos {
    final value = _brandbazarLogos;
    if (value == null) return null;
    if (_brandbazarLogos is EqualUnmodifiableListView) return _brandbazarLogos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(newProducts: $newProducts, services: $services, jobs: $jobs, events: $events, grocery: $grocery, advertisements: $advertisements, trandBanners: $trandBanners, brandbazarLogos: $brandbazarLogos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._newProducts, _newProducts) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._grocery, _grocery) &&
            const DeepCollectionEquality()
                .equals(other._advertisements, _advertisements) &&
            const DeepCollectionEquality()
                .equals(other._trandBanners, _trandBanners) &&
            const DeepCollectionEquality()
                .equals(other._brandbazarLogos, _brandbazarLogos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newProducts),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_jobs),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_grocery),
      const DeepCollectionEquality().hash(_advertisements),
      const DeepCollectionEquality().hash(_trandBanners),
      const DeepCollectionEquality().hash(_brandbazarLogos));

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "new_products") required final List<dynamic>? newProducts,
      @JsonKey(name: "services") required final List<dynamic>? services,
      @JsonKey(name: "jobs") required final List<dynamic>? jobs,
      @JsonKey(name: "events") required final List<dynamic>? events,
      @JsonKey(name: "grocery") required final List<dynamic>? grocery,
      @JsonKey(name: "advertisements")
      required final List<Advertisement>? advertisements,
      @JsonKey(name: "trand_banners")
      required final List<TrendBanner>? trandBanners,
      @JsonKey(name: "brandbazarLogos")
      required final List<BrandbazarLogo>? brandbazarLogos}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "new_products")
  List<dynamic>? get newProducts;
  @override
  @JsonKey(name: "services")
  List<dynamic>? get services;
  @override
  @JsonKey(name: "jobs")
  List<dynamic>? get jobs;
  @override
  @JsonKey(name: "events")
  List<dynamic>? get events;
  @override
  @JsonKey(name: "grocery")
  List<dynamic>? get grocery;
  @override
  @JsonKey(name: "advertisements")
  List<Advertisement>? get advertisements;
  @override
  @JsonKey(name: "trand_banners")
  List<TrendBanner>? get trandBanners;
  @override
  @JsonKey(name: "brandbazarLogos")
  List<BrandbazarLogo>? get brandbazarLogos;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Advertisement _$AdvertisementFromJson(Map<String, dynamic> json) {
  return _Advertisement.fromJson(json);
}

/// @nodoc
mixin _$Advertisement {
  String? get id => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Advertisement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertisementCopyWith<Advertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementCopyWith<$Res> {
  factory $AdvertisementCopyWith(
          Advertisement value, $Res Function(Advertisement) then) =
      _$AdvertisementCopyWithImpl<$Res, Advertisement>;
  @useResult
  $Res call(
      {String? id,
      String? order,
      String? status,
      String? image,
      String? link,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$AdvertisementCopyWithImpl<$Res, $Val extends Advertisement>
    implements $AdvertisementCopyWith<$Res> {
  _$AdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdvertisementImplCopyWith<$Res>
    implements $AdvertisementCopyWith<$Res> {
  factory _$$AdvertisementImplCopyWith(
          _$AdvertisementImpl value, $Res Function(_$AdvertisementImpl) then) =
      __$$AdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? order,
      String? status,
      String? image,
      String? link,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$AdvertisementImplCopyWithImpl<$Res>
    extends _$AdvertisementCopyWithImpl<$Res, _$AdvertisementImpl>
    implements _$$AdvertisementImplCopyWith<$Res> {
  __$$AdvertisementImplCopyWithImpl(
      _$AdvertisementImpl _value, $Res Function(_$AdvertisementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AdvertisementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
class _$AdvertisementImpl implements _Advertisement {
  const _$AdvertisementImpl(
      {required this.id,
      required this.order,
      required this.status,
      required this.image,
      required this.link,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});

  factory _$AdvertisementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementImplFromJson(json);

  @override
  final String? id;
  @override
  final String? order;
  @override
  final String? status;
  @override
  final String? image;
  @override
  final String? link;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'Advertisement(id: $id, order: $order, status: $status, image: $image, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, order, status, image, link, createdAt, updatedAt);

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      __$$AdvertisementImplCopyWithImpl<_$AdvertisementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementImplToJson(
      this,
    );
  }
}

abstract class _Advertisement implements Advertisement {
  const factory _Advertisement(
          {required final String? id,
          required final String? order,
          required final String? status,
          required final String? image,
          required final String? link,
          @JsonKey(name: "created_at") required final String? createdAt,
          @JsonKey(name: "updated_at") required final String? updatedAt}) =
      _$AdvertisementImpl;

  factory _Advertisement.fromJson(Map<String, dynamic> json) =
      _$AdvertisementImpl.fromJson;

  @override
  String? get id;
  @override
  String? get order;
  @override
  String? get status;
  @override
  String? get image;
  @override
  String? get link;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendBanner _$TrendBannerFromJson(Map<String, dynamic> json) {
  return _TrendBanner.fromJson(json);
}

/// @nodoc
mixin _$TrendBanner {
  String? get id => throw _privateConstructorUsedError;
  String? get bazar => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TrendBanner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrendBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendBannerCopyWith<TrendBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendBannerCopyWith<$Res> {
  factory $TrendBannerCopyWith(
          TrendBanner value, $Res Function(TrendBanner) then) =
      _$TrendBannerCopyWithImpl<$Res, TrendBanner>;
  @useResult
  $Res call(
      {String? id,
      String? bazar,
      String? image,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$TrendBannerCopyWithImpl<$Res, $Val extends TrendBanner>
    implements $TrendBannerCopyWith<$Res> {
  _$TrendBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bazar = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bazar: freezed == bazar
          ? _value.bazar
          : bazar // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TrendBannerImplCopyWith<$Res>
    implements $TrendBannerCopyWith<$Res> {
  factory _$$TrendBannerImplCopyWith(
          _$TrendBannerImpl value, $Res Function(_$TrendBannerImpl) then) =
      __$$TrendBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? bazar,
      String? image,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$TrendBannerImplCopyWithImpl<$Res>
    extends _$TrendBannerCopyWithImpl<$Res, _$TrendBannerImpl>
    implements _$$TrendBannerImplCopyWith<$Res> {
  __$$TrendBannerImplCopyWithImpl(
      _$TrendBannerImpl _value, $Res Function(_$TrendBannerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrendBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bazar = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TrendBannerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bazar: freezed == bazar
          ? _value.bazar
          : bazar // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$TrendBannerImpl implements _TrendBanner {
  const _$TrendBannerImpl(
      {required this.id,
      required this.bazar,
      required this.image,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});

  factory _$TrendBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendBannerImplFromJson(json);

  @override
  final String? id;
  @override
  final String? bazar;
  @override
  final String? image;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'TrendBanner(id: $id, bazar: $bazar, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendBannerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bazar, bazar) || other.bazar == bazar) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, bazar, image, createdAt, updatedAt);

  /// Create a copy of TrendBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendBannerImplCopyWith<_$TrendBannerImpl> get copyWith =>
      __$$TrendBannerImplCopyWithImpl<_$TrendBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendBannerImplToJson(
      this,
    );
  }
}

abstract class _TrendBanner implements TrendBanner {
  const factory _TrendBanner(
          {required final String? id,
          required final String? bazar,
          required final String? image,
          @JsonKey(name: "created_at") required final String? createdAt,
          @JsonKey(name: "updated_at") required final String? updatedAt}) =
      _$TrendBannerImpl;

  factory _TrendBanner.fromJson(Map<String, dynamic> json) =
      _$TrendBannerImpl.fromJson;

  @override
  String? get id;
  @override
  String? get bazar;
  @override
  String? get image;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of TrendBanner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendBannerImplCopyWith<_$TrendBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandbazarLogo _$BrandbazarLogoFromJson(Map<String, dynamic> json) {
  return _BrandbazarLogo.fromJson(json);
}

/// @nodoc
mixin _$BrandbazarLogo {
  @JsonKey(name: "brand_logo")
  String? get brandLogo => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this BrandbazarLogo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandbazarLogo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandbazarLogoCopyWith<BrandbazarLogo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandbazarLogoCopyWith<$Res> {
  factory $BrandbazarLogoCopyWith(
          BrandbazarLogo value, $Res Function(BrandbazarLogo) then) =
      _$BrandbazarLogoCopyWithImpl<$Res, BrandbazarLogo>;
  @useResult
  $Res call(
      {@JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "user_id") String? userId});
}

/// @nodoc
class _$BrandbazarLogoCopyWithImpl<$Res, $Val extends BrandbazarLogo>
    implements $BrandbazarLogoCopyWith<$Res> {
  _$BrandbazarLogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandbazarLogo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandLogo = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      brandLogo: freezed == brandLogo
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandbazarLogoImplCopyWith<$Res>
    implements $BrandbazarLogoCopyWith<$Res> {
  factory _$$BrandbazarLogoImplCopyWith(_$BrandbazarLogoImpl value,
          $Res Function(_$BrandbazarLogoImpl) then) =
      __$$BrandbazarLogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "user_id") String? userId});
}

/// @nodoc
class __$$BrandbazarLogoImplCopyWithImpl<$Res>
    extends _$BrandbazarLogoCopyWithImpl<$Res, _$BrandbazarLogoImpl>
    implements _$$BrandbazarLogoImplCopyWith<$Res> {
  __$$BrandbazarLogoImplCopyWithImpl(
      _$BrandbazarLogoImpl _value, $Res Function(_$BrandbazarLogoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandbazarLogo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandLogo = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$BrandbazarLogoImpl(
      brandLogo: freezed == brandLogo
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandbazarLogoImpl implements _BrandbazarLogo {
  const _$BrandbazarLogoImpl(
      {@JsonKey(name: "brand_logo") required this.brandLogo,
      @JsonKey(name: "user_id") required this.userId});

  factory _$BrandbazarLogoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandbazarLogoImplFromJson(json);

  @override
  @JsonKey(name: "brand_logo")
  final String? brandLogo;
  @override
  @JsonKey(name: "user_id")
  final String? userId;

  @override
  String toString() {
    return 'BrandbazarLogo(brandLogo: $brandLogo, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandbazarLogoImpl &&
            (identical(other.brandLogo, brandLogo) ||
                other.brandLogo == brandLogo) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brandLogo, userId);

  /// Create a copy of BrandbazarLogo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandbazarLogoImplCopyWith<_$BrandbazarLogoImpl> get copyWith =>
      __$$BrandbazarLogoImplCopyWithImpl<_$BrandbazarLogoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandbazarLogoImplToJson(
      this,
    );
  }
}

abstract class _BrandbazarLogo implements BrandbazarLogo {
  const factory _BrandbazarLogo(
          {@JsonKey(name: "brand_logo") required final String? brandLogo,
          @JsonKey(name: "user_id") required final String? userId}) =
      _$BrandbazarLogoImpl;

  factory _BrandbazarLogo.fromJson(Map<String, dynamic> json) =
      _$BrandbazarLogoImpl.fromJson;

  @override
  @JsonKey(name: "brand_logo")
  String? get brandLogo;
  @override
  @JsonKey(name: "user_id")
  String? get userId;

  /// Create a copy of BrandbazarLogo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandbazarLogoImplCopyWith<_$BrandbazarLogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
