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
  FeedData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetForYouFeedModelCopyWith<GetForYouFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetForYouFeedModelCopyWith<$Res> {
  factory $GetForYouFeedModelCopyWith(
          GetForYouFeedModel value, $Res Function(GetForYouFeedModel) then) =
      _$GetForYouFeedModelCopyWithImpl<$Res, GetForYouFeedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') FeedData? data,
      @JsonKey(name: 'msg') String? message});

  $FeedDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetForYouFeedModelCopyWithImpl<$Res, $Val extends GetForYouFeedModel>
    implements $GetForYouFeedModelCopyWith<$Res> {
  _$GetForYouFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeedData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FeedDataCopyWith<$Res>(_value.data!, (value) {
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
  $Res call(
      {@JsonKey(name: 'data') FeedData? data,
      @JsonKey(name: 'msg') String? message});

  @override
  $FeedDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetForYouFeedModelImplCopyWithImpl<$Res>
    extends _$GetForYouFeedModelCopyWithImpl<$Res, _$GetForYouFeedModelImpl>
    implements _$$GetForYouFeedModelImplCopyWith<$Res> {
  __$$GetForYouFeedModelImplCopyWithImpl(_$GetForYouFeedModelImpl _value,
      $Res Function(_$GetForYouFeedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetForYouFeedModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeedData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetForYouFeedModelImpl implements _GetForYouFeedModel {
  const _$GetForYouFeedModelImpl(
      {@JsonKey(name: 'data') this.data, @JsonKey(name: 'msg') this.message});

  factory _$GetForYouFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetForYouFeedModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final FeedData? data;
  @override
  @JsonKey(name: 'msg')
  final String? message;

  @override
  String toString() {
    return 'GetForYouFeedModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForYouFeedModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'data') final FeedData? data,
      @JsonKey(name: 'msg') final String? message}) = _$GetForYouFeedModelImpl;

  factory _GetForYouFeedModel.fromJson(Map<String, dynamic> json) =
      _$GetForYouFeedModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  FeedData? get data;
  @override
  @JsonKey(name: 'msg')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$GetForYouFeedModelImplCopyWith<_$GetForYouFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedData _$FeedDataFromJson(Map<String, dynamic> json) {
  return _FeedData.fromJson(json);
}

/// @nodoc
mixin _$FeedData {
  @JsonKey(name: 'feed_post')
  List<FeedPost>? get feedPost => throw _privateConstructorUsedError;
  @JsonKey(name: 'story')
  Map<String, Story>? get story => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedDataCopyWith<FeedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDataCopyWith<$Res> {
  factory $FeedDataCopyWith(FeedData value, $Res Function(FeedData) then) =
      _$FeedDataCopyWithImpl<$Res, FeedData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'feed_post') List<FeedPost>? feedPost,
      @JsonKey(name: 'story') Map<String, Story>? story});
}

/// @nodoc
class _$FeedDataCopyWithImpl<$Res, $Val extends FeedData>
    implements $FeedDataCopyWith<$Res> {
  _$FeedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedPost = freezed,
    Object? story = freezed,
  }) {
    return _then(_value.copyWith(
      feedPost: freezed == feedPost
          ? _value.feedPost
          : feedPost // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Map<String, Story>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedDataImplCopyWith<$Res>
    implements $FeedDataCopyWith<$Res> {
  factory _$$FeedDataImplCopyWith(
          _$FeedDataImpl value, $Res Function(_$FeedDataImpl) then) =
      __$$FeedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'feed_post') List<FeedPost>? feedPost,
      @JsonKey(name: 'story') Map<String, Story>? story});
}

/// @nodoc
class __$$FeedDataImplCopyWithImpl<$Res>
    extends _$FeedDataCopyWithImpl<$Res, _$FeedDataImpl>
    implements _$$FeedDataImplCopyWith<$Res> {
  __$$FeedDataImplCopyWithImpl(
      _$FeedDataImpl _value, $Res Function(_$FeedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedPost = freezed,
    Object? story = freezed,
  }) {
    return _then(_$FeedDataImpl(
      feedPost: freezed == feedPost
          ? _value._feedPost
          : feedPost // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
      story: freezed == story
          ? _value._story
          : story // ignore: cast_nullable_to_non_nullable
              as Map<String, Story>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedDataImpl implements _FeedData {
  const _$FeedDataImpl(
      {@JsonKey(name: 'feed_post') final List<FeedPost>? feedPost,
      @JsonKey(name: 'story') final Map<String, Story>? story})
      : _feedPost = feedPost,
        _story = story;

  factory _$FeedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedDataImplFromJson(json);

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

  final Map<String, Story>? _story;
  @override
  @JsonKey(name: 'story')
  Map<String, Story>? get story {
    final value = _story;
    if (value == null) return null;
    if (_story is EqualUnmodifiableMapView) return _story;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FeedData(feedPost: $feedPost, story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDataImpl &&
            const DeepCollectionEquality().equals(other._feedPost, _feedPost) &&
            const DeepCollectionEquality().equals(other._story, _story));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_feedPost),
      const DeepCollectionEquality().hash(_story));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDataImplCopyWith<_$FeedDataImpl> get copyWith =>
      __$$FeedDataImplCopyWithImpl<_$FeedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedDataImplToJson(
      this,
    );
  }
}

abstract class _FeedData implements FeedData {
  const factory _FeedData(
          {@JsonKey(name: 'feed_post') final List<FeedPost>? feedPost,
          @JsonKey(name: 'story') final Map<String, Story>? story}) =
      _$FeedDataImpl;

  factory _FeedData.fromJson(Map<String, dynamic> json) =
      _$FeedDataImpl.fromJson;

  @override
  @JsonKey(name: 'feed_post')
  List<FeedPost>? get feedPost;
  @override
  @JsonKey(name: 'story')
  Map<String, Story>? get story;
  @override
  @JsonKey(ignore: true)
  _$$FeedDataImplCopyWith<_$FeedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedPost _$FeedPostFromJson(Map<String, dynamic> json) {
  return _FeedPost.fromJson(json);
}

/// @nodoc
mixin _$FeedPost {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: 'like')
  dynamic get like => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved')
  String? get approved => throw _privateConstructorUsedError;
  @JsonKey(name: 'offers')
  dynamic get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption_title')
  String? get captionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  dynamic get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'wow')
  dynamic get wow => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  String? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_detail')
  FeedDetail? get feedDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'interested')
  Interested? get interested => throw _privateConstructorUsedError;
  @JsonKey(name: 'userdetail')
  UserDetail? get userDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedPostCopyWith<FeedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostCopyWith<$Res> {
  factory $FeedPostCopyWith(FeedPost value, $Res Function(FeedPost) then) =
      _$FeedPostCopyWithImpl<$Res, FeedPost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'like') dynamic like,
      @JsonKey(name: 'approved') String? approved,
      @JsonKey(name: 'offers') dynamic offers,
      @JsonKey(name: 'caption_title') String? captionTitle,
      @JsonKey(name: 'products') dynamic products,
      @JsonKey(name: 'wow') dynamic wow,
      @JsonKey(name: 'views') String? views,
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
              as dynamic,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as dynamic,
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'like') dynamic like,
      @JsonKey(name: 'approved') String? approved,
      @JsonKey(name: 'offers') dynamic offers,
      @JsonKey(name: 'caption_title') String? captionTitle,
      @JsonKey(name: 'products') dynamic products,
      @JsonKey(name: 'wow') dynamic wow,
      @JsonKey(name: 'views') String? views,
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
              as dynamic,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as dynamic,
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'like') this.like,
      @JsonKey(name: 'approved') this.approved,
      @JsonKey(name: 'offers') this.offers,
      @JsonKey(name: 'caption_title') this.captionTitle,
      @JsonKey(name: 'products') this.products,
      @JsonKey(name: 'wow') this.wow,
      @JsonKey(name: 'views') this.views,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'feed_detail') this.feedDetail,
      @JsonKey(name: 'interested') this.interested,
      @JsonKey(name: 'userdetail') this.userDetail});

  factory _$FeedPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedPostImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'caption')
  final String? caption;
  @override
  @JsonKey(name: 'like')
  final dynamic like;
  @override
  @JsonKey(name: 'approved')
  final String? approved;
  @override
  @JsonKey(name: 'offers')
  final dynamic offers;
  @override
  @JsonKey(name: 'caption_title')
  final String? captionTitle;
  @override
  @JsonKey(name: 'products')
  final dynamic products;
  @override
  @JsonKey(name: 'wow')
  final dynamic wow;
  @override
  @JsonKey(name: 'views')
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
            const DeepCollectionEquality().equals(other.like, like) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            const DeepCollectionEquality().equals(other.offers, offers) &&
            (identical(other.captionTitle, captionTitle) ||
                other.captionTitle == captionTitle) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.wow, wow) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      image,
      caption,
      const DeepCollectionEquality().hash(like),
      approved,
      const DeepCollectionEquality().hash(offers),
      captionTitle,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(wow),
      views,
      createdAt,
      feedDetail,
      interested,
      userDetail);

  @JsonKey(ignore: true)
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
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'caption') final String? caption,
          @JsonKey(name: 'like') final dynamic like,
          @JsonKey(name: 'approved') final String? approved,
          @JsonKey(name: 'offers') final dynamic offers,
          @JsonKey(name: 'caption_title') final String? captionTitle,
          @JsonKey(name: 'products') final dynamic products,
          @JsonKey(name: 'wow') final dynamic wow,
          @JsonKey(name: 'views') final String? views,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'feed_detail') final FeedDetail? feedDetail,
          @JsonKey(name: 'interested') final Interested? interested,
          @JsonKey(name: 'userdetail') final UserDetail? userDetail}) =
      _$FeedPostImpl;

  factory _FeedPost.fromJson(Map<String, dynamic> json) =
      _$FeedPostImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'caption')
  String? get caption;
  @override
  @JsonKey(name: 'like')
  dynamic get like;
  @override
  @JsonKey(name: 'approved')
  String? get approved;
  @override
  @JsonKey(name: 'offers')
  dynamic get offers;
  @override
  @JsonKey(name: 'caption_title')
  String? get captionTitle;
  @override
  @JsonKey(name: 'products')
  dynamic get products;
  @override
  @JsonKey(name: 'wow')
  dynamic get wow;
  @override
  @JsonKey(name: 'views')
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
  @override
  @JsonKey(ignore: true)
  _$$FeedPostImplCopyWith<_$FeedPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedDetail _$FeedDetailFromJson(Map<String, dynamic> json) {
  return _FeedDetail.fromJson(json);
}

/// @nodoc
mixin _$FeedDetail {
  @JsonKey(name: 'cation_title')
  String? get captionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'cation')
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'cation_title') String? captionTitle,
      @JsonKey(name: 'cation') String? caption,
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
      {@JsonKey(name: 'cation_title') String? captionTitle,
      @JsonKey(name: 'cation') String? caption,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$FeedDetailImplCopyWithImpl<$Res>
    extends _$FeedDetailCopyWithImpl<$Res, _$FeedDetailImpl>
    implements _$$FeedDetailImplCopyWith<$Res> {
  __$$FeedDetailImplCopyWithImpl(
      _$FeedDetailImpl _value, $Res Function(_$FeedDetailImpl) _then)
      : super(_value, _then);

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
      {@JsonKey(name: 'cation_title') this.captionTitle,
      @JsonKey(name: 'cation') this.caption,
      @JsonKey(name: 'image') this.image});

  factory _$FeedDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedDetailImplFromJson(json);

  @override
  @JsonKey(name: 'cation_title')
  final String? captionTitle;
  @override
  @JsonKey(name: 'cation')
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, captionTitle, caption, image);

  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'cation_title') final String? captionTitle,
      @JsonKey(name: 'cation') final String? caption,
      @JsonKey(name: 'image') final String? image}) = _$FeedDetailImpl;

  factory _FeedDetail.fromJson(Map<String, dynamic> json) =
      _$FeedDetailImpl.fromJson;

  @override
  @JsonKey(name: 'cation_title')
  String? get captionTitle;
  @override
  @JsonKey(name: 'cation')
  String? get caption;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$FeedDetailImplCopyWith<_$FeedDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Interested _$InterestedFromJson(Map<String, dynamic> json) {
  return _Interested.fromJson(json);
}

/// @nodoc
mixin _$Interested {
  @JsonKey(name: 'interested')
  dynamic get interested => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement')
  int? get engagement => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  String? get views => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'interested') dynamic interested,
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
              as dynamic,
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
      {@JsonKey(name: 'interested') dynamic interested,
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
              as dynamic,
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
  final dynamic interested;
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
            const DeepCollectionEquality()
                .equals(other.interested, interested) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.views, views) || other.views == views));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(interested), engagement, views);

  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'interested') final dynamic interested,
      @JsonKey(name: 'engagement') final int? engagement,
      @JsonKey(name: 'views') final String? views}) = _$InterestedImpl;

  factory _Interested.fromJson(Map<String, dynamic> json) =
      _$InterestedImpl.fromJson;

  @override
  @JsonKey(name: 'interested')
  dynamic get interested;
  @override
  @JsonKey(name: 'engagement')
  int? get engagement;
  @override
  @JsonKey(name: 'views')
  String? get views;
  @override
  @JsonKey(ignore: true)
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
  @JsonKey(name: 'distance')
  List<dynamic>? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_id')
  String? get membershipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_title')
  String? get membershipTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_color')
  String? get membershipColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(name: 'distance') List<dynamic>? distance,
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
              as List<dynamic>?,
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
      @JsonKey(name: 'distance') List<dynamic>? distance,
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
          ? _value._distance
          : distance // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      @JsonKey(name: 'distance') final List<dynamic>? distance,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'membership_id') this.membershipId,
      @JsonKey(name: 'membership_title') this.membershipTitle,
      @JsonKey(name: 'membership_color') this.membershipColor})
      : _distance = distance;

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
  final List<dynamic>? _distance;
  @override
  @JsonKey(name: 'distance')
  List<dynamic>? get distance {
    final value = _distance;
    if (value == null) return null;
    if (_distance is EqualUnmodifiableListView) return _distance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
            const DeepCollectionEquality().equals(other._distance, _distance) &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage) &&
            (identical(other.membershipId, membershipId) ||
                other.membershipId == membershipId) &&
            (identical(other.membershipTitle, membershipTitle) ||
                other.membershipTitle == membershipTitle) &&
            (identical(other.membershipColor, membershipColor) ||
                other.membershipColor == membershipColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorName,
      subscribers,
      productCount,
      hasSponsoredGifts,
      storyCount,
      livePrize,
      const DeepCollectionEquality().hash(_distance),
      vendorImage,
      membershipId,
      membershipTitle,
      membershipColor);

  @JsonKey(ignore: true)
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
          @JsonKey(name: 'distance') final List<dynamic>? distance,
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
  @JsonKey(name: 'distance')
  List<dynamic>? get distance;
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
  @override
  @JsonKey(ignore: true)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_count')
  int? get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  @JsonKey(name: 'posts')
  List<StoryPost>? get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res, Story>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'story_count') int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'posts') List<StoryPost>? posts});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res, $Val extends Story>
    implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? storyCount = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
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
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<StoryPost>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryImplCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$StoryImplCopyWith(
          _$StoryImpl value, $Res Function(_$StoryImpl) then) =
      __$$StoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'story_count') int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'posts') List<StoryPost>? posts});
}

/// @nodoc
class __$$StoryImplCopyWithImpl<$Res>
    extends _$StoryCopyWithImpl<$Res, _$StoryImpl>
    implements _$$StoryImplCopyWith<$Res> {
  __$$StoryImplCopyWithImpl(
      _$StoryImpl _value, $Res Function(_$StoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? storyCount = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? posts = freezed,
  }) {
    return _then(_$StoryImpl(
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
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<StoryPost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryImpl implements _Story {
  const _$StoryImpl(
      {@JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'story_count') this.storyCount,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      @JsonKey(name: 'posts') final List<StoryPost>? posts})
      : _posts = posts;

  factory _$StoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryImplFromJson(json);

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
  final List<StoryPost>? _posts;
  @override
  @JsonKey(name: 'posts')
  List<StoryPost>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Story(vendorName: $vendorName, vendorImage: $vendorImage, storyCount: $storyCount, hasSponsoredGifts: $hasSponsoredGifts, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryImpl &&
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
      vendorName,
      vendorImage,
      storyCount,
      hasSponsoredGifts,
      const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      __$$StoryImplCopyWithImpl<_$StoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryImplToJson(
      this,
    );
  }
}

abstract class _Story implements Story {
  const factory _Story(
      {@JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_image') final String? vendorImage,
      @JsonKey(name: 'story_count') final int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
      @JsonKey(name: 'posts') final List<StoryPost>? posts}) = _$StoryImpl;

  factory _Story.fromJson(Map<String, dynamic> json) = _$StoryImpl.fromJson;

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
  @JsonKey(name: 'posts')
  List<StoryPost>? get posts;
  @override
  @JsonKey(ignore: true)
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoryPost _$StoryPostFromJson(Map<String, dynamic> json) {
  return _StoryPost.fromJson(json);
}

/// @nodoc
mixin _$StoryPost {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  String? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  int? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  dynamic get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'wow')
  dynamic get wow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryPostCopyWith<StoryPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryPostCopyWith<$Res> {
  factory $StoryPostCopyWith(StoryPost value, $Res Function(StoryPost) then) =
      _$StoryPostCopyWithImpl<$Res, StoryPost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') int? averageRating,
      @JsonKey(name: 'discount_percentage') dynamic discountPercentage,
      @JsonKey(name: 'wow') dynamic wow});
}

/// @nodoc
class _$StoryPostCopyWithImpl<$Res, $Val extends StoryPost>
    implements $StoryPostCopyWith<$Res> {
  _$StoryPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryPostImplCopyWith<$Res>
    implements $StoryPostCopyWith<$Res> {
  factory _$$StoryPostImplCopyWith(
          _$StoryPostImpl value, $Res Function(_$StoryPostImpl) then) =
      __$$StoryPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') int? averageRating,
      @JsonKey(name: 'discount_percentage') dynamic discountPercentage,
      @JsonKey(name: 'wow') dynamic wow});
}

/// @nodoc
class __$$StoryPostImplCopyWithImpl<$Res>
    extends _$StoryPostCopyWithImpl<$Res, _$StoryPostImpl>
    implements _$$StoryPostImplCopyWith<$Res> {
  __$$StoryPostImplCopyWithImpl(
      _$StoryPostImpl _value, $Res Function(_$StoryPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? similarProductCount = freezed,
    Object? commentCount = freezed,
    Object? averageRating = freezed,
    Object? discountPercentage = freezed,
    Object? wow = freezed,
  }) {
    return _then(_$StoryPostImpl(
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
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryPostImpl implements _StoryPost {
  const _$StoryPostImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'similarproductcount') this.similarProductCount,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'average_rating') this.averageRating,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      @JsonKey(name: 'wow') this.wow});

  factory _$StoryPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryPostImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'similarproductcount')
  final int? similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  final String? commentCount;
  @override
  @JsonKey(name: 'average_rating')
  final int? averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  final dynamic discountPercentage;
  @override
  @JsonKey(name: 'wow')
  final dynamic wow;

  @override
  String toString() {
    return 'StoryPost(id: $id, title: $title, image: $image, similarProductCount: $similarProductCount, commentCount: $commentCount, averageRating: $averageRating, discountPercentage: $discountPercentage, wow: $wow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.similarProductCount, similarProductCount) ||
                other.similarProductCount == similarProductCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality()
                .equals(other.discountPercentage, discountPercentage) &&
            const DeepCollectionEquality().equals(other.wow, wow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      image,
      similarProductCount,
      commentCount,
      averageRating,
      const DeepCollectionEquality().hash(discountPercentage),
      const DeepCollectionEquality().hash(wow));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryPostImplCopyWith<_$StoryPostImpl> get copyWith =>
      __$$StoryPostImplCopyWithImpl<_$StoryPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryPostImplToJson(
      this,
    );
  }
}

abstract class _StoryPost implements StoryPost {
  const factory _StoryPost(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'similarproductcount') final int? similarProductCount,
      @JsonKey(name: 'comment_count') final String? commentCount,
      @JsonKey(name: 'average_rating') final int? averageRating,
      @JsonKey(name: 'discount_percentage') final dynamic discountPercentage,
      @JsonKey(name: 'wow') final dynamic wow}) = _$StoryPostImpl;

  factory _StoryPost.fromJson(Map<String, dynamic> json) =
      _$StoryPostImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  String? get commentCount;
  @override
  @JsonKey(name: 'average_rating')
  int? get averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  dynamic get discountPercentage;
  @override
  @JsonKey(name: 'wow')
  dynamic get wow;
  @override
  @JsonKey(ignore: true)
  _$$StoryPostImplCopyWith<_$StoryPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
