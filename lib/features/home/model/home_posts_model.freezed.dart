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
  $Res call({List<Product> sponsored_posts, List<Product> trending});
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
  $Res call({List<Product> sponsored_posts, List<Product> trending});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePostsImpl implements _HomePosts {
  _$HomePostsImpl(
      {required final List<Product> sponsored_posts,
      required final List<Product> trending})
      : _sponsored_posts = sponsored_posts,
        _trending = trending;

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

  @override
  String toString() {
    return 'HomePosts(sponsored_posts: $sponsored_posts, trending: $trending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePostsImpl &&
            const DeepCollectionEquality()
                .equals(other._sponsored_posts, _sponsored_posts) &&
            const DeepCollectionEquality().equals(other._trending, _trending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sponsored_posts),
      const DeepCollectionEquality().hash(_trending));

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
      required final List<Product> trending}) = _$HomePostsImpl;

  factory _HomePosts.fromJson(Map<String, dynamic> json) =
      _$HomePostsImpl.fromJson;

  @override // required List<HomeAdvertisement> advertisements,
  List<Product> get sponsored_posts;
  @override
  List<Product> get trending;
  @override
  @JsonKey(ignore: true)
  _$$HomePostsImplCopyWith<_$HomePostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
