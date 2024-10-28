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
  Data get data => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {@JsonKey(name: "data") Data data, @JsonKey(name: "msg") String? msg});

  $DataCopyWith<$Res> get data;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
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
      {@JsonKey(name: "data") Data data, @JsonKey(name: "msg") String? msg});

  @override
  $DataCopyWith<$Res> get data;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = freezed,
  }) {
    return _then(_$SavedSearchesResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
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
  final Data data;
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
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
          {@JsonKey(name: "data") required final Data data,
          @JsonKey(name: "msg") required final String? msg}) =
      _$SavedSearchesResponseModelImpl;

  factory _SavedSearchesResponseModel.fromJson(Map<String, dynamic> json) =
      _$SavedSearchesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data get data;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(ignore: true)
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
  List<dynamic> get used => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<dynamic> get services => throw _privateConstructorUsedError;
  @JsonKey(name: "jobs")
  List<dynamic> get jobs => throw _privateConstructorUsedError;
  @JsonKey(name: "events")
  List<dynamic> get events => throw _privateConstructorUsedError;
  @JsonKey(name: "b2b")
  List<dynamic> get b2B => throw _privateConstructorUsedError;
  @JsonKey(name: "grocery")
  List<dynamic> get grocery => throw _privateConstructorUsedError;
  @JsonKey(name: "posts")
  Posts get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "brand_new") List<BrandNew>? brandNew,
      @JsonKey(name: "used") List<dynamic> used,
      @JsonKey(name: "services") List<dynamic> services,
      @JsonKey(name: "jobs") List<dynamic> jobs,
      @JsonKey(name: "events") List<dynamic> events,
      @JsonKey(name: "b2b") List<dynamic> b2B,
      @JsonKey(name: "grocery") List<dynamic> grocery,
      @JsonKey(name: "posts") Posts posts});

  $PostsCopyWith<$Res> get posts;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandNew = freezed,
    Object? used = null,
    Object? services = null,
    Object? jobs = null,
    Object? events = null,
    Object? b2B = null,
    Object? grocery = null,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      brandNew: freezed == brandNew
          ? _value.brandNew
          : brandNew // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>?,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      jobs: null == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      b2B: null == b2B
          ? _value.b2B
          : b2B // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      grocery: null == grocery
          ? _value.grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostsCopyWith<$Res> get posts {
    return $PostsCopyWith<$Res>(_value.posts, (value) {
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
      @JsonKey(name: "used") List<dynamic> used,
      @JsonKey(name: "services") List<dynamic> services,
      @JsonKey(name: "jobs") List<dynamic> jobs,
      @JsonKey(name: "events") List<dynamic> events,
      @JsonKey(name: "b2b") List<dynamic> b2B,
      @JsonKey(name: "grocery") List<dynamic> grocery,
      @JsonKey(name: "posts") Posts posts});

  @override
  $PostsCopyWith<$Res> get posts;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandNew = freezed,
    Object? used = null,
    Object? services = null,
    Object? jobs = null,
    Object? events = null,
    Object? b2B = null,
    Object? grocery = null,
    Object? posts = null,
  }) {
    return _then(_$DataImpl(
      brandNew: freezed == brandNew
          ? _value._brandNew
          : brandNew // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>?,
      used: null == used
          ? _value._used
          : used // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      jobs: null == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      b2B: null == b2B
          ? _value._b2B
          : b2B // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      grocery: null == grocery
          ? _value._grocery
          : grocery // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "brand_new") required final List<BrandNew>? brandNew,
      @JsonKey(name: "used") required final List<dynamic> used,
      @JsonKey(name: "services") required final List<dynamic> services,
      @JsonKey(name: "jobs") required final List<dynamic> jobs,
      @JsonKey(name: "events") required final List<dynamic> events,
      @JsonKey(name: "b2b") required final List<dynamic> b2B,
      @JsonKey(name: "grocery") required final List<dynamic> grocery,
      @JsonKey(name: "posts") required this.posts})
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

  final List<dynamic> _used;
  @override
  @JsonKey(name: "used")
  List<dynamic> get used {
    if (_used is EqualUnmodifiableListView) return _used;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_used);
  }

  final List<dynamic> _services;
  @override
  @JsonKey(name: "services")
  List<dynamic> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<dynamic> _jobs;
  @override
  @JsonKey(name: "jobs")
  List<dynamic> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  final List<dynamic> _events;
  @override
  @JsonKey(name: "events")
  List<dynamic> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<dynamic> _b2B;
  @override
  @JsonKey(name: "b2b")
  List<dynamic> get b2B {
    if (_b2B is EqualUnmodifiableListView) return _b2B;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_b2B);
  }

  final List<dynamic> _grocery;
  @override
  @JsonKey(name: "grocery")
  List<dynamic> get grocery {
    if (_grocery is EqualUnmodifiableListView) return _grocery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grocery);
  }

  @override
  @JsonKey(name: "posts")
  final Posts posts;

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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
      {@JsonKey(name: "brand_new") required final List<BrandNew>? brandNew,
      @JsonKey(name: "used") required final List<dynamic> used,
      @JsonKey(name: "services") required final List<dynamic> services,
      @JsonKey(name: "jobs") required final List<dynamic> jobs,
      @JsonKey(name: "events") required final List<dynamic> events,
      @JsonKey(name: "b2b") required final List<dynamic> b2B,
      @JsonKey(name: "grocery") required final List<dynamic> grocery,
      @JsonKey(name: "posts") required final Posts posts}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "brand_new")
  List<BrandNew>? get brandNew;
  @override
  @JsonKey(name: "used")
  List<dynamic> get used;
  @override
  @JsonKey(name: "services")
  List<dynamic> get services;
  @override
  @JsonKey(name: "jobs")
  List<dynamic> get jobs;
  @override
  @JsonKey(name: "events")
  List<dynamic> get events;
  @override
  @JsonKey(name: "b2b")
  List<dynamic> get b2B;
  @override
  @JsonKey(name: "grocery")
  List<dynamic> get grocery;
  @override
  @JsonKey(name: "posts")
  Posts get posts;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandNew _$BrandNewFromJson(Map<String, dynamic> json) {
  return _BrandNew.fromJson(json);
}

/// @nodoc
mixin _$BrandNew {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandNewCopyWith<BrandNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandNewCopyWith<$Res> {
  factory $BrandNewCopyWith(BrandNew value, $Res Function(BrandNew) then) =
      _$BrandNewCopyWithImpl<$Res, BrandNew>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "price") String price,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "price") String price,
      String image});
}

/// @nodoc
class __$$BrandNewImplCopyWithImpl<$Res>
    extends _$BrandNewCopyWithImpl<$Res, _$BrandNewImpl>
    implements _$$BrandNewImplCopyWith<$Res> {
  __$$BrandNewImplCopyWithImpl(
      _$BrandNewImpl _value, $Res Function(_$BrandNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_$BrandNewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
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
  final String id;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "price")
  final String price;
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, price, image);

  @JsonKey(ignore: true)
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
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "user_id") required final String userId,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "price") required final String price,
      required final String image}) = _$BrandNewImpl;

  factory _BrandNew.fromJson(Map<String, dynamic> json) =
      _$BrandNewImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "price")
  String get price;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$BrandNewImplCopyWith<_$BrandNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Posts {
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<BrandNew> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link> get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res, Posts>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "data") List<BrandNew> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      @JsonKey(name: "from") int from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int to,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res, $Val extends Posts>
    implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
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
      {@JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "data") List<BrandNew> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      @JsonKey(name: "from") int from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int to,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class __$$PostsImplCopyWithImpl<$Res>
    extends _$PostsCopyWithImpl<$Res, _$PostsImpl>
    implements _$$PostsImplCopyWith<$Res> {
  __$$PostsImplCopyWithImpl(
      _$PostsImpl _value, $Res Function(_$PostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_$PostsImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandNew>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsImpl implements _Posts {
  const _$PostsImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "data") required final List<BrandNew> data,
      @JsonKey(name: "first_page_url") required this.firstPageUrl,
      @JsonKey(name: "from") required this.from,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "last_page_url") required this.lastPageUrl,
      @JsonKey(name: "links") required final List<Link> links,
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
  final int currentPage;
  final List<BrandNew> _data;
  @override
  @JsonKey(name: "data")
  List<BrandNew> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int from;
  @override
  @JsonKey(name: "last_page")
  final int lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String lastPageUrl;
  final List<Link> _links;
  @override
  @JsonKey(name: "links")
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: "next_page_url")
  final dynamic nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String path;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int to;
  @override
  @JsonKey(name: "total")
  final int total;

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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
      {@JsonKey(name: "current_page") required final int currentPage,
      @JsonKey(name: "data") required final List<BrandNew> data,
      @JsonKey(name: "first_page_url") required final String firstPageUrl,
      @JsonKey(name: "from") required final int from,
      @JsonKey(name: "last_page") required final int lastPage,
      @JsonKey(name: "last_page_url") required final String lastPageUrl,
      @JsonKey(name: "links") required final List<Link> links,
      @JsonKey(name: "next_page_url") required final dynamic nextPageUrl,
      @JsonKey(name: "path") required final String path,
      @JsonKey(name: "per_page") required final int perPage,
      @JsonKey(name: "prev_page_url") required final dynamic prevPageUrl,
      @JsonKey(name: "to") required final int to,
      @JsonKey(name: "total") required final int total}) = _$PostsImpl;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$PostsImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  @JsonKey(name: "data")
  List<BrandNew> get data;
  @override
  @JsonKey(name: "first_page_url")
  String get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int get from;
  @override
  @JsonKey(name: "last_page")
  int get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link> get links;
  @override
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String get path;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int get to;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(ignore: true)
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
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String label,
      @JsonKey(name: "active") bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: "label") String label,
      @JsonKey(name: "active") bool active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
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
  final String label;
  @override
  @JsonKey(name: "active")
  final bool active;

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
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
      @JsonKey(name: "label") required final String label,
      @JsonKey(name: "active") required final bool active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "label")
  String get label;
  @override
  @JsonKey(name: "active")
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
