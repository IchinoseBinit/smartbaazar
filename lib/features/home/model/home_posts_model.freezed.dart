// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_posts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomePosts _$HomePostsFromJson(Map<String, dynamic> json) {
  return _HomePosts.fromJson(json);
}

/// @nodoc
mixin _$HomePosts {
// required List<HomeAdvertisement> advertisements,
  List<Product> get sponsored_posts => throw _privateConstructorUsedError;
  List<Product> get trending => throw _privateConstructorUsedError;
  List<SliderModel> get sliders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePostsCopyWith<HomePosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePostsCopyWith<$Res> {
  factory $HomePostsCopyWith(HomePosts value, $Res Function(HomePosts) then) =
      _$HomePostsCopyWithImpl<$Res, HomePosts>;
  @useResult
  $Res call(
      {List<Product> sponsored_posts,
      List<Product> trending,
      List<SliderModel> sliders});
}

/// @nodoc
class _$HomePostsCopyWithImpl<$Res, $Val extends HomePosts>
    implements $HomePostsCopyWith<$Res> {
  _$HomePostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsored_posts = null,
    Object? trending = null,
    Object? sliders = null,
  }) {
    return _then(_value.copyWith(
      sponsored_posts: null == sponsored_posts
          ? _value.sponsored_posts
          : sponsored_posts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      sliders: null == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SliderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePostsImplCopyWith<$Res>
    implements $HomePostsCopyWith<$Res> {
  factory _$$HomePostsImplCopyWith(
          _$HomePostsImpl value, $Res Function(_$HomePostsImpl) then) =
      __$$HomePostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> sponsored_posts,
      List<Product> trending,
      List<SliderModel> sliders});
}

/// @nodoc
class __$$HomePostsImplCopyWithImpl<$Res>
    extends _$HomePostsCopyWithImpl<$Res, _$HomePostsImpl>
    implements _$$HomePostsImplCopyWith<$Res> {
  __$$HomePostsImplCopyWithImpl(
      _$HomePostsImpl _value, $Res Function(_$HomePostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsored_posts = null,
    Object? trending = null,
    Object? sliders = null,
  }) {
    return _then(_$HomePostsImpl(
      sponsored_posts: null == sponsored_posts
          ? _value._sponsored_posts
          : sponsored_posts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      sliders: null == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SliderModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePostsImpl implements _HomePosts {
  _$HomePostsImpl(
      {required final List<Product> sponsored_posts,
      required final List<Product> trending,
      required final List<SliderModel> sliders})
      : _sponsored_posts = sponsored_posts,
        _trending = trending,
        _sliders = sliders;

  factory _$HomePostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePostsImplFromJson(json);

// required List<HomeAdvertisement> advertisements,
  final List<Product> _sponsored_posts;
// required List<HomeAdvertisement> advertisements,
  @override
  List<Product> get sponsored_posts {
    if (_sponsored_posts is EqualUnmodifiableListView) return _sponsored_posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sponsored_posts);
  }

  final List<Product> _trending;
  @override
  List<Product> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  final List<SliderModel> _sliders;
  @override
  List<SliderModel> get sliders {
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliders);
  }

  @override
  String toString() {
    return 'HomePosts(sponsored_posts: $sponsored_posts, trending: $trending, sliders: $sliders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePostsImpl &&
            const DeepCollectionEquality()
                .equals(other._sponsored_posts, _sponsored_posts) &&
            const DeepCollectionEquality().equals(other._trending, _trending) &&
            const DeepCollectionEquality().equals(other._sliders, _sliders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sponsored_posts),
      const DeepCollectionEquality().hash(_trending),
      const DeepCollectionEquality().hash(_sliders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePostsImplCopyWith<_$HomePostsImpl> get copyWith =>
      __$$HomePostsImplCopyWithImpl<_$HomePostsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePostsImplToJson(
      this,
    );
  }
}

abstract class _HomePosts implements HomePosts {
  factory _HomePosts(
      {required final List<Product> sponsored_posts,
      required final List<Product> trending,
      required final List<SliderModel> sliders}) = _$HomePostsImpl;

  factory _HomePosts.fromJson(Map<String, dynamic> json) =
      _$HomePostsImpl.fromJson;

  @override // required List<HomeAdvertisement> advertisements,
  List<Product> get sponsored_posts;
  @override
  List<Product> get trending;
  @override
  List<SliderModel> get sliders;
  @override
  @JsonKey(ignore: true)
  _$$HomePostsImplCopyWith<_$HomePostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) {
  return _SliderModel.fromJson(json);
}

/// @nodoc
mixin _$SliderModel {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderModelCopyWith<SliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderModelCopyWith<$Res> {
  factory $SliderModelCopyWith(
          SliderModel value, $Res Function(SliderModel) then) =
      _$SliderModelCopyWithImpl<$Res, SliderModel>;
  @useResult
  $Res call(
      {String id,
      String image,
      String description,
      String link,
      String page,
      String status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$SliderModelCopyWithImpl<$Res, $Val extends SliderModel>
    implements $SliderModelCopyWith<$Res> {
  _$SliderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? description = null,
    Object? link = null,
    Object? page = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderModelImplCopyWith<$Res>
    implements $SliderModelCopyWith<$Res> {
  factory _$$SliderModelImplCopyWith(
          _$SliderModelImpl value, $Res Function(_$SliderModelImpl) then) =
      __$$SliderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String image,
      String description,
      String link,
      String page,
      String status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$SliderModelImplCopyWithImpl<$Res>
    extends _$SliderModelCopyWithImpl<$Res, _$SliderModelImpl>
    implements _$$SliderModelImplCopyWith<$Res> {
  __$$SliderModelImplCopyWithImpl(
      _$SliderModelImpl _value, $Res Function(_$SliderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? description = null,
    Object? link = null,
    Object? page = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SliderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderModelImpl implements _SliderModel {
  const _$SliderModelImpl(
      {required this.id,
      required this.image,
      required this.description,
      required this.link,
      required this.page,
      required this.status,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SliderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderModelImplFromJson(json);

  @override
  final String id;
  @override
  final String image;
  @override
  final String description;
  @override
  final String link;
  @override
  final String page;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'SliderModel(id: $id, image: $image, description: $description, link: $link, page: $page, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, description, link,
      page, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      __$$SliderModelImplCopyWithImpl<_$SliderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderModelImplToJson(
      this,
    );
  }
}

abstract class _SliderModel implements SliderModel {
  const factory _SliderModel(
          {required final String id,
          required final String image,
          required final String description,
          required final String link,
          required final String page,
          required final String status,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$SliderModelImpl;

  factory _SliderModel.fromJson(Map<String, dynamic> json) =
      _$SliderModelImpl.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  String get description;
  @override
  String get link;
  @override
  String get page;
  @override
  String get status;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
