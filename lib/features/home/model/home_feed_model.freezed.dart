// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedStoryResponse _$FeedStoryResponseFromJson(Map<String, dynamic> json) {
  return _FeedStoryResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedStoryResponse {
  Data? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedStoryResponseCopyWith<FeedStoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStoryResponseCopyWith<$Res> {
  factory $FeedStoryResponseCopyWith(
          FeedStoryResponse value, $Res Function(FeedStoryResponse) then) =
      _$FeedStoryResponseCopyWithImpl<$Res, FeedStoryResponse>;
  @useResult
  $Res call({Data? data, String? msg});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedStoryResponseCopyWithImpl<$Res, $Val extends FeedStoryResponse>
    implements $FeedStoryResponseCopyWith<$Res> {
  _$FeedStoryResponseCopyWithImpl(this._value, this._then);

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
              as Data?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

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
abstract class _$$FeedStoryResponseImplCopyWith<$Res>
    implements $FeedStoryResponseCopyWith<$Res> {
  factory _$$FeedStoryResponseImplCopyWith(_$FeedStoryResponseImpl value,
          $Res Function(_$FeedStoryResponseImpl) then) =
      __$$FeedStoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, String? msg});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FeedStoryResponseImplCopyWithImpl<$Res>
    extends _$FeedStoryResponseCopyWithImpl<$Res, _$FeedStoryResponseImpl>
    implements _$$FeedStoryResponseImplCopyWith<$Res> {
  __$$FeedStoryResponseImplCopyWithImpl(_$FeedStoryResponseImpl _value,
      $Res Function(_$FeedStoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$FeedStoryResponseImpl(
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
class _$FeedStoryResponseImpl implements _FeedStoryResponse {
  const _$FeedStoryResponseImpl({required this.data, required this.msg});

  factory _$FeedStoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedStoryResponseImplFromJson(json);

  @override
  final Data? data;
  @override
  final String? msg;

  @override
  String toString() {
    return 'FeedStoryResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStoryResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStoryResponseImplCopyWith<_$FeedStoryResponseImpl> get copyWith =>
      __$$FeedStoryResponseImplCopyWithImpl<_$FeedStoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedStoryResponseImplToJson(
      this,
    );
  }
}

abstract class _FeedStoryResponse implements FeedStoryResponse {
  const factory _FeedStoryResponse(
      {required final Data? data,
      required final String? msg}) = _$FeedStoryResponseImpl;

  factory _FeedStoryResponse.fromJson(Map<String, dynamic> json) =
      _$FeedStoryResponseImpl.fromJson;

  @override
  Data? get data;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$FeedStoryResponseImplCopyWith<_$FeedStoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'feed_story')
  List<FeedStory> get feedStory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: 'feed_story') List<FeedStory> feedStory});
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
    Object? feedStory = null,
  }) {
    return _then(_value.copyWith(
      feedStory: null == feedStory
          ? _value.feedStory
          : feedStory // ignore: cast_nullable_to_non_nullable
              as List<FeedStory>,
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
  $Res call({@JsonKey(name: 'feed_story') List<FeedStory> feedStory});
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
    Object? feedStory = null,
  }) {
    return _then(_$DataImpl(
      feedStory: null == feedStory
          ? _value._feedStory
          : feedStory // ignore: cast_nullable_to_non_nullable
              as List<FeedStory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'feed_story') required final List<FeedStory> feedStory})
      : _feedStory = feedStory;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<FeedStory> _feedStory;
  @override
  @JsonKey(name: 'feed_story')
  List<FeedStory> get feedStory {
    if (_feedStory is EqualUnmodifiableListView) return _feedStory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedStory);
  }

  @override
  String toString() {
    return 'Data(feedStory: $feedStory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._feedStory, _feedStory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_feedStory));

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
      {@JsonKey(name: 'feed_story')
      required final List<FeedStory> feedStory}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'feed_story')
  List<FeedStory> get feedStory;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedStory _$FeedStoryFromJson(Map<String, dynamic> json) {
  return _FeedStory.fromJson(json);
}

/// @nodoc
mixin _$FeedStory {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_count')
  int get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool get hasSponsoredGifts => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedStoryCopyWith<FeedStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStoryCopyWith<$Res> {
  factory $FeedStoryCopyWith(FeedStory value, $Res Function(FeedStory) then) =
      _$FeedStoryCopyWithImpl<$Res, FeedStory>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'vendor_name') String vendorName,
      @JsonKey(name: 'vendor_image') String vendorImage,
      @JsonKey(name: 'story_count') int storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool hasSponsoredGifts,
      List<Post> posts});
}

/// @nodoc
class _$FeedStoryCopyWithImpl<$Res, $Val extends FeedStory>
    implements $FeedStoryCopyWith<$Res> {
  _$FeedStoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorName = null,
    Object? vendorImage = null,
    Object? storyCount = null,
    Object? hasSponsoredGifts = null,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorImage: null == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasSponsoredGifts: null == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedStoryImplCopyWith<$Res>
    implements $FeedStoryCopyWith<$Res> {
  factory _$$FeedStoryImplCopyWith(
          _$FeedStoryImpl value, $Res Function(_$FeedStoryImpl) then) =
      __$$FeedStoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'vendor_name') String vendorName,
      @JsonKey(name: 'vendor_image') String vendorImage,
      @JsonKey(name: 'story_count') int storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool hasSponsoredGifts,
      List<Post> posts});
}

/// @nodoc
class __$$FeedStoryImplCopyWithImpl<$Res>
    extends _$FeedStoryCopyWithImpl<$Res, _$FeedStoryImpl>
    implements _$$FeedStoryImplCopyWith<$Res> {
  __$$FeedStoryImplCopyWithImpl(
      _$FeedStoryImpl _value, $Res Function(_$FeedStoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorName = null,
    Object? vendorImage = null,
    Object? storyCount = null,
    Object? hasSponsoredGifts = null,
    Object? posts = null,
  }) {
    return _then(_$FeedStoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorImage: null == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasSponsoredGifts: null == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedStoryImpl implements _FeedStory {
  const _$FeedStoryImpl(
      {required this.id,
      @JsonKey(name: 'vendor_name') required this.vendorName,
      @JsonKey(name: 'vendor_image') required this.vendorImage,
      @JsonKey(name: 'story_count') required this.storyCount,
      @JsonKey(name: 'has_sponsored_gifts') required this.hasSponsoredGifts,
      required final List<Post> posts})
      : _posts = posts;

  factory _$FeedStoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedStoryImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'vendor_name')
  final String vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  final String vendorImage;
  @override
  @JsonKey(name: 'story_count')
  final int storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool hasSponsoredGifts;
  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'FeedStory(id: $id, vendorName: $vendorName, vendorImage: $vendorImage, storyCount: $storyCount, hasSponsoredGifts: $hasSponsoredGifts, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      vendorName,
      vendorImage,
      storyCount,
      hasSponsoredGifts,
      const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStoryImplCopyWith<_$FeedStoryImpl> get copyWith =>
      __$$FeedStoryImplCopyWithImpl<_$FeedStoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedStoryImplToJson(
      this,
    );
  }
}

abstract class _FeedStory implements FeedStory {
  const factory _FeedStory(
      {required final String id,
      @JsonKey(name: 'vendor_name') required final String vendorName,
      @JsonKey(name: 'vendor_image') required final String vendorImage,
      @JsonKey(name: 'story_count') required final int storyCount,
      @JsonKey(name: 'has_sponsored_gifts')
      required final bool hasSponsoredGifts,
      required final List<Post> posts}) = _$FeedStoryImpl;

  factory _FeedStory.fromJson(Map<String, dynamic> json) =
      _$FeedStoryImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'vendor_name')
  String get vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  String get vendorImage;
  @override
  @JsonKey(name: 'story_count')
  int get storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool get hasSponsoredGifts;
  @override
  List<Post> get posts;
  @override
  @JsonKey(ignore: true)
  _$$FeedStoryImplCopyWith<_$FeedStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  @JsonKey(name: 'vendor_name')
  String get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_count')
  int get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool get hasSponsoredGifts => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarproductcount')
  int get similarProductCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  String get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  double get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'vendor_name') String vendorName,
      @JsonKey(name: 'vendor_image') String vendorImage,
      @JsonKey(name: 'story_count') int storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool hasSponsoredGifts,
      String id,
      String title,
      String image,
      @JsonKey(name: 'similarproductcount') int similarProductCount,
      @JsonKey(name: 'comment_count') String commentCount,
      @JsonKey(name: 'average_rating') double averageRating,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
      String? wow});
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
    Object? vendorName = null,
    Object? vendorImage = null,
    Object? storyCount = null,
    Object? hasSponsoredGifts = null,
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? similarProductCount = null,
    Object? commentCount = null,
    Object? averageRating = null,
    Object? discountPercentage = freezed,
    Object? wow = freezed,
  }) {
    return _then(_value.copyWith(
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorImage: null == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasSponsoredGifts: null == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      similarProductCount: null == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'vendor_name') String vendorName,
      @JsonKey(name: 'vendor_image') String vendorImage,
      @JsonKey(name: 'story_count') int storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool hasSponsoredGifts,
      String id,
      String title,
      String image,
      @JsonKey(name: 'similarproductcount') int similarProductCount,
      @JsonKey(name: 'comment_count') String commentCount,
      @JsonKey(name: 'average_rating') double averageRating,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
      String? wow});
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
    Object? vendorName = null,
    Object? vendorImage = null,
    Object? storyCount = null,
    Object? hasSponsoredGifts = null,
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? similarProductCount = null,
    Object? commentCount = null,
    Object? averageRating = null,
    Object? discountPercentage = freezed,
    Object? wow = freezed,
  }) {
    return _then(_$PostImpl(
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorImage: null == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasSponsoredGifts: null == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      similarProductCount: null == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {@JsonKey(name: 'vendor_name') required this.vendorName,
      @JsonKey(name: 'vendor_image') required this.vendorImage,
      @JsonKey(name: 'story_count') required this.storyCount,
      @JsonKey(name: 'has_sponsored_gifts') required this.hasSponsoredGifts,
      required this.id,
      required this.title,
      required this.image,
      @JsonKey(name: 'similarproductcount') required this.similarProductCount,
      @JsonKey(name: 'comment_count') required this.commentCount,
      @JsonKey(name: 'average_rating') required this.averageRating,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      this.wow});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_name')
  final String vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  final String vendorImage;
  @override
  @JsonKey(name: 'story_count')
  final int storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool hasSponsoredGifts;
  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  @JsonKey(name: 'similarproductcount')
  final int similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  final String commentCount;
  @override
  @JsonKey(name: 'average_rating')
  final double averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;
  @override
  final String? wow;

  @override
  String toString() {
    return 'Post(vendorName: $vendorName, vendorImage: $vendorImage, storyCount: $storyCount, hasSponsoredGifts: $hasSponsoredGifts, id: $id, title: $title, image: $image, similarProductCount: $similarProductCount, commentCount: $commentCount, averageRating: $averageRating, discountPercentage: $discountPercentage, wow: $wow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.similarProductCount, similarProductCount) ||
                other.similarProductCount == similarProductCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.wow, wow) || other.wow == wow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorName,
      vendorImage,
      storyCount,
      hasSponsoredGifts,
      id,
      title,
      image,
      similarProductCount,
      commentCount,
      averageRating,
      discountPercentage,
      wow);

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
  const factory _Post(
      {@JsonKey(name: 'vendor_name') required final String vendorName,
      @JsonKey(name: 'vendor_image') required final String vendorImage,
      @JsonKey(name: 'story_count') required final int storyCount,
      @JsonKey(name: 'has_sponsored_gifts')
      required final bool hasSponsoredGifts,
      required final String id,
      required final String title,
      required final String image,
      @JsonKey(name: 'similarproductcount')
      required final int similarProductCount,
      @JsonKey(name: 'comment_count') required final String commentCount,
      @JsonKey(name: 'average_rating') required final double averageRating,
      @JsonKey(name: 'discount_percentage') final double? discountPercentage,
      final String? wow}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_name')
  String get vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  String get vendorImage;
  @override
  @JsonKey(name: 'story_count')
  int get storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool get hasSponsoredGifts;
  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(name: 'similarproductcount')
  int get similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  String get commentCount;
  @override
  @JsonKey(name: 'average_rating')
  double get averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;
  @override
  String? get wow;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
