// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedSearchesResponseModel _$SavedSearchesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SavedSearchesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SavedSearchesResponseModel {
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;

  /// Serializes this SavedSearchesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedSearchesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedSearchesResponseModelCopyWith<SavedSearchesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedSearchesResponseModelCopyWith<$Res> {
  factory $SavedSearchesResponseModelCopyWith(SavedSearchesResponseModel value,
          $Res Function(SavedSearchesResponseModel) then) =
      _$SavedSearchesResponseModelCopyWithImpl<$Res,
          SavedSearchesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data? data, @JsonKey(name: "msg") String? msg});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SavedSearchesResponseModelCopyWithImpl<$Res,
        $Val extends SavedSearchesResponseModel>
    implements $SavedSearchesResponseModelCopyWith<$Res> {
  _$SavedSearchesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedSearchesResponseModel
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
              as Data?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SavedSearchesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SavedSearchesResponseModelImplCopyWith<$Res>
    implements $SavedSearchesResponseModelCopyWith<$Res> {
  factory _$$SavedSearchesResponseModelImplCopyWith(
          _$SavedSearchesResponseModelImpl value,
          $Res Function(_$SavedSearchesResponseModelImpl) then) =
      __$$SavedSearchesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data? data, @JsonKey(name: "msg") String? msg});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SavedSearchesResponseModelImplCopyWithImpl<$Res>
    extends _$SavedSearchesResponseModelCopyWithImpl<$Res,
        _$SavedSearchesResponseModelImpl>
    implements _$$SavedSearchesResponseModelImplCopyWith<$Res> {
  __$$SavedSearchesResponseModelImplCopyWithImpl(
      _$SavedSearchesResponseModelImpl _value,
      $Res Function(_$SavedSearchesResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedSearchesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$SavedSearchesResponseModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedSearchesResponseModelImpl implements _SavedSearchesResponseModel {
  const _$SavedSearchesResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "msg") required this.msg});

  factory _$SavedSearchesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SavedSearchesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;
  @override
  @JsonKey(name: "msg")
  final String? msg;

  @override
  String toString() {
    return 'SavedSearchesResponseModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedSearchesResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of SavedSearchesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedSearchesResponseModelImplCopyWith<_$SavedSearchesResponseModelImpl>
      get copyWith => __$$SavedSearchesResponseModelImplCopyWithImpl<
          _$SavedSearchesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedSearchesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SavedSearchesResponseModel
    implements SavedSearchesResponseModel {
  const factory _SavedSearchesResponseModel(
          {@JsonKey(name: "data") required final Data? data,
          @JsonKey(name: "msg") required final String? msg}) =
      _$SavedSearchesResponseModelImpl;

  factory _SavedSearchesResponseModel.fromJson(Map<String, dynamic> json) =
      _$SavedSearchesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(name: "msg")
  String? get msg;

  /// Create a copy of SavedSearchesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedSearchesResponseModelImplCopyWith<_$SavedSearchesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "brand_new")
  List<BrandNew>? get brandNew => throw _privateConstructorUsedError;
  @JsonKey(name: "used")
  List<Used>? get used => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<Services>? get services => throw _privateConstructorUsedError;
  @JsonKey(name: "jobs")
  List<Jobs>? get jobs => throw _privateConstructorUsedError;
  @JsonKey(name: "events")
  List<Events>? get events => throw _privateConstructorUsedError;
  @JsonKey(name: "b2b")
  List<B2B>? get b2B => throw _privateConstructorUsedError;
  @JsonKey(name: "grocery")
  List<Grocery>? get grocery => throw _privateConstructorUsedError;
  @JsonKey(name: "posts")
  Posts? get posts => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "brand_new") List<BrandNew>? brandNew,
      @JsonKey(name: "used") List<Used>? used,
      @JsonKey(name: "services") List<Services>? services,
      @JsonKey(name: "jobs") List<Jobs>? jobs,
      @JsonKey(name: "events") List<Events>? events,
      @JsonKey(name: "b2b") List<B2B>? b2B,
      @JsonKey(name: "grocery") List<Grocery>? grocery,
      @JsonKey(name: "posts") Posts? posts});

  $PostsCopyWith<$Res>? get posts;
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
    Object? brandNew = freezed,
    Object? used = freezed,
    Object? services = freezed,
    Object? jobs = freezed,
    Object? events = freezed,
    Object? b2B = freezed,
    Object? grocery = freezed,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      brandNew: freezed == brandNew
          ? _value.brandNew
          : brandNew // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>?,
      used: freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as List<Used>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Services>?,
      jobs: freezed == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Jobs>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Events>?,
      b2B: freezed == b2B
          ? _value.b2B
          : b2B // ignore: cast_nullable_to_non_nullable
              as List<B2B>?,
      grocery: freezed == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<Grocery>?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts?,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostsCopyWith<$Res>? get posts {
    if (_value.posts == null) {
      return null;
    }

    return $PostsCopyWith<$Res>(_value.posts!, (value) {
      return _then(_value.copyWith(posts: value) as $Val);
    });
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
      {@JsonKey(name: "brand_new") List<BrandNew>? brandNew,
      @JsonKey(name: "used") List<Used>? used,
      @JsonKey(name: "services") List<Services>? services,
      @JsonKey(name: "jobs") List<Jobs>? jobs,
      @JsonKey(name: "events") List<Events>? events,
      @JsonKey(name: "b2b") List<B2B>? b2B,
      @JsonKey(name: "grocery") List<Grocery>? grocery,
      @JsonKey(name: "posts") Posts? posts});

  @override
  $PostsCopyWith<$Res>? get posts;
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
    Object? brandNew = freezed,
    Object? used = freezed,
    Object? services = freezed,
    Object? jobs = freezed,
    Object? events = freezed,
    Object? b2B = freezed,
    Object? grocery = freezed,
    Object? posts = freezed,
  }) {
    return _then(_$DataImpl(
      brandNew: freezed == brandNew
          ? _value._brandNew
          : brandNew // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>?,
      used: freezed == used
          ? _value._used
          : used // ignore: cast_nullable_to_non_nullable
              as List<Used>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Services>?,
      jobs: freezed == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Jobs>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Events>?,
      b2B: freezed == b2B
          ? _value._b2B
          : b2B // ignore: cast_nullable_to_non_nullable
              as List<B2B>?,
      grocery: freezed == grocery
          ? _value._grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<Grocery>?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "brand_new") final List<BrandNew>? brandNew,
      @JsonKey(name: "used") final List<Used>? used,
      @JsonKey(name: "services") final List<Services>? services,
      @JsonKey(name: "jobs") final List<Jobs>? jobs,
      @JsonKey(name: "events") final List<Events>? events,
      @JsonKey(name: "b2b") final List<B2B>? b2B,
      @JsonKey(name: "grocery") final List<Grocery>? grocery,
      @JsonKey(name: "posts") this.posts})
      : _brandNew = brandNew,
        _used = used,
        _services = services,
        _jobs = jobs,
        _events = events,
        _b2B = b2B,
        _grocery = grocery;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<BrandNew>? _brandNew;
  @override
  @JsonKey(name: "brand_new")
  List<BrandNew>? get brandNew {
    final value = _brandNew;
    if (value == null) return null;
    if (_brandNew is EqualUnmodifiableListView) return _brandNew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Used>? _used;
  @override
  @JsonKey(name: "used")
  List<Used>? get used {
    final value = _used;
    if (value == null) return null;
    if (_used is EqualUnmodifiableListView) return _used;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Services>? _services;
  @override
  @JsonKey(name: "services")
  List<Services>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Jobs>? _jobs;
  @override
  @JsonKey(name: "jobs")
  List<Jobs>? get jobs {
    final value = _jobs;
    if (value == null) return null;
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Events>? _events;
  @override
  @JsonKey(name: "events")
  List<Events>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<B2B>? _b2B;
  @override
  @JsonKey(name: "b2b")
  List<B2B>? get b2B {
    final value = _b2B;
    if (value == null) return null;
    if (_b2B is EqualUnmodifiableListView) return _b2B;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Grocery>? _grocery;
  @override
  @JsonKey(name: "grocery")
  List<Grocery>? get grocery {
    final value = _grocery;
    if (value == null) return null;
    if (_grocery is EqualUnmodifiableListView) return _grocery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "posts")
  final Posts? posts;

  @override
  String toString() {
    return 'Data(brandNew: $brandNew, used: $used, services: $services, jobs: $jobs, events: $events, b2B: $b2B, grocery: $grocery, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._brandNew, _brandNew) &&
            const DeepCollectionEquality().equals(other._used, _used) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._b2B, _b2B) &&
            const DeepCollectionEquality().equals(other._grocery, _grocery) &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_brandNew),
      const DeepCollectionEquality().hash(_used),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_jobs),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_b2B),
      const DeepCollectionEquality().hash(_grocery),
      posts);

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
      {@JsonKey(name: "brand_new") final List<BrandNew>? brandNew,
      @JsonKey(name: "used") final List<Used>? used,
      @JsonKey(name: "services") final List<Services>? services,
      @JsonKey(name: "jobs") final List<Jobs>? jobs,
      @JsonKey(name: "events") final List<Events>? events,
      @JsonKey(name: "b2b") final List<B2B>? b2B,
      @JsonKey(name: "grocery") final List<Grocery>? grocery,
      @JsonKey(name: "posts") final Posts? posts}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "brand_new")
  List<BrandNew>? get brandNew;
  @override
  @JsonKey(name: "used")
  List<Used>? get used;
  @override
  @JsonKey(name: "services")
  List<Services>? get services;
  @override
  @JsonKey(name: "jobs")
  List<Jobs>? get jobs;
  @override
  @JsonKey(name: "events")
  List<Events>? get events;
  @override
  @JsonKey(name: "b2b")
  List<B2B>? get b2B;
  @override
  @JsonKey(name: "grocery")
  List<Grocery>? get grocery;
  @override
  @JsonKey(name: "posts")
  Posts? get posts;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandNew _$BrandNewFromJson(Map<String, dynamic> json) {
  return _BrandNew.fromJson(json);
}

/// @nodoc
mixin _$BrandNew {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this BrandNew to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandNewCopyWith<BrandNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandNewCopyWith<$Res> {
  factory $BrandNewCopyWith(BrandNew value, $Res Function(BrandNew) then) =
      _$BrandNewCopyWithImpl<$Res, BrandNew>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String image});
}

/// @nodoc
class _$BrandNewCopyWithImpl<$Res, $Val extends BrandNew>
    implements $BrandNewCopyWith<$Res> {
  _$BrandNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandNewImplCopyWith<$Res>
    implements $BrandNewCopyWith<$Res> {
  factory _$$BrandNewImplCopyWith(
          _$BrandNewImpl value, $Res Function(_$BrandNewImpl) then) =
      __$$BrandNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String image});
}

/// @nodoc
class __$$BrandNewImplCopyWithImpl<$Res>
    extends _$BrandNewCopyWithImpl<$Res, _$BrandNewImpl>
    implements _$$BrandNewImplCopyWith<$Res> {
  __$$BrandNewImplCopyWithImpl(
      _$BrandNewImpl _value, $Res Function(_$BrandNewImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = null,
  }) {
    return _then(_$BrandNewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandNewImpl implements _BrandNew {
  const _$BrandNewImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      required this.image});

  factory _$BrandNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandNewImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  final String image;

  @override
  String toString() {
    return 'BrandNew(id: $id, userId: $userId, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandNewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  /// Create a copy of BrandNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandNewImplCopyWith<_$BrandNewImpl> get copyWith =>
      __$$BrandNewImplCopyWithImpl<_$BrandNewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandNewImplToJson(
      this,
    );
  }
}

abstract class _BrandNew implements BrandNew {
  const factory _BrandNew(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "title") required final String? title,
      @JsonKey(name: "price") required final String? price,
      required final String image}) = _$BrandNewImpl;

  factory _BrandNew.fromJson(Map<String, dynamic> json) =
      _$BrandNewImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  String get image;

  /// Create a copy of BrandNew
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandNewImplCopyWith<_$BrandNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Posts {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<BrandNew>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this Posts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res, Posts>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<BrandNew>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res, $Val extends Posts>
    implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsImplCopyWith<$Res> implements $PostsCopyWith<$Res> {
  factory _$$PostsImplCopyWith(
          _$PostsImpl value, $Res Function(_$PostsImpl) then) =
      __$$PostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<BrandNew>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$PostsImplCopyWithImpl<$Res>
    extends _$PostsCopyWithImpl<$Res, _$PostsImpl>
    implements _$$PostsImplCopyWith<$Res> {
  __$$PostsImplCopyWithImpl(
      _$PostsImpl _value, $Res Function(_$PostsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$PostsImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsImpl implements _Posts {
  const _$PostsImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "data") required final List<BrandNew>? data,
      @JsonKey(name: "first_page_url") required this.firstPageUrl,
      @JsonKey(name: "from") required this.from,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "last_page_url") required this.lastPageUrl,
      @JsonKey(name: "links") required final List<Link>? links,
      @JsonKey(name: "next_page_url") required this.nextPageUrl,
      @JsonKey(name: "path") required this.path,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "prev_page_url") required this.prevPageUrl,
      @JsonKey(name: "to") required this.to,
      @JsonKey(name: "total") required this.total})
      : _data = data,
        _links = links;

  factory _$PostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<BrandNew>? _data;
  @override
  @JsonKey(name: "data")
  List<BrandNew>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  @JsonKey(name: "links")
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "next_page_url")
  final dynamic nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'Posts(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      __$$PostsImplCopyWithImpl<_$PostsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsImplToJson(
      this,
    );
  }
}

abstract class _Posts implements Posts {
  const factory _Posts(
      {@JsonKey(name: "current_page") required final int? currentPage,
      @JsonKey(name: "data") required final List<BrandNew>? data,
      @JsonKey(name: "first_page_url") required final String? firstPageUrl,
      @JsonKey(name: "from") required final int? from,
      @JsonKey(name: "last_page") required final int? lastPage,
      @JsonKey(name: "last_page_url") required final String? lastPageUrl,
      @JsonKey(name: "links") required final List<Link>? links,
      @JsonKey(name: "next_page_url") required final dynamic nextPageUrl,
      @JsonKey(name: "path") required final String? path,
      @JsonKey(name: "per_page") required final int? perPage,
      @JsonKey(name: "prev_page_url") required final dynamic prevPageUrl,
      @JsonKey(name: "to") required final int? to,
      @JsonKey(name: "total") required final int? total}) = _$PostsImpl;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$PostsImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<BrandNew>? get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link>? get links;
  @override
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "total")
  int? get total;

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {@JsonKey(name: "url") required this.url,
      @JsonKey(name: "label") required this.label,
      @JsonKey(name: "active") required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "active")
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {@JsonKey(name: "url") required final String? url,
      @JsonKey(name: "label") required final String? label,
      @JsonKey(name: "active") required final bool? active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "active")
  bool? get active;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Grocery _$GroceryFromJson(Map<String, dynamic> json) {
  return _Grocery.fromJson(json);
}

/// @nodoc
mixin _$Grocery {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @JsonKey(name: "title")
  String? get title =>
      throw _privateConstructorUsedError; // @JsonKey(name: "description") required String? description,
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Grocery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Grocery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroceryCopyWith<Grocery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryCopyWith<$Res> {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) then) =
      _$GroceryCopyWithImpl<$Res, Grocery>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class _$GroceryCopyWithImpl<$Res, $Val extends Grocery>
    implements $GroceryCopyWith<$Res> {
  _$GroceryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Grocery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceryImplCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$$GroceryImplCopyWith(
          _$GroceryImpl value, $Res Function(_$GroceryImpl) then) =
      __$$GroceryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class __$$GroceryImplCopyWithImpl<$Res>
    extends _$GroceryCopyWithImpl<$Res, _$GroceryImpl>
    implements _$$GroceryImplCopyWith<$Res> {
  __$$GroceryImplCopyWithImpl(
      _$GroceryImpl _value, $Res Function(_$GroceryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Grocery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$GroceryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroceryImpl implements _Grocery {
  const _$GroceryImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      required this.image});

  factory _$GroceryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
// @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  final String? title;
// @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'Grocery(id: $id, userId: $userId, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  /// Create a copy of Grocery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryImplCopyWith<_$GroceryImpl> get copyWith =>
      __$$GroceryImplCopyWithImpl<_$GroceryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroceryImplToJson(
      this,
    );
  }
}

abstract class _Grocery implements Grocery {
  const factory _Grocery(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "title") required final String? title,
      @JsonKey(name: "price") required final String? price,
      required final String? image}) = _$GroceryImpl;

  factory _Grocery.fromJson(Map<String, dynamic> json) = _$GroceryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String?
      get userId; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  String?
      get title; // @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  String? get image;

  /// Create a copy of Grocery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroceryImplCopyWith<_$GroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Used _$UsedFromJson(Map<String, dynamic> json) {
  return _Used.fromJson(json);
}

/// @nodoc
mixin _$Used {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @JsonKey(name: "title")
  String? get title =>
      throw _privateConstructorUsedError; // @JsonKey(name: "description") required String? description,
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Used to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Used
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsedCopyWith<Used> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsedCopyWith<$Res> {
  factory $UsedCopyWith(Used value, $Res Function(Used) then) =
      _$UsedCopyWithImpl<$Res, Used>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class _$UsedCopyWithImpl<$Res, $Val extends Used>
    implements $UsedCopyWith<$Res> {
  _$UsedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Used
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsedImplCopyWith<$Res> implements $UsedCopyWith<$Res> {
  factory _$$UsedImplCopyWith(
          _$UsedImpl value, $Res Function(_$UsedImpl) then) =
      __$$UsedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class __$$UsedImplCopyWithImpl<$Res>
    extends _$UsedCopyWithImpl<$Res, _$UsedImpl>
    implements _$$UsedImplCopyWith<$Res> {
  __$$UsedImplCopyWithImpl(_$UsedImpl _value, $Res Function(_$UsedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Used
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UsedImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsedImpl implements _Used {
  const _$UsedImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      required this.image});

  factory _$UsedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsedImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
// @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  final String? title;
// @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'Used(id: $id, userId: $userId, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  /// Create a copy of Used
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsedImplCopyWith<_$UsedImpl> get copyWith =>
      __$$UsedImplCopyWithImpl<_$UsedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsedImplToJson(
      this,
    );
  }
}

abstract class _Used implements Used {
  const factory _Used(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "title") required final String? title,
      @JsonKey(name: "price") required final String? price,
      required final String? image}) = _$UsedImpl;

  factory _Used.fromJson(Map<String, dynamic> json) = _$UsedImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String?
      get userId; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  String?
      get title; // @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  String? get image;

  /// Create a copy of Used
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsedImplCopyWith<_$UsedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Services _$ServicesFromJson(Map<String, dynamic> json) {
  return _Services.fromJson(json);
}

/// @nodoc
mixin _$Services {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @JsonKey(name: "title")
  String? get title =>
      throw _privateConstructorUsedError; // @JsonKey(name: "description") required String? description,
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Services to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Services
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicesCopyWith<Services> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesCopyWith<$Res> {
  factory $ServicesCopyWith(Services value, $Res Function(Services) then) =
      _$ServicesCopyWithImpl<$Res, Services>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class _$ServicesCopyWithImpl<$Res, $Val extends Services>
    implements $ServicesCopyWith<$Res> {
  _$ServicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Services
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesImplCopyWith<$Res>
    implements $ServicesCopyWith<$Res> {
  factory _$$ServicesImplCopyWith(
          _$ServicesImpl value, $Res Function(_$ServicesImpl) then) =
      __$$ServicesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class __$$ServicesImplCopyWithImpl<$Res>
    extends _$ServicesCopyWithImpl<$Res, _$ServicesImpl>
    implements _$$ServicesImplCopyWith<$Res> {
  __$$ServicesImplCopyWithImpl(
      _$ServicesImpl _value, $Res Function(_$ServicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Services
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ServicesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicesImpl implements _Services {
  const _$ServicesImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      required this.image});

  factory _$ServicesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
// @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  final String? title;
// @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'Services(id: $id, userId: $userId, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  /// Create a copy of Services
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesImplCopyWith<_$ServicesImpl> get copyWith =>
      __$$ServicesImplCopyWithImpl<_$ServicesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesImplToJson(
      this,
    );
  }
}

abstract class _Services implements Services {
  const factory _Services(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "title") required final String? title,
      @JsonKey(name: "price") required final String? price,
      required final String? image}) = _$ServicesImpl;

  factory _Services.fromJson(Map<String, dynamic> json) =
      _$ServicesImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String?
      get userId; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  String?
      get title; // @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  String? get image;

  /// Create a copy of Services
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesImplCopyWith<_$ServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Jobs _$JobsFromJson(Map<String, dynamic> json) {
  return _Jobs.fromJson(json);
}

/// @nodoc
mixin _$Jobs {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @JsonKey(name: "title")
  String? get title =>
      throw _privateConstructorUsedError; // @JsonKey(name: "description") required String? description,
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Jobs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Jobs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobsCopyWith<Jobs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsCopyWith<$Res> {
  factory $JobsCopyWith(Jobs value, $Res Function(Jobs) then) =
      _$JobsCopyWithImpl<$Res, Jobs>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class _$JobsCopyWithImpl<$Res, $Val extends Jobs>
    implements $JobsCopyWith<$Res> {
  _$JobsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Jobs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobsImplCopyWith<$Res> implements $JobsCopyWith<$Res> {
  factory _$$JobsImplCopyWith(
          _$JobsImpl value, $Res Function(_$JobsImpl) then) =
      __$$JobsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class __$$JobsImplCopyWithImpl<$Res>
    extends _$JobsCopyWithImpl<$Res, _$JobsImpl>
    implements _$$JobsImplCopyWith<$Res> {
  __$$JobsImplCopyWithImpl(_$JobsImpl _value, $Res Function(_$JobsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Jobs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$JobsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobsImpl implements _Jobs {
  const _$JobsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      required this.image});

  factory _$JobsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
// @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  final String? title;
// @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'Jobs(id: $id, userId: $userId, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  /// Create a copy of Jobs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsImplCopyWith<_$JobsImpl> get copyWith =>
      __$$JobsImplCopyWithImpl<_$JobsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobsImplToJson(
      this,
    );
  }
}

abstract class _Jobs implements Jobs {
  const factory _Jobs(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "title") required final String? title,
      @JsonKey(name: "price") required final String? price,
      required final String? image}) = _$JobsImpl;

  factory _Jobs.fromJson(Map<String, dynamic> json) = _$JobsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String?
      get userId; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  String?
      get title; // @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  String? get image;

  /// Create a copy of Jobs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobsImplCopyWith<_$JobsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Events _$EventsFromJson(Map<String, dynamic> json) {
  return _Events.fromJson(json);
}

/// @nodoc
mixin _$Events {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @JsonKey(name: "title")
  String? get title =>
      throw _privateConstructorUsedError; // @JsonKey(name: "description") required String? description,
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Events to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res, Events>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res, $Val extends Events>
    implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventsImplCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$$EventsImplCopyWith(
          _$EventsImpl value, $Res Function(_$EventsImpl) then) =
      __$$EventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class __$$EventsImplCopyWithImpl<$Res>
    extends _$EventsCopyWithImpl<$Res, _$EventsImpl>
    implements _$$EventsImplCopyWith<$Res> {
  __$$EventsImplCopyWithImpl(
      _$EventsImpl _value, $Res Function(_$EventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$EventsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventsImpl implements _Events {
  const _$EventsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      required this.image});

  factory _$EventsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
// @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  final String? title;
// @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'Events(id: $id, userId: $userId, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsImplCopyWith<_$EventsImpl> get copyWith =>
      __$$EventsImplCopyWithImpl<_$EventsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventsImplToJson(
      this,
    );
  }
}

abstract class _Events implements Events {
  const factory _Events(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "title") required final String? title,
      @JsonKey(name: "price") required final String? price,
      required final String? image}) = _$EventsImpl;

  factory _Events.fromJson(Map<String, dynamic> json) = _$EventsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String?
      get userId; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  String?
      get title; // @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  String? get image;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsImplCopyWith<_$EventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

B2B _$B2BFromJson(Map<String, dynamic> json) {
  return _B2B.fromJson(json);
}

/// @nodoc
mixin _$B2B {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @JsonKey(name: "title")
  String? get title =>
      throw _privateConstructorUsedError; // @JsonKey(name: "description") required String? description,
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this B2B to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of B2B
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $B2BCopyWith<B2B> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $B2BCopyWith<$Res> {
  factory $B2BCopyWith(B2B value, $Res Function(B2B) then) =
      _$B2BCopyWithImpl<$Res, B2B>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class _$B2BCopyWithImpl<$Res, $Val extends B2B> implements $B2BCopyWith<$Res> {
  _$B2BCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of B2B
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$B2BImplCopyWith<$Res> implements $B2BCopyWith<$Res> {
  factory _$$B2BImplCopyWith(_$B2BImpl value, $Res Function(_$B2BImpl) then) =
      __$$B2BImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "price") String? price,
      String? image});
}

/// @nodoc
class __$$B2BImplCopyWithImpl<$Res> extends _$B2BCopyWithImpl<$Res, _$B2BImpl>
    implements _$$B2BImplCopyWith<$Res> {
  __$$B2BImplCopyWithImpl(_$B2BImpl _value, $Res Function(_$B2BImpl) _then)
      : super(_value, _then);

  /// Create a copy of B2B
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$B2BImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$B2BImpl implements _B2B {
  const _$B2BImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      required this.image});

  factory _$B2BImpl.fromJson(Map<String, dynamic> json) =>
      _$$B2BImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
// @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  final String? title;
// @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'B2B(id: $id, userId: $userId, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$B2BImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  /// Create a copy of B2B
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$B2BImplCopyWith<_$B2BImpl> get copyWith =>
      __$$B2BImplCopyWithImpl<_$B2BImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$B2BImplToJson(
      this,
    );
  }
}

abstract class _B2B implements B2B {
  const factory _B2B(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "title") required final String? title,
      @JsonKey(name: "price") required final String? price,
      required final String? image}) = _$B2BImpl;

  factory _B2B.fromJson(Map<String, dynamic> json) = _$B2BImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String?
      get userId; // @JsonKey(name: "category_id") required String? categoryId,
// @JsonKey(name: "post_type_id") required String? postTypeId,
  @override
  @JsonKey(name: "title")
  String?
      get title; // @JsonKey(name: "description") required String? description,
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  String? get image;

  /// Create a copy of B2B
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$B2BImplCopyWith<_$B2BImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
