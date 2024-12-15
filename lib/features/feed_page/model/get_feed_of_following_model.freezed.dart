// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feed_of_following_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFeedOfFollowingModel _$GetFeedOfFollowingModelFromJson(
    Map<String, dynamic> json) {
  return _GetFeedOfFollowingModel.fromJson(json);
}

/// @nodoc
mixin _$GetFeedOfFollowingModel {
  @JsonKey(name: 'data')
  DataModel? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFeedOfFollowingModelCopyWith<GetFeedOfFollowingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedOfFollowingModelCopyWith<$Res> {
  factory $GetFeedOfFollowingModelCopyWith(GetFeedOfFollowingModel value,
          $Res Function(GetFeedOfFollowingModel) then) =
      _$GetFeedOfFollowingModelCopyWithImpl<$Res, GetFeedOfFollowingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') DataModel? data,
      @JsonKey(name: 'msg') String? msg});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetFeedOfFollowingModelCopyWithImpl<$Res,
        $Val extends GetFeedOfFollowingModel>
    implements $GetFeedOfFollowingModelCopyWith<$Res> {
  _$GetFeedOfFollowingModelCopyWithImpl(this._value, this._then);

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
              as DataModel?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFeedOfFollowingModelImplCopyWith<$Res>
    implements $GetFeedOfFollowingModelCopyWith<$Res> {
  factory _$$GetFeedOfFollowingModelImplCopyWith(
          _$GetFeedOfFollowingModelImpl value,
          $Res Function(_$GetFeedOfFollowingModelImpl) then) =
      __$$GetFeedOfFollowingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') DataModel? data,
      @JsonKey(name: 'msg') String? msg});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetFeedOfFollowingModelImplCopyWithImpl<$Res>
    extends _$GetFeedOfFollowingModelCopyWithImpl<$Res,
        _$GetFeedOfFollowingModelImpl>
    implements _$$GetFeedOfFollowingModelImplCopyWith<$Res> {
  __$$GetFeedOfFollowingModelImplCopyWithImpl(
      _$GetFeedOfFollowingModelImpl _value,
      $Res Function(_$GetFeedOfFollowingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$GetFeedOfFollowingModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFeedOfFollowingModelImpl implements _GetFeedOfFollowingModel {
  _$GetFeedOfFollowingModelImpl(
      {@JsonKey(name: 'data') this.data, @JsonKey(name: 'msg') this.msg});

  factory _$GetFeedOfFollowingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFeedOfFollowingModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final DataModel? data;
  @override
  @JsonKey(name: 'msg')
  final String? msg;

  @override
  String toString() {
    return 'GetFeedOfFollowingModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedOfFollowingModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedOfFollowingModelImplCopyWith<_$GetFeedOfFollowingModelImpl>
      get copyWith => __$$GetFeedOfFollowingModelImplCopyWithImpl<
          _$GetFeedOfFollowingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFeedOfFollowingModelImplToJson(
      this,
    );
  }
}

abstract class _GetFeedOfFollowingModel implements GetFeedOfFollowingModel {
  factory _GetFeedOfFollowingModel(
      {@JsonKey(name: 'data') final DataModel? data,
      @JsonKey(name: 'msg') final String? msg}) = _$GetFeedOfFollowingModelImpl;

  factory _GetFeedOfFollowingModel.fromJson(Map<String, dynamic> json) =
      _$GetFeedOfFollowingModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  DataModel? get data;
  @override
  @JsonKey(name: 'msg')
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$GetFeedOfFollowingModelImplCopyWith<_$GetFeedOfFollowingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: '0')
  List<FeedItem>? get feedItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'story')
  Map<String, Story>? get story => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '0') List<FeedItem>? feedItems,
      @JsonKey(name: 'story') Map<String, Story>? story});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedItems = freezed,
    Object? story = freezed,
  }) {
    return _then(_value.copyWith(
      feedItems: freezed == feedItems
          ? _value.feedItems
          : feedItems // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Map<String, Story>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '0') List<FeedItem>? feedItems,
      @JsonKey(name: 'story') Map<String, Story>? story});
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedItems = freezed,
    Object? story = freezed,
  }) {
    return _then(_$DataModelImpl(
      feedItems: freezed == feedItems
          ? _value._feedItems
          : feedItems // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>?,
      story: freezed == story
          ? _value._story
          : story // ignore: cast_nullable_to_non_nullable
              as Map<String, Story>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  _$DataModelImpl(
      {@JsonKey(name: '0') final List<FeedItem>? feedItems,
      @JsonKey(name: 'story') final Map<String, Story>? story})
      : _feedItems = feedItems,
        _story = story;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  final List<FeedItem>? _feedItems;
  @override
  @JsonKey(name: '0')
  List<FeedItem>? get feedItems {
    final value = _feedItems;
    if (value == null) return null;
    if (_feedItems is EqualUnmodifiableListView) return _feedItems;
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
    return 'DataModel(feedItems: $feedItems, story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._feedItems, _feedItems) &&
            const DeepCollectionEquality().equals(other._story, _story));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_feedItems),
      const DeepCollectionEquality().hash(_story));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  factory _DataModel(
          {@JsonKey(name: '0') final List<FeedItem>? feedItems,
          @JsonKey(name: 'story') final Map<String, Story>? story}) =
      _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: '0')
  List<FeedItem>? get feedItems;
  @override
  @JsonKey(name: 'story')
  Map<String, Story>? get story;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedItem _$FeedItemFromJson(Map<String, dynamic> json) {
  return _FeedItem.fromJson(json);
}

/// @nodoc
mixin _$FeedItem {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption_title')
  String? get captionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  String? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'wow')
  dynamic get wow => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'offers')
  Offers? get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  String? get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_detail')
  FeedDetail? get feedDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'interested')
  Interested? get interested => throw _privateConstructorUsedError;
  @JsonKey(name: 'userdetail')
  UserDetail? get userDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedItemCopyWith<FeedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedItemCopyWith<$Res> {
  factory $FeedItemCopyWith(FeedItem value, $Res Function(FeedItem) then) =
      _$FeedItemCopyWithImpl<$Res, FeedItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'caption_title') String? captionTitle,
      @JsonKey(name: 'views') String? views,
      @JsonKey(name: 'wow') dynamic wow,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'offers') Offers? offers,
      @JsonKey(name: 'products') String? products,
      @JsonKey(name: 'feed_detail') FeedDetail? feedDetail,
      @JsonKey(name: 'interested') Interested? interested,
      @JsonKey(name: 'userdetail') UserDetail? userDetail});

  $OffersCopyWith<$Res>? get offers;
  $FeedDetailCopyWith<$Res>? get feedDetail;
  $InterestedCopyWith<$Res>? get interested;
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class _$FeedItemCopyWithImpl<$Res, $Val extends FeedItem>
    implements $FeedItemCopyWith<$Res> {
  _$FeedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? caption = freezed,
    Object? captionTitle = freezed,
    Object? views = freezed,
    Object? wow = freezed,
    Object? userId = freezed,
    Object? offers = freezed,
    Object? products = freezed,
    Object? feedDetail = freezed,
    Object? interested = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as Offers?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
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
  $OffersCopyWith<$Res>? get offers {
    if (_value.offers == null) {
      return null;
    }

    return $OffersCopyWith<$Res>(_value.offers!, (value) {
      return _then(_value.copyWith(offers: value) as $Val);
    });
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
abstract class _$$FeedItemImplCopyWith<$Res>
    implements $FeedItemCopyWith<$Res> {
  factory _$$FeedItemImplCopyWith(
          _$FeedItemImpl value, $Res Function(_$FeedItemImpl) then) =
      __$$FeedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'caption_title') String? captionTitle,
      @JsonKey(name: 'views') String? views,
      @JsonKey(name: 'wow') dynamic wow,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'offers') Offers? offers,
      @JsonKey(name: 'products') String? products,
      @JsonKey(name: 'feed_detail') FeedDetail? feedDetail,
      @JsonKey(name: 'interested') Interested? interested,
      @JsonKey(name: 'userdetail') UserDetail? userDetail});

  @override
  $OffersCopyWith<$Res>? get offers;
  @override
  $FeedDetailCopyWith<$Res>? get feedDetail;
  @override
  $InterestedCopyWith<$Res>? get interested;
  @override
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class __$$FeedItemImplCopyWithImpl<$Res>
    extends _$FeedItemCopyWithImpl<$Res, _$FeedItemImpl>
    implements _$$FeedItemImplCopyWith<$Res> {
  __$$FeedItemImplCopyWithImpl(
      _$FeedItemImpl _value, $Res Function(_$FeedItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? caption = freezed,
    Object? captionTitle = freezed,
    Object? views = freezed,
    Object? wow = freezed,
    Object? userId = freezed,
    Object? offers = freezed,
    Object? products = freezed,
    Object? feedDetail = freezed,
    Object? interested = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_$FeedItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      captionTitle: freezed == captionTitle
          ? _value.captionTitle
          : captionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as Offers?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
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
class _$FeedItemImpl implements _FeedItem {
  _$FeedItemImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'caption_title') this.captionTitle,
      @JsonKey(name: 'views') this.views,
      @JsonKey(name: 'wow') this.wow,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'offers') this.offers,
      @JsonKey(name: 'products') this.products,
      @JsonKey(name: 'feed_detail') this.feedDetail,
      @JsonKey(name: 'interested') this.interested,
      @JsonKey(name: 'userdetail') this.userDetail});

  factory _$FeedItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'caption')
  final String? caption;
  @override
  @JsonKey(name: 'caption_title')
  final String? captionTitle;
  @override
  @JsonKey(name: 'views')
  final String? views;
  @override
  @JsonKey(name: 'wow')
  final dynamic wow;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'offers')
  final Offers? offers;
  @override
  @JsonKey(name: 'products')
  final String? products;
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
    return 'FeedItem(id: $id, image: $image, caption: $caption, captionTitle: $captionTitle, views: $views, wow: $wow, userId: $userId, offers: $offers, products: $products, feedDetail: $feedDetail, interested: $interested, userDetail: $userDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.captionTitle, captionTitle) ||
                other.captionTitle == captionTitle) &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality().equals(other.wow, wow) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.products, products) ||
                other.products == products) &&
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
      image,
      caption,
      captionTitle,
      views,
      const DeepCollectionEquality().hash(wow),
      userId,
      offers,
      products,
      feedDetail,
      interested,
      userDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedItemImplCopyWith<_$FeedItemImpl> get copyWith =>
      __$$FeedItemImplCopyWithImpl<_$FeedItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedItemImplToJson(
      this,
    );
  }
}

abstract class _FeedItem implements FeedItem {
  factory _FeedItem(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'caption') final String? caption,
          @JsonKey(name: 'caption_title') final String? captionTitle,
          @JsonKey(name: 'views') final String? views,
          @JsonKey(name: 'wow') final dynamic wow,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'offers') final Offers? offers,
          @JsonKey(name: 'products') final String? products,
          @JsonKey(name: 'feed_detail') final FeedDetail? feedDetail,
          @JsonKey(name: 'interested') final Interested? interested,
          @JsonKey(name: 'userdetail') final UserDetail? userDetail}) =
      _$FeedItemImpl;

  factory _FeedItem.fromJson(Map<String, dynamic> json) =
      _$FeedItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'caption')
  String? get caption;
  @override
  @JsonKey(name: 'caption_title')
  String? get captionTitle;
  @override
  @JsonKey(name: 'views')
  String? get views;
  @override
  @JsonKey(name: 'wow')
  dynamic get wow;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'offers')
  Offers? get offers;
  @override
  @JsonKey(name: 'products')
  String? get products;
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
  _$$FeedItemImplCopyWith<_$FeedItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Offers _$OffersFromJson(Map<String, dynamic> json) {
  return _Offers.fromJson(json);
}

/// @nodoc
mixin _$Offers {
  @JsonKey(name: 'offers')
  String? get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffersCopyWith<Offers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersCopyWith<$Res> {
  factory $OffersCopyWith(Offers value, $Res Function(Offers) then) =
      _$OffersCopyWithImpl<$Res, Offers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'offers') String? offers,
      @JsonKey(name: 'products') List<Product>? products});
}

/// @nodoc
class _$OffersCopyWithImpl<$Res, $Val extends Offers>
    implements $OffersCopyWith<$Res> {
  _$OffersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersImplCopyWith<$Res> implements $OffersCopyWith<$Res> {
  factory _$$OffersImplCopyWith(
          _$OffersImpl value, $Res Function(_$OffersImpl) then) =
      __$$OffersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'offers') String? offers,
      @JsonKey(name: 'products') List<Product>? products});
}

/// @nodoc
class __$$OffersImplCopyWithImpl<$Res>
    extends _$OffersCopyWithImpl<$Res, _$OffersImpl>
    implements _$$OffersImplCopyWith<$Res> {
  __$$OffersImplCopyWithImpl(
      _$OffersImpl _value, $Res Function(_$OffersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = freezed,
    Object? products = freezed,
  }) {
    return _then(_$OffersImpl(
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersImpl implements _Offers {
  _$OffersImpl(
      {@JsonKey(name: 'offers') this.offers,
      @JsonKey(name: 'products') final List<Product>? products})
      : _products = products;

  factory _$OffersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersImplFromJson(json);

  @override
  @JsonKey(name: 'offers')
  final String? offers;
  final List<Product>? _products;
  @override
  @JsonKey(name: 'products')
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Offers(offers: $offers, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersImpl &&
            (identical(other.offers, offers) || other.offers == offers) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, offers, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersImplCopyWith<_$OffersImpl> get copyWith =>
      __$$OffersImplCopyWithImpl<_$OffersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersImplToJson(
      this,
    );
  }
}

abstract class _Offers implements Offers {
  factory _Offers(
      {@JsonKey(name: 'offers') final String? offers,
      @JsonKey(name: 'products') final List<Product>? products}) = _$OffersImpl;

  factory _Offers.fromJson(Map<String, dynamic> json) = _$OffersImpl.fromJson;

  @override
  @JsonKey(name: 'offers')
  String? get offers;
  @override
  @JsonKey(name: 'products')
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$OffersImplCopyWith<_$OffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

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
  _$ProductImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'image') this.image});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'image')
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, image);

  @JsonKey(ignore: true)
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
  factory _Product(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'price') final String? price,
      @JsonKey(name: 'image') final String? image}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
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
  _$FeedDetailImpl(
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
  factory _FeedDetail(
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
  _$InterestedImpl(
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
  factory _Interested(
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
  dynamic get distance => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'distance') dynamic distance,
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
              as dynamic,
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
      @JsonKey(name: 'distance') dynamic distance,
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
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  _$UserDetailImpl(
      {@JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'subscribers') this.subscribers,
      @JsonKey(name: 'productCount') this.productCount,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      @JsonKey(name: 'storyCount') this.storyCount,
      @JsonKey(name: 'live_prize') this.livePrize,
      @JsonKey(name: 'distance') this.distance,
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
  @JsonKey(name: 'distance')
  final dynamic distance;
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
            const DeepCollectionEquality().equals(other.distance, distance) &&
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
      const DeepCollectionEquality().hash(distance),
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
  factory _UserDetail(
          {@JsonKey(name: 'vendor_name') final String? vendorName,
          @JsonKey(name: 'subscribers') final int? subscribers,
          @JsonKey(name: 'productCount') final int? productCount,
          @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
          @JsonKey(name: 'storyCount') final int? storyCount,
          @JsonKey(name: 'live_prize') final int? livePrize,
          @JsonKey(name: 'distance') final dynamic distance,
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
  dynamic get distance;
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
  List<Post>? get posts => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'posts') List<Post>? posts});
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
              as List<Post>?,
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
      @JsonKey(name: 'posts') List<Post>? posts});
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
              as List<Post>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryImpl implements _Story {
  _$StoryImpl(
      {@JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'story_count') this.storyCount,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      @JsonKey(name: 'posts') final List<Post>? posts})
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
  factory _Story(
      {@JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_image') final String? vendorImage,
      @JsonKey(name: 'story_count') final int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
      @JsonKey(name: 'posts') final List<Post>? posts}) = _$StoryImpl;

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
  List<Post>? get posts;
  @override
  @JsonKey(ignore: true)
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
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
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  dynamic get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'wow')
  dynamic get wow => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      @JsonKey(name: 'discount_percentage') dynamic discountPercentage,
      @JsonKey(name: 'wow') dynamic wow});
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
              as double?,
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
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      @JsonKey(name: 'discount_percentage') dynamic discountPercentage,
      @JsonKey(name: 'wow') dynamic wow});
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
              as double?,
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
class _$PostImpl implements _Post {
  _$PostImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'similarproductcount') this.similarProductCount,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'average_rating') this.averageRating,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      @JsonKey(name: 'wow') this.wow});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

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
  final double? averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  final dynamic discountPercentage;
  @override
  @JsonKey(name: 'wow')
  final dynamic wow;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, image: $image, similarProductCount: $similarProductCount, commentCount: $commentCount, averageRating: $averageRating, discountPercentage: $discountPercentage, wow: $wow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
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
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'similarproductcount') final int? similarProductCount,
      @JsonKey(name: 'comment_count') final String? commentCount,
      @JsonKey(name: 'average_rating') final double? averageRating,
      @JsonKey(name: 'discount_percentage') final dynamic discountPercentage,
      @JsonKey(name: 'wow') final dynamic wow}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

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
  double? get averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  dynamic get discountPercentage;
  @override
  @JsonKey(name: 'wow')
  dynamic get wow;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
