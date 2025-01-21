// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_for_you_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetForYouFeedModel _$GetForYouFeedModelFromJson(Map<String, dynamic> json) {
  return _GetForYouFeedModel.fromJson(json);
}

/// @nodoc
mixin _$GetForYouFeedModel {
  @JsonKey(name: 'data')
  GetForYouFeedData? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  /// Serializes this GetForYouFeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetForYouFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetForYouFeedModelCopyWith<GetForYouFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetForYouFeedModelCopyWith<$Res> {
  factory $GetForYouFeedModelCopyWith(
          GetForYouFeedModel value, $Res Function(GetForYouFeedModel) then) =
      _$GetForYouFeedModelCopyWithImpl<$Res, GetForYouFeedModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') GetForYouFeedData? data, String? msg});

  $GetForYouFeedDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetForYouFeedModelCopyWithImpl<$Res, $Val extends GetForYouFeedModel>
    implements $GetForYouFeedModelCopyWith<$Res> {
  _$GetForYouFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetForYouFeedModel
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
              as GetForYouFeedData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GetForYouFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetForYouFeedDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetForYouFeedDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetForYouFeedModelImplCopyWith<$Res>
    implements $GetForYouFeedModelCopyWith<$Res> {
  factory _$$GetForYouFeedModelImplCopyWith(_$GetForYouFeedModelImpl value,
          $Res Function(_$GetForYouFeedModelImpl) then) =
      __$$GetForYouFeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') GetForYouFeedData? data, String? msg});

  @override
  $GetForYouFeedDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetForYouFeedModelImplCopyWithImpl<$Res>
    extends _$GetForYouFeedModelCopyWithImpl<$Res, _$GetForYouFeedModelImpl>
    implements _$$GetForYouFeedModelImplCopyWith<$Res> {
  __$$GetForYouFeedModelImplCopyWithImpl(_$GetForYouFeedModelImpl _value,
      $Res Function(_$GetForYouFeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetForYouFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$GetForYouFeedModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetForYouFeedData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetForYouFeedModelImpl implements _GetForYouFeedModel {
  const _$GetForYouFeedModelImpl({@JsonKey(name: 'data') this.data, this.msg});

  factory _$GetForYouFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetForYouFeedModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final GetForYouFeedData? data;
  @override
  final String? msg;

  @override
  String toString() {
    return 'GetForYouFeedModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForYouFeedModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of GetForYouFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForYouFeedModelImplCopyWith<_$GetForYouFeedModelImpl> get copyWith =>
      __$$GetForYouFeedModelImplCopyWithImpl<_$GetForYouFeedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetForYouFeedModelImplToJson(
      this,
    );
  }
}

abstract class _GetForYouFeedModel implements GetForYouFeedModel {
  const factory _GetForYouFeedModel(
      {@JsonKey(name: 'data') final GetForYouFeedData? data,
      final String? msg}) = _$GetForYouFeedModelImpl;

  factory _GetForYouFeedModel.fromJson(Map<String, dynamic> json) =
      _$GetForYouFeedModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  GetForYouFeedData? get data;
  @override
  String? get msg;

  /// Create a copy of GetForYouFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetForYouFeedModelImplCopyWith<_$GetForYouFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetForYouFeedData _$GetForYouFeedDataFromJson(Map<String, dynamic> json) {
  return _GetForYouFeedData.fromJson(json);
}

/// @nodoc
mixin _$GetForYouFeedData {
  @JsonKey(name: 'feed_post')
  List<FeedPost>? get feedPost => throw _privateConstructorUsedError;

  /// Serializes this GetForYouFeedData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetForYouFeedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetForYouFeedDataCopyWith<GetForYouFeedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetForYouFeedDataCopyWith<$Res> {
  factory $GetForYouFeedDataCopyWith(
          GetForYouFeedData value, $Res Function(GetForYouFeedData) then) =
      _$GetForYouFeedDataCopyWithImpl<$Res, GetForYouFeedData>;
  @useResult
  $Res call({@JsonKey(name: 'feed_post') List<FeedPost>? feedPost});
}

/// @nodoc
class _$GetForYouFeedDataCopyWithImpl<$Res, $Val extends GetForYouFeedData>
    implements $GetForYouFeedDataCopyWith<$Res> {
  _$GetForYouFeedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetForYouFeedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedPost = freezed,
  }) {
    return _then(_value.copyWith(
      feedPost: freezed == feedPost
          ? _value.feedPost
          : feedPost // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetForYouFeedDataImplCopyWith<$Res>
    implements $GetForYouFeedDataCopyWith<$Res> {
  factory _$$GetForYouFeedDataImplCopyWith(_$GetForYouFeedDataImpl value,
          $Res Function(_$GetForYouFeedDataImpl) then) =
      __$$GetForYouFeedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'feed_post') List<FeedPost>? feedPost});
}

/// @nodoc
class __$$GetForYouFeedDataImplCopyWithImpl<$Res>
    extends _$GetForYouFeedDataCopyWithImpl<$Res, _$GetForYouFeedDataImpl>
    implements _$$GetForYouFeedDataImplCopyWith<$Res> {
  __$$GetForYouFeedDataImplCopyWithImpl(_$GetForYouFeedDataImpl _value,
      $Res Function(_$GetForYouFeedDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetForYouFeedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedPost = freezed,
  }) {
    return _then(_$GetForYouFeedDataImpl(
      feedPost: freezed == feedPost
          ? _value._feedPost
          : feedPost // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetForYouFeedDataImpl implements _GetForYouFeedData {
  const _$GetForYouFeedDataImpl(
      {@JsonKey(name: 'feed_post') final List<FeedPost>? feedPost})
      : _feedPost = feedPost;

  factory _$GetForYouFeedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetForYouFeedDataImplFromJson(json);

  final List<FeedPost>? _feedPost;
  @override
  @JsonKey(name: 'feed_post')
  List<FeedPost>? get feedPost {
    final value = _feedPost;
    if (value == null) return null;
    if (_feedPost is EqualUnmodifiableListView) return _feedPost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetForYouFeedData(feedPost: $feedPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForYouFeedDataImpl &&
            const DeepCollectionEquality().equals(other._feedPost, _feedPost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_feedPost));

  /// Create a copy of GetForYouFeedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForYouFeedDataImplCopyWith<_$GetForYouFeedDataImpl> get copyWith =>
      __$$GetForYouFeedDataImplCopyWithImpl<_$GetForYouFeedDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetForYouFeedDataImplToJson(
      this,
    );
  }
}

abstract class _GetForYouFeedData implements GetForYouFeedData {
  const factory _GetForYouFeedData(
          {@JsonKey(name: 'feed_post') final List<FeedPost>? feedPost}) =
      _$GetForYouFeedDataImpl;

  factory _GetForYouFeedData.fromJson(Map<String, dynamic> json) =
      _$GetForYouFeedDataImpl.fromJson;

  @override
  @JsonKey(name: 'feed_post')
  List<FeedPost>? get feedPost;

  /// Create a copy of GetForYouFeedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetForYouFeedDataImplCopyWith<_$GetForYouFeedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedPost _$FeedPostFromJson(Map<String, dynamic> json) {
  return _FeedPost.fromJson(json);
}

/// @nodoc
mixin _$FeedPost {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get like => throw _privateConstructorUsedError;
  String? get approved => throw _privateConstructorUsedError;
  String? get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption_title')
  String? get captionTitle => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;
  String? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_detail')
  FeedDetail? get feedDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'interested')
  Interested? get interested => throw _privateConstructorUsedError;
  @JsonKey(name: 'userdetail')
  UserDetail? get userDetail => throw _privateConstructorUsedError;

  /// Serializes this FeedPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedPostCopyWith<FeedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostCopyWith<$Res> {
  factory $FeedPostCopyWith(FeedPost value, $Res Function(FeedPost) then) =
      _$FeedPostCopyWithImpl<$Res, FeedPost>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      String? image,
      String? caption,
      String? like,
      String? approved,
      String? offers,
      @JsonKey(name: 'caption_title') String? captionTitle,
      List<Product>? products,
      String? wow,
      String? views,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'feed_detail') FeedDetail? feedDetail,
      @JsonKey(name: 'interested') Interested? interested,
      @JsonKey(name: 'userdetail') UserDetail? userDetail});

  $FeedDetailCopyWith<$Res>? get feedDetail;
  $InterestedCopyWith<$Res>? get interested;
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class _$FeedPostCopyWithImpl<$Res, $Val extends FeedPost>
    implements $FeedPostCopyWith<$Res> {
  _$FeedPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? image = freezed,
    Object? caption = freezed,
    Object? like = freezed,
    Object? approved = freezed,
    Object? offers = freezed,
    Object? captionTitle = freezed,
    Object? products = freezed,
    Object? wow = freezed,
    Object? views = freezed,
    Object? createdAt = freezed,
    Object? feedDetail = freezed,
    Object? interested = freezed,
    Object? userDetail = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      feedDetail: freezed == feedDetail
          ? _value.feedDetail
          : feedDetail // ignore: cast_nullable_to_non_nullable
              as FeedDetail?,
      interested: freezed == interested
          ? _value.interested
          : interested // ignore: cast_nullable_to_non_nullable
              as Interested?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ) as $Val);
  }

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedDetailCopyWith<$Res>? get feedDetail {
    if (_value.feedDetail == null) {
      return null;
    }

    return $FeedDetailCopyWith<$Res>(_value.feedDetail!, (value) {
      return _then(_value.copyWith(feedDetail: value) as $Val);
    });
  }

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InterestedCopyWith<$Res>? get interested {
    if (_value.interested == null) {
      return null;
    }

    return $InterestedCopyWith<$Res>(_value.interested!, (value) {
      return _then(_value.copyWith(interested: value) as $Val);
    });
  }

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<$Res>? get userDetail {
    if (_value.userDetail == null) {
      return null;
    }

    return $UserDetailCopyWith<$Res>(_value.userDetail!, (value) {
      return _then(_value.copyWith(userDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedPostImplCopyWith<$Res>
    implements $FeedPostCopyWith<$Res> {
  factory _$$FeedPostImplCopyWith(
          _$FeedPostImpl value, $Res Function(_$FeedPostImpl) then) =
      __$$FeedPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      String? image,
      String? caption,
      String? like,
      String? approved,
      String? offers,
      @JsonKey(name: 'caption_title') String? captionTitle,
      List<Product>? products,
      String? wow,
      String? views,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'feed_detail') FeedDetail? feedDetail,
      @JsonKey(name: 'interested') Interested? interested,
      @JsonKey(name: 'userdetail') UserDetail? userDetail});

  @override
  $FeedDetailCopyWith<$Res>? get feedDetail;
  @override
  $InterestedCopyWith<$Res>? get interested;
  @override
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class __$$FeedPostImplCopyWithImpl<$Res>
    extends _$FeedPostCopyWithImpl<$Res, _$FeedPostImpl>
    implements _$$FeedPostImplCopyWith<$Res> {
  __$$FeedPostImplCopyWithImpl(
      _$FeedPostImpl _value, $Res Function(_$FeedPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? image = freezed,
    Object? caption = freezed,
    Object? like = freezed,
    Object? approved = freezed,
    Object? offers = freezed,
    Object? captionTitle = freezed,
    Object? products = freezed,
    Object? wow = freezed,
    Object? views = freezed,
    Object? createdAt = freezed,
    Object? feedDetail = freezed,
    Object? interested = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_$FeedPostImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      feedDetail: freezed == feedDetail
          ? _value.feedDetail
          : feedDetail // ignore: cast_nullable_to_non_nullable
              as FeedDetail?,
      interested: freezed == interested
          ? _value.interested
          : interested // ignore: cast_nullable_to_non_nullable
              as Interested?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedPostImpl implements _FeedPost {
  const _$FeedPostImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.image,
      this.caption,
      this.like,
      this.approved,
      this.offers,
      @JsonKey(name: 'caption_title') this.captionTitle,
      final List<Product>? products,
      this.wow,
      this.views,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'feed_detail') this.feedDetail,
      @JsonKey(name: 'interested') this.interested,
      @JsonKey(name: 'userdetail') this.userDetail})
      : _products = products;

  factory _$FeedPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedPostImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final String? image;
  @override
  final String? caption;
  @override
  final String? like;
  @override
  final String? approved;
  @override
  final String? offers;
  @override
  @JsonKey(name: 'caption_title')
  final String? captionTitle;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? wow;
  @override
  final String? views;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'feed_detail')
  final FeedDetail? feedDetail;
  @override
  @JsonKey(name: 'interested')
  final Interested? interested;
  @override
  @JsonKey(name: 'userdetail')
  final UserDetail? userDetail;

  @override
  String toString() {
    return 'FeedPost(id: $id, userId: $userId, image: $image, caption: $caption, like: $like, approved: $approved, offers: $offers, captionTitle: $captionTitle, products: $products, wow: $wow, views: $views, createdAt: $createdAt, feedDetail: $feedDetail, interested: $interested, userDetail: $userDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.captionTitle, captionTitle) ||
                other.captionTitle == captionTitle) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.feedDetail, feedDetail) ||
                other.feedDetail == feedDetail) &&
            (identical(other.interested, interested) ||
                other.interested == interested) &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      image,
      caption,
      like,
      approved,
      offers,
      captionTitle,
      const DeepCollectionEquality().hash(_products),
      wow,
      views,
      createdAt,
      feedDetail,
      interested,
      userDetail);

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedPostImplCopyWith<_$FeedPostImpl> get copyWith =>
      __$$FeedPostImplCopyWithImpl<_$FeedPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedPostImplToJson(
      this,
    );
  }
}

abstract class _FeedPost implements FeedPost {
  const factory _FeedPost(
          {final String? id,
          @JsonKey(name: 'user_id') final String? userId,
          final String? image,
          final String? caption,
          final String? like,
          final String? approved,
          final String? offers,
          @JsonKey(name: 'caption_title') final String? captionTitle,
          final List<Product>? products,
          final String? wow,
          final String? views,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'feed_detail') final FeedDetail? feedDetail,
          @JsonKey(name: 'interested') final Interested? interested,
          @JsonKey(name: 'userdetail') final UserDetail? userDetail}) =
      _$FeedPostImpl;

  factory _FeedPost.fromJson(Map<String, dynamic> json) =
      _$FeedPostImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  String? get image;
  @override
  String? get caption;
  @override
  String? get like;
  @override
  String? get approved;
  @override
  String? get offers;
  @override
  @JsonKey(name: 'caption_title')
  String? get captionTitle;
  @override
  List<Product>? get products;
  @override
  String? get wow;
  @override
  String? get views;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'feed_detail')
  FeedDetail? get feedDetail;
  @override
  @JsonKey(name: 'interested')
  Interested? get interested;
  @override
  @JsonKey(name: 'userdetail')
  UserDetail? get userDetail;

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedPostImplCopyWith<_$FeedPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({String? id, String? title, String? price, String? image});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? price, String? image});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$ProductImpl implements _Product {
  const _$ProductImpl({this.id, this.title, this.price, this.image});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, image);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String? id,
      final String? title,
      final String? price,
      final String? image}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get price;
  @override
  String? get image;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedDetail _$FeedDetailFromJson(Map<String, dynamic> json) {
  return _FeedDetail.fromJson(json);
}

/// @nodoc
mixin _$FeedDetail {
  @JsonKey(name: 'caption_title')
  String? get captionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this FeedDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedDetailCopyWith<FeedDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailCopyWith<$Res> {
  factory $FeedDetailCopyWith(
          FeedDetail value, $Res Function(FeedDetail) then) =
      _$FeedDetailCopyWithImpl<$Res, FeedDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'caption_title') String? captionTitle,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$FeedDetailCopyWithImpl<$Res, $Val extends FeedDetail>
    implements $FeedDetailCopyWith<$Res> {
  _$FeedDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captionTitle = freezed,
    Object? caption = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedDetailImplCopyWith<$Res>
    implements $FeedDetailCopyWith<$Res> {
  factory _$$FeedDetailImplCopyWith(
          _$FeedDetailImpl value, $Res Function(_$FeedDetailImpl) then) =
      __$$FeedDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'caption_title') String? captionTitle,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$FeedDetailImplCopyWithImpl<$Res>
    extends _$FeedDetailCopyWithImpl<$Res, _$FeedDetailImpl>
    implements _$$FeedDetailImplCopyWith<$Res> {
  __$$FeedDetailImplCopyWithImpl(
      _$FeedDetailImpl _value, $Res Function(_$FeedDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captionTitle = freezed,
    Object? caption = freezed,
    Object? image = freezed,
  }) {
    return _then(_$FeedDetailImpl(
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
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
class _$FeedDetailImpl implements _FeedDetail {
  const _$FeedDetailImpl(
      {@JsonKey(name: 'caption_title') this.captionTitle,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'image') this.image});

  factory _$FeedDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedDetailImplFromJson(json);

  @override
  @JsonKey(name: 'caption_title')
  final String? captionTitle;
  @override
  @JsonKey(name: 'caption')
  final String? caption;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'FeedDetail(captionTitle: $captionTitle, caption: $caption, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailImpl &&
            (identical(other.captionTitle, captionTitle) ||
                other.captionTitle == captionTitle) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, captionTitle, caption, image);

  /// Create a copy of FeedDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDetailImplCopyWith<_$FeedDetailImpl> get copyWith =>
      __$$FeedDetailImplCopyWithImpl<_$FeedDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedDetailImplToJson(
      this,
    );
  }
}

abstract class _FeedDetail implements FeedDetail {
  const factory _FeedDetail(
      {@JsonKey(name: 'caption_title') final String? captionTitle,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'image') final String? image}) = _$FeedDetailImpl;

  factory _FeedDetail.fromJson(Map<String, dynamic> json) =
      _$FeedDetailImpl.fromJson;

  @override
  @JsonKey(name: 'caption_title')
  String? get captionTitle;
  @override
  @JsonKey(name: 'caption')
  String? get caption;
  @override
  @JsonKey(name: 'image')
  String? get image;

  /// Create a copy of FeedDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedDetailImplCopyWith<_$FeedDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Interested _$InterestedFromJson(Map<String, dynamic> json) {
  return _Interested.fromJson(json);
}

/// @nodoc
mixin _$Interested {
  @JsonKey(name: 'interested')
  String? get interested => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement')
  int? get engagement => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  String? get views => throw _privateConstructorUsedError;

  /// Serializes this Interested to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Interested
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestedCopyWith<Interested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestedCopyWith<$Res> {
  factory $InterestedCopyWith(
          Interested value, $Res Function(Interested) then) =
      _$InterestedCopyWithImpl<$Res, Interested>;
  @useResult
  $Res call(
      {@JsonKey(name: 'interested') String? interested,
      @JsonKey(name: 'engagement') int? engagement,
      @JsonKey(name: 'views') String? views});
}

/// @nodoc
class _$InterestedCopyWithImpl<$Res, $Val extends Interested>
    implements $InterestedCopyWith<$Res> {
  _$InterestedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Interested
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interested = freezed,
    Object? engagement = freezed,
    Object? views = freezed,
  }) {
    return _then(_value.copyWith(
      interested: freezed == interested
          ? _value.interested
          : interested // ignore: cast_nullable_to_non_nullable
              as String?,
      engagement: freezed == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestedImplCopyWith<$Res>
    implements $InterestedCopyWith<$Res> {
  factory _$$InterestedImplCopyWith(
          _$InterestedImpl value, $Res Function(_$InterestedImpl) then) =
      __$$InterestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'interested') String? interested,
      @JsonKey(name: 'engagement') int? engagement,
      @JsonKey(name: 'views') String? views});
}

/// @nodoc
class __$$InterestedImplCopyWithImpl<$Res>
    extends _$InterestedCopyWithImpl<$Res, _$InterestedImpl>
    implements _$$InterestedImplCopyWith<$Res> {
  __$$InterestedImplCopyWithImpl(
      _$InterestedImpl _value, $Res Function(_$InterestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Interested
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interested = freezed,
    Object? engagement = freezed,
    Object? views = freezed,
  }) {
    return _then(_$InterestedImpl(
      interested: freezed == interested
          ? _value.interested
          : interested // ignore: cast_nullable_to_non_nullable
              as String?,
      engagement: freezed == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestedImpl implements _Interested {
  const _$InterestedImpl(
      {@JsonKey(name: 'interested') this.interested,
      @JsonKey(name: 'engagement') this.engagement,
      @JsonKey(name: 'views') this.views});

  factory _$InterestedImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestedImplFromJson(json);

  @override
  @JsonKey(name: 'interested')
  final String? interested;
  @override
  @JsonKey(name: 'engagement')
  final int? engagement;
  @override
  @JsonKey(name: 'views')
  final String? views;

  @override
  String toString() {
    return 'Interested(interested: $interested, engagement: $engagement, views: $views)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestedImpl &&
            (identical(other.interested, interested) ||
                other.interested == interested) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.views, views) || other.views == views));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, interested, engagement, views);

  /// Create a copy of Interested
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestedImplCopyWith<_$InterestedImpl> get copyWith =>
      __$$InterestedImplCopyWithImpl<_$InterestedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestedImplToJson(
      this,
    );
  }
}

abstract class _Interested implements Interested {
  const factory _Interested(
      {@JsonKey(name: 'interested') final String? interested,
      @JsonKey(name: 'engagement') final int? engagement,
      @JsonKey(name: 'views') final String? views}) = _$InterestedImpl;

  factory _Interested.fromJson(Map<String, dynamic> json) =
      _$InterestedImpl.fromJson;

  @override
  @JsonKey(name: 'interested')
  String? get interested;
  @override
  @JsonKey(name: 'engagement')
  int? get engagement;
  @override
  @JsonKey(name: 'views')
  String? get views;

  /// Create a copy of Interested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestedImplCopyWith<_$InterestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
mixin _$UserDetail {
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribers')
  int? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCount')
  int? get productCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  @JsonKey(name: 'storyCount')
  int? get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'live_prize')
  int? get livePrize => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_id')
  String? get membershipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_title')
  String? get membershipTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_color')
  String? get membershipColor => throw _privateConstructorUsedError;

  /// Serializes this UserDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'subscribers') int? subscribers,
      @JsonKey(name: 'productCount') int? productCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'storyCount') int? storyCount,
      @JsonKey(name: 'live_prize') int? livePrize,
      double? distance,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorName = freezed,
    Object? subscribers = freezed,
    Object? productCount = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? storyCount = freezed,
    Object? livePrize = freezed,
    Object? distance = freezed,
    Object? vendorImage = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
  }) {
    return _then(_value.copyWith(
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      livePrize: freezed == livePrize
          ? _value.livePrize
          : livePrize // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipId: freezed == membershipId
          ? _value.membershipId
          : membershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipTitle: freezed == membershipTitle
          ? _value.membershipTitle
          : membershipTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipColor: freezed == membershipColor
          ? _value.membershipColor
          : membershipColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailImplCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$UserDetailImplCopyWith(
          _$UserDetailImpl value, $Res Function(_$UserDetailImpl) then) =
      __$$UserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'subscribers') int? subscribers,
      @JsonKey(name: 'productCount') int? productCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'storyCount') int? storyCount,
      @JsonKey(name: 'live_prize') int? livePrize,
      double? distance,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor});
}

/// @nodoc
class __$$UserDetailImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$UserDetailImpl>
    implements _$$UserDetailImplCopyWith<$Res> {
  __$$UserDetailImplCopyWithImpl(
      _$UserDetailImpl _value, $Res Function(_$UserDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorName = freezed,
    Object? subscribers = freezed,
    Object? productCount = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? storyCount = freezed,
    Object? livePrize = freezed,
    Object? distance = freezed,
    Object? vendorImage = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
  }) {
    return _then(_$UserDetailImpl(
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      livePrize: freezed == livePrize
          ? _value.livePrize
          : livePrize // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipId: freezed == membershipId
          ? _value.membershipId
          : membershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipTitle: freezed == membershipTitle
          ? _value.membershipTitle
          : membershipTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipColor: freezed == membershipColor
          ? _value.membershipColor
          : membershipColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailImpl implements _UserDetail {
  const _$UserDetailImpl(
      {@JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'subscribers') this.subscribers,
      @JsonKey(name: 'productCount') this.productCount,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      @JsonKey(name: 'storyCount') this.storyCount,
      @JsonKey(name: 'live_prize') this.livePrize,
      this.distance,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'membership_id') this.membershipId,
      @JsonKey(name: 'membership_title') this.membershipTitle,
      @JsonKey(name: 'membership_color') this.membershipColor});

  factory _$UserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'subscribers')
  final int? subscribers;
  @override
  @JsonKey(name: 'productCount')
  final int? productCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  @JsonKey(name: 'storyCount')
  final int? storyCount;
  @override
  @JsonKey(name: 'live_prize')
  final int? livePrize;
  @override
  final double? distance;
  @override
  @JsonKey(name: 'vendor_image')
  final String? vendorImage;
  @override
  @JsonKey(name: 'membership_id')
  final String? membershipId;
  @override
  @JsonKey(name: 'membership_title')
  final String? membershipTitle;
  @override
  @JsonKey(name: 'membership_color')
  final String? membershipColor;

  @override
  String toString() {
    return 'UserDetail(vendorName: $vendorName, subscribers: $subscribers, productCount: $productCount, hasSponsoredGifts: $hasSponsoredGifts, storyCount: $storyCount, livePrize: $livePrize, distance: $distance, vendorImage: $vendorImage, membershipId: $membershipId, membershipTitle: $membershipTitle, membershipColor: $membershipColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailImpl &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.livePrize, livePrize) ||
                other.livePrize == livePrize) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage) &&
            (identical(other.membershipId, membershipId) ||
                other.membershipId == membershipId) &&
            (identical(other.membershipTitle, membershipTitle) ||
                other.membershipTitle == membershipTitle) &&
            (identical(other.membershipColor, membershipColor) ||
                other.membershipColor == membershipColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorName,
      subscribers,
      productCount,
      hasSponsoredGifts,
      storyCount,
      livePrize,
      distance,
      vendorImage,
      membershipId,
      membershipTitle,
      membershipColor);

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      __$$UserDetailImplCopyWithImpl<_$UserDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailImplToJson(
      this,
    );
  }
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
          {@JsonKey(name: 'vendor_name') final String? vendorName,
          @JsonKey(name: 'subscribers') final int? subscribers,
          @JsonKey(name: 'productCount') final int? productCount,
          @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
          @JsonKey(name: 'storyCount') final int? storyCount,
          @JsonKey(name: 'live_prize') final int? livePrize,
          final double? distance,
          @JsonKey(name: 'vendor_image') final String? vendorImage,
          @JsonKey(name: 'membership_id') final String? membershipId,
          @JsonKey(name: 'membership_title') final String? membershipTitle,
          @JsonKey(name: 'membership_color') final String? membershipColor}) =
      _$UserDetailImpl;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$UserDetailImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'subscribers')
  int? get subscribers;
  @override
  @JsonKey(name: 'productCount')
  int? get productCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  @JsonKey(name: 'storyCount')
  int? get storyCount;
  @override
  @JsonKey(name: 'live_prize')
  int? get livePrize;
  @override
  double? get distance;
  @override
  @JsonKey(name: 'vendor_image')
  String? get vendorImage;
  @override
  @JsonKey(name: 'membership_id')
  String? get membershipId;
  @override
  @JsonKey(name: 'membership_title')
  String? get membershipTitle;
  @override
  @JsonKey(name: 'membership_color')
  String? get membershipColor;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
