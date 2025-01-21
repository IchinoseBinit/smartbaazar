// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feed_stories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFeedStoriesModel _$GetFeedStoriesModelFromJson(Map<String, dynamic> json) {
  return _GetFeedStoriesModel.fromJson(json);
}

/// @nodoc
mixin _$GetFeedStoriesModel {
  @JsonKey(name: 'data')
  FeedStoryData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;

  /// Serializes this GetFeedStoriesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedStoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedStoriesModelCopyWith<GetFeedStoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedStoriesModelCopyWith<$Res> {
  factory $GetFeedStoriesModelCopyWith(
          GetFeedStoriesModel value, $Res Function(GetFeedStoriesModel) then) =
      _$GetFeedStoriesModelCopyWithImpl<$Res, GetFeedStoriesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') FeedStoryData? data,
      @JsonKey(name: 'msg') String? msg});

  $FeedStoryDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetFeedStoriesModelCopyWithImpl<$Res, $Val extends GetFeedStoriesModel>
    implements $GetFeedStoriesModelCopyWith<$Res> {
  _$GetFeedStoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedStoriesModel
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
              as FeedStoryData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GetFeedStoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedStoryDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FeedStoryDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFeedStoriesModelImplCopyWith<$Res>
    implements $GetFeedStoriesModelCopyWith<$Res> {
  factory _$$GetFeedStoriesModelImplCopyWith(_$GetFeedStoriesModelImpl value,
          $Res Function(_$GetFeedStoriesModelImpl) then) =
      __$$GetFeedStoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') FeedStoryData? data,
      @JsonKey(name: 'msg') String? msg});

  @override
  $FeedStoryDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetFeedStoriesModelImplCopyWithImpl<$Res>
    extends _$GetFeedStoriesModelCopyWithImpl<$Res, _$GetFeedStoriesModelImpl>
    implements _$$GetFeedStoriesModelImplCopyWith<$Res> {
  __$$GetFeedStoriesModelImplCopyWithImpl(_$GetFeedStoriesModelImpl _value,
      $Res Function(_$GetFeedStoriesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFeedStoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$GetFeedStoriesModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeedStoryData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFeedStoriesModelImpl implements _GetFeedStoriesModel {
  const _$GetFeedStoriesModelImpl(
      {@JsonKey(name: 'data') this.data, @JsonKey(name: 'msg') this.msg});

  factory _$GetFeedStoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFeedStoriesModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final FeedStoryData? data;
  @override
  @JsonKey(name: 'msg')
  final String? msg;

  @override
  String toString() {
    return 'GetFeedStoriesModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedStoriesModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of GetFeedStoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedStoriesModelImplCopyWith<_$GetFeedStoriesModelImpl> get copyWith =>
      __$$GetFeedStoriesModelImplCopyWithImpl<_$GetFeedStoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFeedStoriesModelImplToJson(
      this,
    );
  }
}

abstract class _GetFeedStoriesModel implements GetFeedStoriesModel {
  const factory _GetFeedStoriesModel(
      {@JsonKey(name: 'data') final FeedStoryData? data,
      @JsonKey(name: 'msg') final String? msg}) = _$GetFeedStoriesModelImpl;

  factory _GetFeedStoriesModel.fromJson(Map<String, dynamic> json) =
      _$GetFeedStoriesModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  FeedStoryData? get data;
  @override
  @JsonKey(name: 'msg')
  String? get msg;

  /// Create a copy of GetFeedStoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedStoriesModelImplCopyWith<_$GetFeedStoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedStoryData _$FeedStoryDataFromJson(Map<String, dynamic> json) {
  return _FeedStoryData.fromJson(json);
}

/// @nodoc
mixin _$FeedStoryData {
  @JsonKey(name: 'feedstory')
  FeedStory? get feedstory => throw _privateConstructorUsedError;

  /// Serializes this FeedStoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedStoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedStoryDataCopyWith<FeedStoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStoryDataCopyWith<$Res> {
  factory $FeedStoryDataCopyWith(
          FeedStoryData value, $Res Function(FeedStoryData) then) =
      _$FeedStoryDataCopyWithImpl<$Res, FeedStoryData>;
  @useResult
  $Res call({@JsonKey(name: 'feedstory') FeedStory? feedstory});

  $FeedStoryCopyWith<$Res>? get feedstory;
}

/// @nodoc
class _$FeedStoryDataCopyWithImpl<$Res, $Val extends FeedStoryData>
    implements $FeedStoryDataCopyWith<$Res> {
  _$FeedStoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedStoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedstory = freezed,
  }) {
    return _then(_value.copyWith(
      feedstory: freezed == feedstory
          ? _value.feedstory
          : feedstory // ignore: cast_nullable_to_non_nullable
              as FeedStory?,
    ) as $Val);
  }

  /// Create a copy of FeedStoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedStoryCopyWith<$Res>? get feedstory {
    if (_value.feedstory == null) {
      return null;
    }

    return $FeedStoryCopyWith<$Res>(_value.feedstory!, (value) {
      return _then(_value.copyWith(feedstory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedStoryDataImplCopyWith<$Res>
    implements $FeedStoryDataCopyWith<$Res> {
  factory _$$FeedStoryDataImplCopyWith(
          _$FeedStoryDataImpl value, $Res Function(_$FeedStoryDataImpl) then) =
      __$$FeedStoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'feedstory') FeedStory? feedstory});

  @override
  $FeedStoryCopyWith<$Res>? get feedstory;
}

/// @nodoc
class __$$FeedStoryDataImplCopyWithImpl<$Res>
    extends _$FeedStoryDataCopyWithImpl<$Res, _$FeedStoryDataImpl>
    implements _$$FeedStoryDataImplCopyWith<$Res> {
  __$$FeedStoryDataImplCopyWithImpl(
      _$FeedStoryDataImpl _value, $Res Function(_$FeedStoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedStoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedstory = freezed,
  }) {
    return _then(_$FeedStoryDataImpl(
      feedstory: freezed == feedstory
          ? _value.feedstory
          : feedstory // ignore: cast_nullable_to_non_nullable
              as FeedStory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedStoryDataImpl implements _FeedStoryData {
  const _$FeedStoryDataImpl({@JsonKey(name: 'feedstory') this.feedstory});

  factory _$FeedStoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedStoryDataImplFromJson(json);

  @override
  @JsonKey(name: 'feedstory')
  final FeedStory? feedstory;

  @override
  String toString() {
    return 'FeedStoryData(feedstory: $feedstory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStoryDataImpl &&
            (identical(other.feedstory, feedstory) ||
                other.feedstory == feedstory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, feedstory);

  /// Create a copy of FeedStoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStoryDataImplCopyWith<_$FeedStoryDataImpl> get copyWith =>
      __$$FeedStoryDataImplCopyWithImpl<_$FeedStoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedStoryDataImplToJson(
      this,
    );
  }
}

abstract class _FeedStoryData implements FeedStoryData {
  const factory _FeedStoryData(
          {@JsonKey(name: 'feedstory') final FeedStory? feedstory}) =
      _$FeedStoryDataImpl;

  factory _FeedStoryData.fromJson(Map<String, dynamic> json) =
      _$FeedStoryDataImpl.fromJson;

  @override
  @JsonKey(name: 'feedstory')
  FeedStory? get feedstory;

  /// Create a copy of FeedStoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedStoryDataImplCopyWith<_$FeedStoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedStory _$FeedStoryFromJson(Map<String, dynamic> json) {
  return _FeedStory.fromJson(json);
}

/// @nodoc
mixin _$FeedStory {
  @JsonKey(name: 'posts')
  List<Post>? get posts => throw _privateConstructorUsedError;

  /// Serializes this FeedStory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedStory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedStoryCopyWith<FeedStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStoryCopyWith<$Res> {
  factory $FeedStoryCopyWith(FeedStory value, $Res Function(FeedStory) then) =
      _$FeedStoryCopyWithImpl<$Res, FeedStory>;
  @useResult
  $Res call({@JsonKey(name: 'posts') List<Post>? posts});
}

/// @nodoc
class _$FeedStoryCopyWithImpl<$Res, $Val extends FeedStory>
    implements $FeedStoryCopyWith<$Res> {
  _$FeedStoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedStory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
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
  $Res call({@JsonKey(name: 'posts') List<Post>? posts});
}

/// @nodoc
class __$$FeedStoryImplCopyWithImpl<$Res>
    extends _$FeedStoryCopyWithImpl<$Res, _$FeedStoryImpl>
    implements _$$FeedStoryImplCopyWith<$Res> {
  __$$FeedStoryImplCopyWithImpl(
      _$FeedStoryImpl _value, $Res Function(_$FeedStoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedStory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$FeedStoryImpl(
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedStoryImpl implements _FeedStory {
  const _$FeedStoryImpl({@JsonKey(name: 'posts') final List<Post>? posts})
      : _posts = posts;

  factory _$FeedStoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedStoryImplFromJson(json);

  final List<Post>? _posts;
  @override
  @JsonKey(name: 'posts')
  List<Post>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FeedStory(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStoryImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  /// Create a copy of FeedStory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _FeedStory({@JsonKey(name: 'posts') final List<Post>? posts}) =
      _$FeedStoryImpl;

  factory _FeedStory.fromJson(Map<String, dynamic> json) =
      _$FeedStoryImpl.fromJson;

  @override
  @JsonKey(name: 'posts')
  List<Post>? get posts;

  /// Create a copy of FeedStory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedStoryImplCopyWith<_$FeedStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  @JsonKey(name: 'vendor_id')
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_count')
  int? get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  String? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  dynamic get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'story_count') int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      String? id,
      String? title,
      String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') dynamic averageRating,
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

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? storyCount = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? similarProductCount = freezed,
    Object? commentCount = freezed,
    Object? averageRating = freezed,
    Object? discountPercentage = freezed,
    Object? wow = freezed,
  }) {
    return _then(_value.copyWith(
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'story_count') int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      String? id,
      String? title,
      String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') dynamic averageRating,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
      String? wow});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? storyCount = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? similarProductCount = freezed,
    Object? commentCount = freezed,
    Object? averageRating = freezed,
    Object? discountPercentage = freezed,
    Object? wow = freezed,
  }) {
    return _then(_$PostImpl(
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'story_count') this.storyCount,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      this.id,
      this.title,
      this.image,
      @JsonKey(name: 'similarproductcount') this.similarProductCount,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'average_rating') this.averageRating,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      this.wow});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final String? vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  final String? vendorImage;
  @override
  @JsonKey(name: 'story_count')
  final int? storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  @JsonKey(name: 'similarproductcount')
  final int? similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  final String? commentCount;
  @override
  @JsonKey(name: 'average_rating')
  final dynamic averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;
  @override
  final String? wow;

  @override
  String toString() {
    return 'Post(vendorId: $vendorId, vendorName: $vendorName, vendorImage: $vendorImage, storyCount: $storyCount, hasSponsoredGifts: $hasSponsoredGifts, id: $id, title: $title, image: $image, similarProductCount: $similarProductCount, commentCount: $commentCount, averageRating: $averageRating, discountPercentage: $discountPercentage, wow: $wow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
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
            const DeepCollectionEquality()
                .equals(other.averageRating, averageRating) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.wow, wow) || other.wow == wow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorId,
      vendorName,
      vendorImage,
      storyCount,
      hasSponsoredGifts,
      id,
      title,
      image,
      similarProductCount,
      commentCount,
      const DeepCollectionEquality().hash(averageRating),
      discountPercentage,
      wow);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {@JsonKey(name: 'vendor_id') final String? vendorId,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_image') final String? vendorImage,
      @JsonKey(name: 'story_count') final int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
      final String? id,
      final String? title,
      final String? image,
      @JsonKey(name: 'similarproductcount') final int? similarProductCount,
      @JsonKey(name: 'comment_count') final String? commentCount,
      @JsonKey(name: 'average_rating') final dynamic averageRating,
      @JsonKey(name: 'discount_percentage') final double? discountPercentage,
      final String? wow}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  String? get vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  String? get vendorImage;
  @override
  @JsonKey(name: 'story_count')
  int? get storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  String? get commentCount;
  @override
  @JsonKey(name: 'average_rating')
  dynamic get averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;
  @override
  String? get wow;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
