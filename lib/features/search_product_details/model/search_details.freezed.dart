// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchDetails _$SearchDetailsFromJson(Map<String, dynamic> json) {
  return _SearchDetails.fromJson(json);
}

/// @nodoc
mixin _$SearchDetails {
  int get currentPage => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDetailsCopyWith<SearchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDetailsCopyWith<$Res> {
  factory $SearchDetailsCopyWith(
          SearchDetails value, $Res Function(SearchDetails) then) =
      _$SearchDetailsCopyWithImpl<$Res, SearchDetails>;
  @useResult
  $Res call({int currentPage, List<Post> posts});
}

/// @nodoc
class _$SearchDetailsCopyWithImpl<$Res, $Val extends SearchDetails>
    implements $SearchDetailsCopyWith<$Res> {
  _$SearchDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDetailsImplCopyWith<$Res>
    implements $SearchDetailsCopyWith<$Res> {
  factory _$$SearchDetailsImplCopyWith(
          _$SearchDetailsImpl value, $Res Function(_$SearchDetailsImpl) then) =
      __$$SearchDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, List<Post> posts});
}

/// @nodoc
class __$$SearchDetailsImplCopyWithImpl<$Res>
    extends _$SearchDetailsCopyWithImpl<$Res, _$SearchDetailsImpl>
    implements _$$SearchDetailsImplCopyWith<$Res> {
  __$$SearchDetailsImplCopyWithImpl(
      _$SearchDetailsImpl _value, $Res Function(_$SearchDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? posts = null,
  }) {
    return _then(_$SearchDetailsImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDetailsImpl implements _SearchDetails {
  _$SearchDetailsImpl(
      {required this.currentPage, required final List<Post> posts})
      : _posts = posts;

  factory _$SearchDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDetailsImplFromJson(json);

  @override
  final int currentPage;
  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'SearchDetails(currentPage: $currentPage, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDetailsImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDetailsImplCopyWith<_$SearchDetailsImpl> get copyWith =>
      __$$SearchDetailsImplCopyWithImpl<_$SearchDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDetailsImplToJson(
      this,
    );
  }
}

abstract class _SearchDetails implements SearchDetails {
  factory _SearchDetails(
      {required final int currentPage,
      required final List<Post> posts}) = _$SearchDetailsImpl;

  factory _SearchDetails.fromJson(Map<String, dynamic> json) =
      _$SearchDetailsImpl.fromJson;

  @override
  int get currentPage;
  @override
  List<Post> get posts;
  @override
  @JsonKey(ignore: true)
  _$$SearchDetailsImplCopyWith<_$SearchDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError; //  String? countryCode,
//  String? userId,
//  String? categoryId,
//  String? postTypeId,
  String? get title => throw _privateConstructorUsedError;
  String? get contact_name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get visits => throw _privateConstructorUsedError;
  String? get discounted_price => throw _privateConstructorUsedError;
  String? get brand_new => throw _privateConstructorUsedError;
  String? get used => throw _privateConstructorUsedError;
  String? get services => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      String? title,
      String? contact_name,
      String? price,
      String? visits,
      String? discounted_price,
      String? brand_new,
      String? used,
      String? services,
      String? image});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? contact_name = freezed,
    Object? price = freezed,
    Object? visits = freezed,
    Object? discounted_price = freezed,
    Object? brand_new = freezed,
    Object? used = freezed,
    Object? services = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as String?,
      brand_new: freezed == brand_new
          ? _value.brand_new
          : brand_new // ignore: cast_nullable_to_non_nullable
              as String?,
      used: freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? title,
      String? contact_name,
      String? price,
      String? visits,
      String? discounted_price,
      String? brand_new,
      String? used,
      String? services,
      String? image});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? contact_name = freezed,
    Object? price = freezed,
    Object? visits = freezed,
    Object? discounted_price = freezed,
    Object? brand_new = freezed,
    Object? used = freezed,
    Object? services = freezed,
    Object? image = freezed,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as String?,
      brand_new: freezed == brand_new
          ? _value.brand_new
          : brand_new // ignore: cast_nullable_to_non_nullable
              as String?,
      used: freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
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
class _$PostImpl implements _Post {
  _$PostImpl(
      {required this.id,
      this.title,
      this.contact_name,
      this.price,
      this.visits,
      this.discounted_price,
      this.brand_new,
      this.used,
      this.services,
      this.image});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String id;
//  String? countryCode,
//  String? userId,
//  String? categoryId,
//  String? postTypeId,
  @override
  final String? title;
  @override
  final String? contact_name;
  @override
  final String? price;
  @override
  final String? visits;
  @override
  final String? discounted_price;
  @override
  final String? brand_new;
  @override
  final String? used;
  @override
  final String? services;
  @override
  final String? image;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, contact_name: $contact_name, price: $price, visits: $visits, discounted_price: $discounted_price, brand_new: $brand_new, used: $used, services: $services, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contact_name, contact_name) ||
                other.contact_name == contact_name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.discounted_price, discounted_price) ||
                other.discounted_price == discounted_price) &&
            (identical(other.brand_new, brand_new) ||
                other.brand_new == brand_new) &&
            (identical(other.used, used) || other.used == used) &&
            (identical(other.services, services) ||
                other.services == services) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, contact_name, price,
      visits, discounted_price, brand_new, used, services, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required final String id,
      final String? title,
      final String? contact_name,
      final String? price,
      final String? visits,
      final String? discounted_price,
      final String? brand_new,
      final String? used,
      final String? services,
      final String? image}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String get id;
  @override //  String? countryCode,
//  String? userId,
//  String? categoryId,
//  String? postTypeId,
  String? get title;
  @override
  String? get contact_name;
  @override
  String? get price;
  @override
  String? get visits;
  @override
  String? get discounted_price;
  @override
  String? get brand_new;
  @override
  String? get used;
  @override
  String? get services;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
