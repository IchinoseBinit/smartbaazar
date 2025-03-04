// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PostResult? get result => throw _privateConstructorUsedError;
  ExtraModel? get extra => throw _privateConstructorUsedError;
  WidgetSimilarPosts? get widgetSimilarPosts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      PostResult? result,
      ExtraModel? extra,
      WidgetSimilarPosts? widgetSimilarPosts});

  $PostResultCopyWith<$Res>? get result;
  $ExtraModelCopyWith<$Res>? get extra;
  $WidgetSimilarPostsCopyWith<$Res>? get widgetSimilarPosts;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
    Object? extra = freezed,
    Object? widgetSimilarPosts = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PostResult?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraModel?,
      widgetSimilarPosts: freezed == widgetSimilarPosts
          ? _value.widgetSimilarPosts
          : widgetSimilarPosts // ignore: cast_nullable_to_non_nullable
              as WidgetSimilarPosts?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $PostResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtraModelCopyWith<$Res>? get extra {
    if (_value.extra == null) {
      return null;
    }

    return $ExtraModelCopyWith<$Res>(_value.extra!, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WidgetSimilarPostsCopyWith<$Res>? get widgetSimilarPosts {
    if (_value.widgetSimilarPosts == null) {
      return null;
    }

    return $WidgetSimilarPostsCopyWith<$Res>(_value.widgetSimilarPosts!,
        (value) {
      return _then(_value.copyWith(widgetSimilarPosts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      PostResult? result,
      ExtraModel? extra,
      WidgetSimilarPosts? widgetSimilarPosts});

  @override
  $PostResultCopyWith<$Res>? get result;
  @override
  $ExtraModelCopyWith<$Res>? get extra;
  @override
  $WidgetSimilarPostsCopyWith<$Res>? get widgetSimilarPosts;
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
    Object? extra = freezed,
    Object? widgetSimilarPosts = freezed,
  }) {
    return _then(_$PostModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PostResult?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraModel?,
      widgetSimilarPosts: freezed == widgetSimilarPosts
          ? _value.widgetSimilarPosts
          : widgetSimilarPosts // ignore: cast_nullable_to_non_nullable
              as WidgetSimilarPosts?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl implements _PostModel {
  const _$PostModelImpl(
      {required this.success,
      required this.message,
      required this.result,
      required this.extra,
      required this.widgetSimilarPosts});

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final PostResult? result;
  @override
  final ExtraModel? extra;
  @override
  final WidgetSimilarPosts? widgetSimilarPosts;

  @override
  String toString() {
    return 'PostModel(success: $success, message: $message, result: $result, extra: $extra, widgetSimilarPosts: $widgetSimilarPosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.widgetSimilarPosts, widgetSimilarPosts) ||
                other.widgetSimilarPosts == widgetSimilarPosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, result, extra, widgetSimilarPosts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {required final bool? success,
      required final String? message,
      required final PostResult? result,
      required final ExtraModel? extra,
      required final WidgetSimilarPosts? widgetSimilarPosts}) = _$PostModelImpl;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  PostResult? get result;
  @override
  ExtraModel? get extra;
  @override
  WidgetSimilarPosts? get widgetSimilarPosts;
  @override
  @JsonKey(ignore: true)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WidgetSimilarPosts _$WidgetSimilarPostsFromJson(Map<String, dynamic> json) {
  return _WidgetSimilarPosts.fromJson(json);
}

/// @nodoc
mixin _$WidgetSimilarPosts {
// required String title,
// required String link,
  PostPagination? get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WidgetSimilarPostsCopyWith<WidgetSimilarPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetSimilarPostsCopyWith<$Res> {
  factory $WidgetSimilarPostsCopyWith(
          WidgetSimilarPosts value, $Res Function(WidgetSimilarPosts) then) =
      _$WidgetSimilarPostsCopyWithImpl<$Res, WidgetSimilarPosts>;
  @useResult
  $Res call({PostPagination? posts});

  $PostPaginationCopyWith<$Res>? get posts;
}

/// @nodoc
class _$WidgetSimilarPostsCopyWithImpl<$Res, $Val extends WidgetSimilarPosts>
    implements $WidgetSimilarPostsCopyWith<$Res> {
  _$WidgetSimilarPostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostPagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostPaginationCopyWith<$Res>? get posts {
    if (_value.posts == null) {
      return null;
    }

    return $PostPaginationCopyWith<$Res>(_value.posts!, (value) {
      return _then(_value.copyWith(posts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WidgetSimilarPostsImplCopyWith<$Res>
    implements $WidgetSimilarPostsCopyWith<$Res> {
  factory _$$WidgetSimilarPostsImplCopyWith(_$WidgetSimilarPostsImpl value,
          $Res Function(_$WidgetSimilarPostsImpl) then) =
      __$$WidgetSimilarPostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostPagination? posts});

  @override
  $PostPaginationCopyWith<$Res>? get posts;
}

/// @nodoc
class __$$WidgetSimilarPostsImplCopyWithImpl<$Res>
    extends _$WidgetSimilarPostsCopyWithImpl<$Res, _$WidgetSimilarPostsImpl>
    implements _$$WidgetSimilarPostsImplCopyWith<$Res> {
  __$$WidgetSimilarPostsImplCopyWithImpl(_$WidgetSimilarPostsImpl _value,
      $Res Function(_$WidgetSimilarPostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$WidgetSimilarPostsImpl(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostPagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WidgetSimilarPostsImpl implements _WidgetSimilarPosts {
  const _$WidgetSimilarPostsImpl({required this.posts});

  factory _$WidgetSimilarPostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WidgetSimilarPostsImplFromJson(json);

// required String title,
// required String link,
  @override
  final PostPagination? posts;

  @override
  String toString() {
    return 'WidgetSimilarPosts(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetSimilarPostsImpl &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetSimilarPostsImplCopyWith<_$WidgetSimilarPostsImpl> get copyWith =>
      __$$WidgetSimilarPostsImplCopyWithImpl<_$WidgetSimilarPostsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WidgetSimilarPostsImplToJson(
      this,
    );
  }
}

abstract class _WidgetSimilarPosts implements WidgetSimilarPosts {
  const factory _WidgetSimilarPosts({required final PostPagination? posts}) =
      _$WidgetSimilarPostsImpl;

  factory _WidgetSimilarPosts.fromJson(Map<String, dynamic> json) =
      _$WidgetSimilarPostsImpl.fromJson;

  @override // required String title,
// required String link,
  PostPagination? get posts;
  @override
  @JsonKey(ignore: true)
  _$$WidgetSimilarPostsImplCopyWith<_$WidgetSimilarPostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostPagination _$PostPaginationFromJson(Map<String, dynamic> json) {
  return _PostPagination.fromJson(json);
}

/// @nodoc
mixin _$PostPagination {
  int get current_page => throw _privateConstructorUsedError;
  List<PostResult> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostPaginationCopyWith<PostPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPaginationCopyWith<$Res> {
  factory $PostPaginationCopyWith(
          PostPagination value, $Res Function(PostPagination) then) =
      _$PostPaginationCopyWithImpl<$Res, PostPagination>;
  @useResult
  $Res call({int current_page, List<PostResult> data});
}

/// @nodoc
class _$PostPaginationCopyWithImpl<$Res, $Val extends PostPagination>
    implements $PostPaginationCopyWith<$Res> {
  _$PostPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      current_page: null == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPaginationImplCopyWith<$Res>
    implements $PostPaginationCopyWith<$Res> {
  factory _$$PostPaginationImplCopyWith(_$PostPaginationImpl value,
          $Res Function(_$PostPaginationImpl) then) =
      __$$PostPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current_page, List<PostResult> data});
}

/// @nodoc
class __$$PostPaginationImplCopyWithImpl<$Res>
    extends _$PostPaginationCopyWithImpl<$Res, _$PostPaginationImpl>
    implements _$$PostPaginationImplCopyWith<$Res> {
  __$$PostPaginationImplCopyWithImpl(
      _$PostPaginationImpl _value, $Res Function(_$PostPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = null,
    Object? data = null,
  }) {
    return _then(_$PostPaginationImpl(
      current_page: null == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPaginationImpl implements _PostPagination {
  const _$PostPaginationImpl(
      {required this.current_page, required final List<PostResult> data})
      : _data = data;

  factory _$PostPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPaginationImplFromJson(json);

  @override
  final int current_page;
  final List<PostResult> _data;
  @override
  List<PostResult> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PostPagination(current_page: $current_page, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPaginationImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_page, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPaginationImplCopyWith<_$PostPaginationImpl> get copyWith =>
      __$$PostPaginationImplCopyWithImpl<_$PostPaginationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPaginationImplToJson(
      this,
    );
  }
}

abstract class _PostPagination implements PostPagination {
  const factory _PostPagination(
      {required final int current_page,
      required final List<PostResult> data}) = _$PostPaginationImpl;

  factory _PostPagination.fromJson(Map<String, dynamic> json) =
      _$PostPaginationImpl.fromJson;

  @override
  int get current_page;
  @override
  List<PostResult> get data;
  @override
  @JsonKey(ignore: true)
  _$$PostPaginationImplCopyWith<_$PostPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostResult _$PostResultFromJson(Map<String, dynamic> json) {
  return _PostResult.fromJson(json);
}

/// @nodoc
mixin _$PostResult {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type_id')
  String? get postTypeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounted_price')
  String? get discountedPrice => throw _privateConstructorUsedError;
  String? get trending => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_photo_url')
  String get userPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_order')
  String? get minOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'samp_price')
  String? get sampPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_one')
  String? get textOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_two')
  String? get textTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ava_to')
  String? get avaTo => throw _privateConstructorUsedError;
  int? get discount_percentage => throw _privateConstructorUsedError;
  String? get negotiable => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_name')
  String? get contactName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_hidden')
  String? get phoneHidden => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  String? get cityId => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_addr')
  String? get ipAddr => throw _privateConstructorUsedError;
  String? get length => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'hyper_del')
  String? get hyperDel => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_del')
  String? get sellerDel => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_permanent')
  String? get isPermanent => throw _privateConstructorUsedError;
  String? get reviewed => throw _privateConstructorUsedError;
  String? get featured => throw _privateConstructorUsedError;
  String? get archived => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'archived_at')
  String? get archivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletion_mail_sent_at')
  String? get deletionMailSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'fb_profile')
  String? get fbProfile => throw _privateConstructorUsedError;
  String? get partner => throw _privateConstructorUsedError;
  @JsonKey(name: 'b2b_pricing')
  String? get b2bPricing => throw _privateConstructorUsedError;
  String? get offers => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at_formatted')
  String? get createdAtFormatted => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  ExtraModel? get extra => throw _privateConstructorUsedError;
  Ratings? get ratings => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  usermodel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_user')
  SimilarProducts? get userDetails => throw _privateConstructorUsedError;
  List<Picture>? get pictures => throw _privateConstructorUsedError;
  List<SavedByUser>? get savedByLoggedUser =>
      throw _privateConstructorUsedError;
  PostType? get postType => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  MyProductDeailModel? get user_details => throw _privateConstructorUsedError;
  int? get similarProductCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_comment')
  List<RatingComment> get ratingComment => throw _privateConstructorUsedError;
  List<LivePrize> get live_prizes => throw _privateConstructorUsedError;
  List<Shop>? get deals => throw _privateConstructorUsedError;
  List<Shop>? get shop => throw _privateConstructorUsedError;
  List<FeedPost>? get feed_post => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostResultCopyWith<PostResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResultCopyWith<$Res> {
  factory $PostResultCopyWith(
          PostResult value, $Res Function(PostResult) then) =
      _$PostResultCopyWithImpl<$Res, PostResult>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'post_type_id') String? postTypeId,
      String? title,
      String? description,
      List<String>? tags,
      String? price,
      @JsonKey(name: 'discounted_price') String? discountedPrice,
      String? trending,
      String? stock,
      @JsonKey(name: 'user_photo_url') String userPhotoUrl,
      @JsonKey(name: 'min_order') String? minOrder,
      @JsonKey(name: 'samp_price') String? sampPrice,
      @JsonKey(name: 'text_one') String? textOne,
      @JsonKey(name: 'text_two') String? textTwo,
      @JsonKey(name: 'ava_to') String? avaTo,
      int? discount_percentage,
      String? negotiable,
      @JsonKey(name: 'contact_name') String? contactName,
      String? email,
      String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
      String? lat,
      String? lon,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      @JsonKey(name: 'hyper_del') String? hyperDel,
      @JsonKey(name: 'seller_del') String? sellerDel,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? image,
      @JsonKey(name: 'archived_at') String? archivedAt,
      @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') String? fbProfile,
      String? partner,
      @JsonKey(name: 'b2b_pricing') String? b2bPricing,
      String? offers,
      String? wow,
      String? sku,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? slug,
      @JsonKey(name: 'created_at_formatted') String? createdAtFormatted,
      int? commentCount,
      ExtraModel? extra,
      Ratings? ratings,
      LocationModel? location,
      usermodel? user,
      @JsonKey(name: 'detail_user') SimilarProducts? userDetails,
      List<Picture>? pictures,
      List<SavedByUser>? savedByLoggedUser,
      PostType? postType,
      City? city,
      MyProductDeailModel? user_details,
      int? similarProductCount,
      @JsonKey(name: 'rating_comment') List<RatingComment> ratingComment,
      List<LivePrize> live_prizes,
      List<Shop>? deals,
      List<Shop>? shop,
      List<FeedPost>? feed_post});

  $ExtraModelCopyWith<$Res>? get extra;
  $RatingsCopyWith<$Res>? get ratings;
  $LocationModelCopyWith<$Res>? get location;
  $usermodelCopyWith<$Res>? get user;
  $SimilarProductsCopyWith<$Res>? get userDetails;
  $PostTypeCopyWith<$Res>? get postType;
  $CityCopyWith<$Res>? get city;
  $MyProductDeailModelCopyWith<$Res>? get user_details;
}

/// @nodoc
class _$PostResultCopyWithImpl<$Res, $Val extends PostResult>
    implements $PostResultCopyWith<$Res> {
  _$PostResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? postTypeId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? discountedPrice = freezed,
    Object? trending = freezed,
    Object? stock = freezed,
    Object? userPhotoUrl = null,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
    Object? discount_percentage = freezed,
    Object? negotiable = freezed,
    Object? contactName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? ipAddr = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? pickup = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? hyperDel = freezed,
    Object? sellerDel = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? isPermanent = freezed,
    Object? reviewed = freezed,
    Object? featured = freezed,
    Object? archived = freezed,
    Object? image = freezed,
    Object? archivedAt = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? b2bPricing = freezed,
    Object? offers = freezed,
    Object? wow = freezed,
    Object? sku = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
    Object? createdAtFormatted = freezed,
    Object? commentCount = freezed,
    Object? extra = freezed,
    Object? ratings = freezed,
    Object? location = freezed,
    Object? user = freezed,
    Object? userDetails = freezed,
    Object? pictures = freezed,
    Object? savedByLoggedUser = freezed,
    Object? postType = freezed,
    Object? city = freezed,
    Object? user_details = freezed,
    Object? similarProductCount = freezed,
    Object? ratingComment = null,
    Object? live_prizes = null,
    Object? deals = freezed,
    Object? shop = freezed,
    Object? feed_post = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: null == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      minOrder: freezed == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      sampPrice: freezed == sampPrice
          ? _value.sampPrice
          : sampPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      textOne: freezed == textOne
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: freezed == textTwo
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      avaTo: freezed == avaTo
          ? _value.avaTo
          : avaTo // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_percentage: freezed == discount_percentage
          ? _value.discount_percentage
          : discount_percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      negotiable: freezed == negotiable
          ? _value.negotiable
          : negotiable // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperDel: freezed == hyperDel
          ? _value.hyperDel
          : hyperDel // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDel: freezed == sellerDel
          ? _value.sellerDel
          : sellerDel // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      isPermanent: freezed == isPermanent
          ? _value.isPermanent
          : isPermanent // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewed: freezed == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletionMailSentAt: freezed == deletionMailSentAt
          ? _value.deletionMailSentAt
          : deletionMailSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fbProfile: freezed == fbProfile
          ? _value.fbProfile
          : fbProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      b2bPricing: freezed == b2bPricing
          ? _value.b2bPricing
          : b2bPricing // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAtFormatted: freezed == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraModel?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as Ratings?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as usermodel?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as SimilarProducts?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value.savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<SavedByUser>?,
      postType: freezed == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      user_details: freezed == user_details
          ? _value.user_details
          : user_details // ignore: cast_nullable_to_non_nullable
              as MyProductDeailModel?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingComment: null == ratingComment
          ? _value.ratingComment
          : ratingComment // ignore: cast_nullable_to_non_nullable
              as List<RatingComment>,
      live_prizes: null == live_prizes
          ? _value.live_prizes
          : live_prizes // ignore: cast_nullable_to_non_nullable
              as List<LivePrize>,
      deals: freezed == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
      feed_post: freezed == feed_post
          ? _value.feed_post
          : feed_post // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtraModelCopyWith<$Res>? get extra {
    if (_value.extra == null) {
      return null;
    }

    return $ExtraModelCopyWith<$Res>(_value.extra!, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingsCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $RatingsCopyWith<$Res>(_value.ratings!, (value) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $usermodelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $usermodelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SimilarProductsCopyWith<$Res>? get userDetails {
    if (_value.userDetails == null) {
      return null;
    }

    return $SimilarProductsCopyWith<$Res>(_value.userDetails!, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostTypeCopyWith<$Res>? get postType {
    if (_value.postType == null) {
      return null;
    }

    return $PostTypeCopyWith<$Res>(_value.postType!, (value) {
      return _then(_value.copyWith(postType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MyProductDeailModelCopyWith<$Res>? get user_details {
    if (_value.user_details == null) {
      return null;
    }

    return $MyProductDeailModelCopyWith<$Res>(_value.user_details!, (value) {
      return _then(_value.copyWith(user_details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostResultImplCopyWith<$Res>
    implements $PostResultCopyWith<$Res> {
  factory _$$PostResultImplCopyWith(
          _$PostResultImpl value, $Res Function(_$PostResultImpl) then) =
      __$$PostResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'post_type_id') String? postTypeId,
      String? title,
      String? description,
      List<String>? tags,
      String? price,
      @JsonKey(name: 'discounted_price') String? discountedPrice,
      String? trending,
      String? stock,
      @JsonKey(name: 'user_photo_url') String userPhotoUrl,
      @JsonKey(name: 'min_order') String? minOrder,
      @JsonKey(name: 'samp_price') String? sampPrice,
      @JsonKey(name: 'text_one') String? textOne,
      @JsonKey(name: 'text_two') String? textTwo,
      @JsonKey(name: 'ava_to') String? avaTo,
      int? discount_percentage,
      String? negotiable,
      @JsonKey(name: 'contact_name') String? contactName,
      String? email,
      String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
      String? lat,
      String? lon,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      @JsonKey(name: 'hyper_del') String? hyperDel,
      @JsonKey(name: 'seller_del') String? sellerDel,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? image,
      @JsonKey(name: 'archived_at') String? archivedAt,
      @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') String? fbProfile,
      String? partner,
      @JsonKey(name: 'b2b_pricing') String? b2bPricing,
      String? offers,
      String? wow,
      String? sku,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? slug,
      @JsonKey(name: 'created_at_formatted') String? createdAtFormatted,
      int? commentCount,
      ExtraModel? extra,
      Ratings? ratings,
      LocationModel? location,
      usermodel? user,
      @JsonKey(name: 'detail_user') SimilarProducts? userDetails,
      List<Picture>? pictures,
      List<SavedByUser>? savedByLoggedUser,
      PostType? postType,
      City? city,
      MyProductDeailModel? user_details,
      int? similarProductCount,
      @JsonKey(name: 'rating_comment') List<RatingComment> ratingComment,
      List<LivePrize> live_prizes,
      List<Shop>? deals,
      List<Shop>? shop,
      List<FeedPost>? feed_post});

  @override
  $ExtraModelCopyWith<$Res>? get extra;
  @override
  $RatingsCopyWith<$Res>? get ratings;
  @override
  $LocationModelCopyWith<$Res>? get location;
  @override
  $usermodelCopyWith<$Res>? get user;
  @override
  $SimilarProductsCopyWith<$Res>? get userDetails;
  @override
  $PostTypeCopyWith<$Res>? get postType;
  @override
  $CityCopyWith<$Res>? get city;
  @override
  $MyProductDeailModelCopyWith<$Res>? get user_details;
}

/// @nodoc
class __$$PostResultImplCopyWithImpl<$Res>
    extends _$PostResultCopyWithImpl<$Res, _$PostResultImpl>
    implements _$$PostResultImplCopyWith<$Res> {
  __$$PostResultImplCopyWithImpl(
      _$PostResultImpl _value, $Res Function(_$PostResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? postTypeId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? discountedPrice = freezed,
    Object? trending = freezed,
    Object? stock = freezed,
    Object? userPhotoUrl = null,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
    Object? discount_percentage = freezed,
    Object? negotiable = freezed,
    Object? contactName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? ipAddr = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? pickup = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? hyperDel = freezed,
    Object? sellerDel = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? isPermanent = freezed,
    Object? reviewed = freezed,
    Object? featured = freezed,
    Object? archived = freezed,
    Object? image = freezed,
    Object? archivedAt = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? b2bPricing = freezed,
    Object? offers = freezed,
    Object? wow = freezed,
    Object? sku = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
    Object? createdAtFormatted = freezed,
    Object? commentCount = freezed,
    Object? extra = freezed,
    Object? ratings = freezed,
    Object? location = freezed,
    Object? user = freezed,
    Object? userDetails = freezed,
    Object? pictures = freezed,
    Object? savedByLoggedUser = freezed,
    Object? postType = freezed,
    Object? city = freezed,
    Object? user_details = freezed,
    Object? similarProductCount = freezed,
    Object? ratingComment = null,
    Object? live_prizes = null,
    Object? deals = freezed,
    Object? shop = freezed,
    Object? feed_post = freezed,
  }) {
    return _then(_$PostResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: null == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      minOrder: freezed == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      sampPrice: freezed == sampPrice
          ? _value.sampPrice
          : sampPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      textOne: freezed == textOne
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: freezed == textTwo
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      avaTo: freezed == avaTo
          ? _value.avaTo
          : avaTo // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_percentage: freezed == discount_percentage
          ? _value.discount_percentage
          : discount_percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      negotiable: freezed == negotiable
          ? _value.negotiable
          : negotiable // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperDel: freezed == hyperDel
          ? _value.hyperDel
          : hyperDel // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDel: freezed == sellerDel
          ? _value.sellerDel
          : sellerDel // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      isPermanent: freezed == isPermanent
          ? _value.isPermanent
          : isPermanent // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewed: freezed == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletionMailSentAt: freezed == deletionMailSentAt
          ? _value.deletionMailSentAt
          : deletionMailSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fbProfile: freezed == fbProfile
          ? _value.fbProfile
          : fbProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      b2bPricing: freezed == b2bPricing
          ? _value.b2bPricing
          : b2bPricing // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAtFormatted: freezed == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraModel?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as Ratings?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as usermodel?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as SimilarProducts?,
      pictures: freezed == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value._savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<SavedByUser>?,
      postType: freezed == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      user_details: freezed == user_details
          ? _value.user_details
          : user_details // ignore: cast_nullable_to_non_nullable
              as MyProductDeailModel?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingComment: null == ratingComment
          ? _value._ratingComment
          : ratingComment // ignore: cast_nullable_to_non_nullable
              as List<RatingComment>,
      live_prizes: null == live_prizes
          ? _value._live_prizes
          : live_prizes // ignore: cast_nullable_to_non_nullable
              as List<LivePrize>,
      deals: freezed == deals
          ? _value._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
      shop: freezed == shop
          ? _value._shop
          : shop // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
      feed_post: freezed == feed_post
          ? _value._feed_post
          : feed_post // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostResultImpl implements _PostResult {
  const _$PostResultImpl(
      {required this.id,
      @JsonKey(name: 'country_code') required this.countryCode,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'post_type_id') required this.postTypeId,
      required this.title,
      required this.description,
      required final List<String>? tags,
      required this.price,
      @JsonKey(name: 'discounted_price') this.discountedPrice,
      required this.trending,
      required this.stock,
      @JsonKey(name: 'user_photo_url') required this.userPhotoUrl,
      @JsonKey(name: 'min_order') this.minOrder,
      @JsonKey(name: 'samp_price') this.sampPrice,
      @JsonKey(name: 'text_one') this.textOne,
      @JsonKey(name: 'text_two') this.textTwo,
      @JsonKey(name: 'ava_to') this.avaTo,
      required this.discount_percentage,
      this.negotiable,
      @JsonKey(name: 'contact_name') required this.contactName,
      required this.email,
      required this.phone,
      @JsonKey(name: 'phone_hidden') this.phoneHidden,
      this.address,
      @JsonKey(name: 'city_id') required this.cityId,
      required this.lat,
      required this.lon,
      @JsonKey(name: 'ip_addr') required this.ipAddr,
      required this.length,
      required this.width,
      required this.weight,
      required this.height,
      required this.pickup,
      required this.longitude,
      required this.latitude,
      @JsonKey(name: 'hyper_del') required this.hyperDel,
      @JsonKey(name: 'seller_del') this.sellerDel,
      @JsonKey(name: 'accept_terms') required this.acceptTerms,
      @JsonKey(name: 'accept_marketing_offers')
      required this.acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') required this.isPermanent,
      required this.reviewed,
      required this.featured,
      required this.archived,
      required this.image,
      @JsonKey(name: 'archived_at') required this.archivedAt,
      @JsonKey(name: 'deletion_mail_sent_at') this.deletionMailSentAt,
      @JsonKey(name: 'fb_profile') this.fbProfile,
      this.partner,
      @JsonKey(name: 'b2b_pricing') this.b2bPricing,
      this.offers,
      this.wow,
      this.sku,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.slug,
      @JsonKey(name: 'created_at_formatted') required this.createdAtFormatted,
      required this.commentCount,
      required this.extra,
      this.ratings,
      this.location,
      this.user,
      @JsonKey(name: 'detail_user') required this.userDetails,
      required final List<Picture>? pictures,
      final List<SavedByUser>? savedByLoggedUser,
      this.postType,
      this.city,
      required this.user_details,
      this.similarProductCount,
      @JsonKey(name: 'rating_comment')
      required final List<RatingComment> ratingComment,
      final List<LivePrize> live_prizes = const [],
      final List<Shop>? deals = const [],
      final List<Shop>? shop = const [],
      final List<FeedPost>? feed_post = const []})
      : _tags = tags,
        _pictures = pictures,
        _savedByLoggedUser = savedByLoggedUser,
        _ratingComment = ratingComment,
        _live_prizes = live_prizes,
        _deals = deals,
        _shop = shop,
        _feed_post = feed_post;

  factory _$PostResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostResultImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'post_type_id')
  final String? postTypeId;
  @override
  final String? title;
  @override
  final String? description;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? price;
  @override
  @JsonKey(name: 'discounted_price')
  final String? discountedPrice;
  @override
  final String? trending;
  @override
  final String? stock;
  @override
  @JsonKey(name: 'user_photo_url')
  final String userPhotoUrl;
  @override
  @JsonKey(name: 'min_order')
  final String? minOrder;
  @override
  @JsonKey(name: 'samp_price')
  final String? sampPrice;
  @override
  @JsonKey(name: 'text_one')
  final String? textOne;
  @override
  @JsonKey(name: 'text_two')
  final String? textTwo;
  @override
  @JsonKey(name: 'ava_to')
  final String? avaTo;
  @override
  final int? discount_percentage;
  @override
  final String? negotiable;
  @override
  @JsonKey(name: 'contact_name')
  final String? contactName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'phone_hidden')
  final String? phoneHidden;
  @override
  final String? address;
  @override
  @JsonKey(name: 'city_id')
  final String? cityId;
  @override
  final String? lat;
  @override
  final String? lon;
  @override
  @JsonKey(name: 'ip_addr')
  final String? ipAddr;
  @override
  final String? length;
  @override
  final String? width;
  @override
  final String? weight;
  @override
  final String? height;
  @override
  final String? pickup;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  @JsonKey(name: 'hyper_del')
  final String? hyperDel;
  @override
  @JsonKey(name: 'seller_del')
  final String? sellerDel;
  @override
  @JsonKey(name: 'accept_terms')
  final String? acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  final String? acceptMarketingOffers;
  @override
  @JsonKey(name: 'is_permanent')
  final String? isPermanent;
  @override
  final String? reviewed;
  @override
  final String? featured;
  @override
  final String? archived;
  @override
  final String? image;
  @override
  @JsonKey(name: 'archived_at')
  final String? archivedAt;
  @override
  @JsonKey(name: 'deletion_mail_sent_at')
  final String? deletionMailSentAt;
  @override
  @JsonKey(name: 'fb_profile')
  final String? fbProfile;
  @override
  final String? partner;
  @override
  @JsonKey(name: 'b2b_pricing')
  final String? b2bPricing;
  @override
  final String? offers;
  @override
  final String? wow;
  @override
  final String? sku;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final String? slug;
  @override
  @JsonKey(name: 'created_at_formatted')
  final String? createdAtFormatted;
  @override
  final int? commentCount;
  @override
  final ExtraModel? extra;
  @override
  final Ratings? ratings;
  @override
  final LocationModel? location;
  @override
  final usermodel? user;
  @override
  @JsonKey(name: 'detail_user')
  final SimilarProducts? userDetails;
  final List<Picture>? _pictures;
  @override
  List<Picture>? get pictures {
    final value = _pictures;
    if (value == null) return null;
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SavedByUser>? _savedByLoggedUser;
  @override
  List<SavedByUser>? get savedByLoggedUser {
    final value = _savedByLoggedUser;
    if (value == null) return null;
    if (_savedByLoggedUser is EqualUnmodifiableListView)
      return _savedByLoggedUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostType? postType;
  @override
  final City? city;
  @override
  final MyProductDeailModel? user_details;
  @override
  final int? similarProductCount;
  final List<RatingComment> _ratingComment;
  @override
  @JsonKey(name: 'rating_comment')
  List<RatingComment> get ratingComment {
    if (_ratingComment is EqualUnmodifiableListView) return _ratingComment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratingComment);
  }

  final List<LivePrize> _live_prizes;
  @override
  @JsonKey()
  List<LivePrize> get live_prizes {
    if (_live_prizes is EqualUnmodifiableListView) return _live_prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_live_prizes);
  }

  final List<Shop>? _deals;
  @override
  @JsonKey()
  List<Shop>? get deals {
    final value = _deals;
    if (value == null) return null;
    if (_deals is EqualUnmodifiableListView) return _deals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Shop>? _shop;
  @override
  @JsonKey()
  List<Shop>? get shop {
    final value = _shop;
    if (value == null) return null;
    if (_shop is EqualUnmodifiableListView) return _shop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FeedPost>? _feed_post;
  @override
  @JsonKey()
  List<FeedPost>? get feed_post {
    final value = _feed_post;
    if (value == null) return null;
    if (_feed_post is EqualUnmodifiableListView) return _feed_post;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostResult(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, tags: $tags, price: $price, discountedPrice: $discountedPrice, trending: $trending, stock: $stock, userPhotoUrl: $userPhotoUrl, minOrder: $minOrder, sampPrice: $sampPrice, textOne: $textOne, textTwo: $textTwo, avaTo: $avaTo, discount_percentage: $discount_percentage, negotiable: $negotiable, contactName: $contactName, email: $email, phone: $phone, phoneHidden: $phoneHidden, address: $address, cityId: $cityId, lat: $lat, lon: $lon, ipAddr: $ipAddr, length: $length, width: $width, weight: $weight, height: $height, pickup: $pickup, longitude: $longitude, latitude: $latitude, hyperDel: $hyperDel, sellerDel: $sellerDel, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, isPermanent: $isPermanent, reviewed: $reviewed, featured: $featured, archived: $archived, image: $image, archivedAt: $archivedAt, deletionMailSentAt: $deletionMailSentAt, fbProfile: $fbProfile, partner: $partner, b2bPricing: $b2bPricing, offers: $offers, wow: $wow, sku: $sku, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, createdAtFormatted: $createdAtFormatted, commentCount: $commentCount, extra: $extra, ratings: $ratings, location: $location, user: $user, userDetails: $userDetails, pictures: $pictures, savedByLoggedUser: $savedByLoggedUser, postType: $postType, city: $city, user_details: $user_details, similarProductCount: $similarProductCount, ratingComment: $ratingComment, live_prizes: $live_prizes, deals: $deals, shop: $shop, feed_post: $feed_post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.postTypeId, postTypeId) ||
                other.postTypeId == postTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.trending, trending) ||
                other.trending == trending) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.userPhotoUrl, userPhotoUrl) ||
                other.userPhotoUrl == userPhotoUrl) &&
            (identical(other.minOrder, minOrder) ||
                other.minOrder == minOrder) &&
            (identical(other.sampPrice, sampPrice) ||
                other.sampPrice == sampPrice) &&
            (identical(other.textOne, textOne) || other.textOne == textOne) &&
            (identical(other.textTwo, textTwo) || other.textTwo == textTwo) &&
            (identical(other.avaTo, avaTo) || other.avaTo == avaTo) &&
            (identical(other.discount_percentage, discount_percentage) ||
                other.discount_percentage == discount_percentage) &&
            (identical(other.negotiable, negotiable) ||
                other.negotiable == negotiable) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneHidden, phoneHidden) ||
                other.phoneHidden == phoneHidden) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.hyperDel, hyperDel) ||
                other.hyperDel == hyperDel) &&
            (identical(other.sellerDel, sellerDel) ||
                other.sellerDel == sellerDel) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms) &&
            (identical(other.acceptMarketingOffers, acceptMarketingOffers) ||
                other.acceptMarketingOffers == acceptMarketingOffers) &&
            (identical(other.isPermanent, isPermanent) ||
                other.isPermanent == isPermanent) &&
            (identical(other.reviewed, reviewed) ||
                other.reviewed == reviewed) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.deletionMailSentAt, deletionMailSentAt) ||
                other.deletionMailSentAt == deletionMailSentAt) &&
            (identical(other.fbProfile, fbProfile) ||
                other.fbProfile == fbProfile) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.b2bPricing, b2bPricing) ||
                other.b2bPricing == b2bPricing) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.createdAtFormatted, createdAtFormatted) ||
                other.createdAtFormatted == createdAtFormatted) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            const DeepCollectionEquality()
                .equals(other._savedByLoggedUser, _savedByLoggedUser) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.user_details, user_details) ||
                other.user_details == user_details) &&
            (identical(other.similarProductCount, similarProductCount) ||
                other.similarProductCount == similarProductCount) &&
            const DeepCollectionEquality()
                .equals(other._ratingComment, _ratingComment) &&
            const DeepCollectionEquality()
                .equals(other._live_prizes, _live_prizes) &&
            const DeepCollectionEquality().equals(other._deals, _deals) &&
            const DeepCollectionEquality().equals(other._shop, _shop) &&
            const DeepCollectionEquality()
                .equals(other._feed_post, _feed_post));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        countryCode,
        userId,
        categoryId,
        postTypeId,
        title,
        description,
        const DeepCollectionEquality().hash(_tags),
        price,
        discountedPrice,
        trending,
        stock,
        userPhotoUrl,
        minOrder,
        sampPrice,
        textOne,
        textTwo,
        avaTo,
        discount_percentage,
        negotiable,
        contactName,
        email,
        phone,
        phoneHidden,
        address,
        cityId,
        lat,
        lon,
        ipAddr,
        length,
        width,
        weight,
        height,
        pickup,
        longitude,
        latitude,
        hyperDel,
        sellerDel,
        acceptTerms,
        acceptMarketingOffers,
        isPermanent,
        reviewed,
        featured,
        archived,
        image,
        archivedAt,
        deletionMailSentAt,
        fbProfile,
        partner,
        b2bPricing,
        offers,
        wow,
        sku,
        createdAt,
        updatedAt,
        slug,
        createdAtFormatted,
        commentCount,
        extra,
        ratings,
        location,
        user,
        userDetails,
        const DeepCollectionEquality().hash(_pictures),
        const DeepCollectionEquality().hash(_savedByLoggedUser),
        postType,
        city,
        user_details,
        similarProductCount,
        const DeepCollectionEquality().hash(_ratingComment),
        const DeepCollectionEquality().hash(_live_prizes),
        const DeepCollectionEquality().hash(_deals),
        const DeepCollectionEquality().hash(_shop),
        const DeepCollectionEquality().hash(_feed_post)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostResultImplCopyWith<_$PostResultImpl> get copyWith =>
      __$$PostResultImplCopyWithImpl<_$PostResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostResultImplToJson(
      this,
    );
  }
}

abstract class _PostResult implements PostResult {
  const factory _PostResult(
      {required final int? id,
      @JsonKey(name: 'country_code') required final String? countryCode,
      @JsonKey(name: 'user_id') required final String? userId,
      @JsonKey(name: 'category_id') required final String? categoryId,
      @JsonKey(name: 'post_type_id') required final String? postTypeId,
      required final String? title,
      required final String? description,
      required final List<String>? tags,
      required final String? price,
      @JsonKey(name: 'discounted_price') final String? discountedPrice,
      required final String? trending,
      required final String? stock,
      @JsonKey(name: 'user_photo_url') required final String userPhotoUrl,
      @JsonKey(name: 'min_order') final String? minOrder,
      @JsonKey(name: 'samp_price') final String? sampPrice,
      @JsonKey(name: 'text_one') final String? textOne,
      @JsonKey(name: 'text_two') final String? textTwo,
      @JsonKey(name: 'ava_to') final String? avaTo,
      required final int? discount_percentage,
      final String? negotiable,
      @JsonKey(name: 'contact_name') required final String? contactName,
      required final String? email,
      required final String? phone,
      @JsonKey(name: 'phone_hidden') final String? phoneHidden,
      final String? address,
      @JsonKey(name: 'city_id') required final String? cityId,
      required final String? lat,
      required final String? lon,
      @JsonKey(name: 'ip_addr') required final String? ipAddr,
      required final String? length,
      required final String? width,
      required final String? weight,
      required final String? height,
      required final String? pickup,
      required final String? longitude,
      required final String? latitude,
      @JsonKey(name: 'hyper_del') required final String? hyperDel,
      @JsonKey(name: 'seller_del') final String? sellerDel,
      @JsonKey(name: 'accept_terms') required final String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers')
      required final String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') required final String? isPermanent,
      required final String? reviewed,
      required final String? featured,
      required final String? archived,
      required final String? image,
      @JsonKey(name: 'archived_at') required final String? archivedAt,
      @JsonKey(name: 'deletion_mail_sent_at') final String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') final String? fbProfile,
      final String? partner,
      @JsonKey(name: 'b2b_pricing') final String? b2bPricing,
      final String? offers,
      final String? wow,
      final String? sku,
      @JsonKey(name: 'created_at') required final String? createdAt,
      @JsonKey(name: 'updated_at') required final String? updatedAt,
      required final String? slug,
      @JsonKey(name: 'created_at_formatted')
      required final String? createdAtFormatted,
      required final int? commentCount,
      required final ExtraModel? extra,
      final Ratings? ratings,
      final LocationModel? location,
      final usermodel? user,
      @JsonKey(name: 'detail_user') required final SimilarProducts? userDetails,
      required final List<Picture>? pictures,
      final List<SavedByUser>? savedByLoggedUser,
      final PostType? postType,
      final City? city,
      required final MyProductDeailModel? user_details,
      final int? similarProductCount,
      @JsonKey(name: 'rating_comment')
      required final List<RatingComment> ratingComment,
      final List<LivePrize> live_prizes,
      final List<Shop>? deals,
      final List<Shop>? shop,
      final List<FeedPost>? feed_post}) = _$PostResultImpl;

  factory _PostResult.fromJson(Map<String, dynamic> json) =
      _$PostResultImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'post_type_id')
  String? get postTypeId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  List<String>? get tags;
  @override
  String? get price;
  @override
  @JsonKey(name: 'discounted_price')
  String? get discountedPrice;
  @override
  String? get trending;
  @override
  String? get stock;
  @override
  @JsonKey(name: 'user_photo_url')
  String get userPhotoUrl;
  @override
  @JsonKey(name: 'min_order')
  String? get minOrder;
  @override
  @JsonKey(name: 'samp_price')
  String? get sampPrice;
  @override
  @JsonKey(name: 'text_one')
  String? get textOne;
  @override
  @JsonKey(name: 'text_two')
  String? get textTwo;
  @override
  @JsonKey(name: 'ava_to')
  String? get avaTo;
  @override
  int? get discount_percentage;
  @override
  String? get negotiable;
  @override
  @JsonKey(name: 'contact_name')
  String? get contactName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'phone_hidden')
  String? get phoneHidden;
  @override
  String? get address;
  @override
  @JsonKey(name: 'city_id')
  String? get cityId;
  @override
  String? get lat;
  @override
  String? get lon;
  @override
  @JsonKey(name: 'ip_addr')
  String? get ipAddr;
  @override
  String? get length;
  @override
  String? get width;
  @override
  String? get weight;
  @override
  String? get height;
  @override
  String? get pickup;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  @JsonKey(name: 'hyper_del')
  String? get hyperDel;
  @override
  @JsonKey(name: 'seller_del')
  String? get sellerDel;
  @override
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers;
  @override
  @JsonKey(name: 'is_permanent')
  String? get isPermanent;
  @override
  String? get reviewed;
  @override
  String? get featured;
  @override
  String? get archived;
  @override
  String? get image;
  @override
  @JsonKey(name: 'archived_at')
  String? get archivedAt;
  @override
  @JsonKey(name: 'deletion_mail_sent_at')
  String? get deletionMailSentAt;
  @override
  @JsonKey(name: 'fb_profile')
  String? get fbProfile;
  @override
  String? get partner;
  @override
  @JsonKey(name: 'b2b_pricing')
  String? get b2bPricing;
  @override
  String? get offers;
  @override
  String? get wow;
  @override
  String? get sku;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String? get slug;
  @override
  @JsonKey(name: 'created_at_formatted')
  String? get createdAtFormatted;
  @override
  int? get commentCount;
  @override
  ExtraModel? get extra;
  @override
  Ratings? get ratings;
  @override
  LocationModel? get location;
  @override
  usermodel? get user;
  @override
  @JsonKey(name: 'detail_user')
  SimilarProducts? get userDetails;
  @override
  List<Picture>? get pictures;
  @override
  List<SavedByUser>? get savedByLoggedUser;
  @override
  PostType? get postType;
  @override
  City? get city;
  @override
  MyProductDeailModel? get user_details;
  @override
  int? get similarProductCount;
  @override
  @JsonKey(name: 'rating_comment')
  List<RatingComment> get ratingComment;
  @override
  List<LivePrize> get live_prizes;
  @override
  List<Shop>? get deals;
  @override
  List<Shop>? get shop;
  @override
  List<FeedPost>? get feed_post;
  @override
  @JsonKey(ignore: true)
  _$$PostResultImplCopyWith<_$PostResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedByUser _$SavedByUserFromJson(Map<String, dynamic> json) {
  return _SavedByUser.fromJson(json);
}

/// @nodoc
mixin _$SavedByUser {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String? get postId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedByUserCopyWith<SavedByUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedByUserCopyWith<$Res> {
  factory $SavedByUserCopyWith(
          SavedByUser value, $Res Function(SavedByUser) then) =
      _$SavedByUserCopyWithImpl<$Res, SavedByUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'post_id') String? postId});
}

/// @nodoc
class _$SavedByUserCopyWithImpl<$Res, $Val extends SavedByUser>
    implements $SavedByUserCopyWith<$Res> {
  _$SavedByUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? userId = freezed,
    Object? postId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedByUserImplCopyWith<$Res>
    implements $SavedByUserCopyWith<$Res> {
  factory _$$SavedByUserImplCopyWith(
          _$SavedByUserImpl value, $Res Function(_$SavedByUserImpl) then) =
      __$$SavedByUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'post_id') String? postId});
}

/// @nodoc
class __$$SavedByUserImplCopyWithImpl<$Res>
    extends _$SavedByUserCopyWithImpl<$Res, _$SavedByUserImpl>
    implements _$$SavedByUserImplCopyWith<$Res> {
  __$$SavedByUserImplCopyWithImpl(
      _$SavedByUserImpl _value, $Res Function(_$SavedByUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? userId = freezed,
    Object? postId = freezed,
  }) {
    return _then(_$SavedByUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedByUserImpl implements _SavedByUser {
  const _$SavedByUserImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'post_id') this.postId});

  factory _$SavedByUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedByUserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'post_id')
  final String? postId;

  @override
  String toString() {
    return 'SavedByUser(id: $id, name: $name, username: $username, userId: $userId, postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedByUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, username, userId, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedByUserImplCopyWith<_$SavedByUserImpl> get copyWith =>
      __$$SavedByUserImplCopyWithImpl<_$SavedByUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedByUserImplToJson(
      this,
    );
  }
}

abstract class _SavedByUser implements SavedByUser {
  const factory _SavedByUser(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'post_id') final String? postId}) = _$SavedByUserImpl;

  factory _SavedByUser.fromJson(Map<String, dynamic> json) =
      _$SavedByUserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'post_id')
  String? get postId;
  @override
  @JsonKey(ignore: true)
  _$$SavedByUserImplCopyWith<_$SavedByUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  NearestBranch? get nearestBranch => throw _privateConstructorUsedError;
  double? get shortestDistance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({NearestBranch? nearestBranch, double? shortestDistance});

  $NearestBranchCopyWith<$Res>? get nearestBranch;
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearestBranch = freezed,
    Object? shortestDistance = freezed,
  }) {
    return _then(_value.copyWith(
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as NearestBranch?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NearestBranchCopyWith<$Res>? get nearestBranch {
    if (_value.nearestBranch == null) {
      return null;
    }

    return $NearestBranchCopyWith<$Res>(_value.nearestBranch!, (value) {
      return _then(_value.copyWith(nearestBranch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NearestBranch? nearestBranch, double? shortestDistance});

  @override
  $NearestBranchCopyWith<$Res>? get nearestBranch;
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nearestBranch = freezed,
    Object? shortestDistance = freezed,
  }) {
    return _then(_$LocationModelImpl(
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as NearestBranch?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl(
      {required this.nearestBranch, required this.shortestDistance});

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final NearestBranch? nearestBranch;
  @override
  final double? shortestDistance;

  @override
  String toString() {
    return 'LocationModel(nearestBranch: $nearestBranch, shortestDistance: $shortestDistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.nearestBranch, nearestBranch) ||
                other.nearestBranch == nearestBranch) &&
            (identical(other.shortestDistance, shortestDistance) ||
                other.shortestDistance == shortestDistance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nearestBranch, shortestDistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {required final NearestBranch? nearestBranch,
      required final double? shortestDistance}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  NearestBranch? get nearestBranch;
  @override
  double? get shortestDistance;
  @override
  @JsonKey(ignore: true)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NearestBranch _$NearestBranchFromJson(Map<String, dynamic> json) {
  return _NearestBranch.fromJson(json);
}

/// @nodoc
mixin _$NearestBranch {
  String? get location => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearestBranchCopyWith<NearestBranch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearestBranchCopyWith<$Res> {
  factory $NearestBranchCopyWith(
          NearestBranch value, $Res Function(NearestBranch) then) =
      _$NearestBranchCopyWithImpl<$Res, NearestBranch>;
  @useResult
  $Res call({String? location, String? longitude, String? latitude});
}

/// @nodoc
class _$NearestBranchCopyWithImpl<$Res, $Val extends NearestBranch>
    implements $NearestBranchCopyWith<$Res> {
  _$NearestBranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NearestBranchImplCopyWith<$Res>
    implements $NearestBranchCopyWith<$Res> {
  factory _$$NearestBranchImplCopyWith(
          _$NearestBranchImpl value, $Res Function(_$NearestBranchImpl) then) =
      __$$NearestBranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? location, String? longitude, String? latitude});
}

/// @nodoc
class __$$NearestBranchImplCopyWithImpl<$Res>
    extends _$NearestBranchCopyWithImpl<$Res, _$NearestBranchImpl>
    implements _$$NearestBranchImplCopyWith<$Res> {
  __$$NearestBranchImplCopyWithImpl(
      _$NearestBranchImpl _value, $Res Function(_$NearestBranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$NearestBranchImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NearestBranchImpl implements _NearestBranch {
  const _$NearestBranchImpl(
      {required this.location,
      required this.longitude,
      required this.latitude});

  factory _$NearestBranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$NearestBranchImplFromJson(json);

  @override
  final String? location;
  @override
  final String? longitude;
  @override
  final String? latitude;

  @override
  String toString() {
    return 'NearestBranch(location: $location, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NearestBranchImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NearestBranchImplCopyWith<_$NearestBranchImpl> get copyWith =>
      __$$NearestBranchImplCopyWithImpl<_$NearestBranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NearestBranchImplToJson(
      this,
    );
  }
}

abstract class _NearestBranch implements NearestBranch {
  const factory _NearestBranch(
      {required final String? location,
      required final String? longitude,
      required final String? latitude}) = _$NearestBranchImpl;

  factory _NearestBranch.fromJson(Map<String, dynamic> json) =
      _$NearestBranchImpl.fromJson;

  @override
  String? get location;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$NearestBranchImplCopyWith<_$NearestBranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyProductDeailModel _$MyProductDeailModelFromJson(Map<String, dynamic> json) {
  return _MyProductDeailModel.fromJson(json);
}

/// @nodoc
mixin _$MyProductDeailModel {
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_photo_url')
  String? get userPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  int? get livePrizes => throw _privateConstructorUsedError;
  int? get productCount => throw _privateConstructorUsedError;
  int? get storyCount => throw _privateConstructorUsedError;
  int? get subscribers => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_id')
  String? get membershipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_title')
  String? get membershipTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_color')
  String? get membershipColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProductDeailModelCopyWith<MyProductDeailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductDeailModelCopyWith<$Res> {
  factory $MyProductDeailModelCopyWith(
          MyProductDeailModel value, $Res Function(MyProductDeailModel) then) =
      _$MyProductDeailModelCopyWithImpl<$Res, MyProductDeailModel>;
  @useResult
  $Res call(
      {String? name,
      String? photo,
      @JsonKey(name: 'user_photo_url') String? userPhotoUrl,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      int? livePrizes,
      int? productCount,
      int? storyCount,
      int? subscribers,
      double? distance,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor});
}

/// @nodoc
class _$MyProductDeailModelCopyWithImpl<$Res, $Val extends MyProductDeailModel>
    implements $MyProductDeailModelCopyWith<$Res> {
  _$MyProductDeailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? userPhotoUrl = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? livePrizes = freezed,
    Object? productCount = freezed,
    Object? storyCount = freezed,
    Object? subscribers = freezed,
    Object? distance = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      livePrizes: freezed == livePrizes
          ? _value.livePrizes
          : livePrizes // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$MyProductDeailModelImplCopyWith<$Res>
    implements $MyProductDeailModelCopyWith<$Res> {
  factory _$$MyProductDeailModelImplCopyWith(_$MyProductDeailModelImpl value,
          $Res Function(_$MyProductDeailModelImpl) then) =
      __$$MyProductDeailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? photo,
      @JsonKey(name: 'user_photo_url') String? userPhotoUrl,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      int? livePrizes,
      int? productCount,
      int? storyCount,
      int? subscribers,
      double? distance,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor});
}

/// @nodoc
class __$$MyProductDeailModelImplCopyWithImpl<$Res>
    extends _$MyProductDeailModelCopyWithImpl<$Res, _$MyProductDeailModelImpl>
    implements _$$MyProductDeailModelImplCopyWith<$Res> {
  __$$MyProductDeailModelImplCopyWithImpl(_$MyProductDeailModelImpl _value,
      $Res Function(_$MyProductDeailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? userPhotoUrl = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? livePrizes = freezed,
    Object? productCount = freezed,
    Object? storyCount = freezed,
    Object? subscribers = freezed,
    Object? distance = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
  }) {
    return _then(_$MyProductDeailModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      livePrizes: freezed == livePrizes
          ? _value.livePrizes
          : livePrizes // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$MyProductDeailModelImpl implements _MyProductDeailModel {
  const _$MyProductDeailModelImpl(
      {this.name,
      this.photo,
      @JsonKey(name: 'user_photo_url') this.userPhotoUrl,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      this.livePrizes,
      this.productCount,
      this.storyCount,
      this.subscribers,
      this.distance,
      @JsonKey(name: 'membership_id') this.membershipId,
      @JsonKey(name: 'membership_title') this.membershipTitle,
      @JsonKey(name: 'membership_color') this.membershipColor});

  factory _$MyProductDeailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyProductDeailModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? photo;
  @override
  @JsonKey(name: 'user_photo_url')
  final String? userPhotoUrl;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  final int? livePrizes;
  @override
  final int? productCount;
  @override
  final int? storyCount;
  @override
  final int? subscribers;
  @override
  final double? distance;
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
    return 'MyProductDeailModel(name: $name, photo: $photo, userPhotoUrl: $userPhotoUrl, hasSponsoredGifts: $hasSponsoredGifts, livePrizes: $livePrizes, productCount: $productCount, storyCount: $storyCount, subscribers: $subscribers, distance: $distance, membershipId: $membershipId, membershipTitle: $membershipTitle, membershipColor: $membershipColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProductDeailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.userPhotoUrl, userPhotoUrl) ||
                other.userPhotoUrl == userPhotoUrl) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.livePrizes, livePrizes) ||
                other.livePrizes == livePrizes) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
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
      name,
      photo,
      userPhotoUrl,
      hasSponsoredGifts,
      livePrizes,
      productCount,
      storyCount,
      subscribers,
      distance,
      membershipId,
      membershipTitle,
      membershipColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProductDeailModelImplCopyWith<_$MyProductDeailModelImpl> get copyWith =>
      __$$MyProductDeailModelImplCopyWithImpl<_$MyProductDeailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyProductDeailModelImplToJson(
      this,
    );
  }
}

abstract class _MyProductDeailModel implements MyProductDeailModel {
  const factory _MyProductDeailModel(
          {final String? name,
          final String? photo,
          @JsonKey(name: 'user_photo_url') final String? userPhotoUrl,
          @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
          final int? livePrizes,
          final int? productCount,
          final int? storyCount,
          final int? subscribers,
          final double? distance,
          @JsonKey(name: 'membership_id') final String? membershipId,
          @JsonKey(name: 'membership_title') final String? membershipTitle,
          @JsonKey(name: 'membership_color') final String? membershipColor}) =
      _$MyProductDeailModelImpl;

  factory _MyProductDeailModel.fromJson(Map<String, dynamic> json) =
      _$MyProductDeailModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get photo;
  @override
  @JsonKey(name: 'user_photo_url')
  String? get userPhotoUrl;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  int? get livePrizes;
  @override
  int? get productCount;
  @override
  int? get storyCount;
  @override
  int? get subscribers;
  @override
  double? get distance;
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
  _$$MyProductDeailModelImplCopyWith<_$MyProductDeailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimilarProducts _$SimilarProductsFromJson(Map<String, dynamic> json) {
  return _SimilarProducts.fromJson(json);
}

/// @nodoc
mixin _$SimilarProducts {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_status')
  String? get membershipStatus => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'users_location')
  String? get usersLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_location')
  String? get branchLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_plan_title')
  String? get membershipPlanTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_plan_color')
  String? get membershipPlanColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  bool? get sponsored => throw _privateConstructorUsedError;
  int? get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortestDistance')
  double? get shortestDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'nearestBranch')
  String? get nearestBranch => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimilarProductsCopyWith<SimilarProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarProductsCopyWith<$Res> {
  factory $SimilarProductsCopyWith(
          SimilarProducts value, $Res Function(SimilarProducts) then) =
      _$SimilarProductsCopyWithImpl<$Res, SimilarProducts>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      String photo,
      String name,
      @JsonKey(name: 'users_location') String? usersLocation,
      @JsonKey(name: 'branch_location') String? branchLocation,
      @JsonKey(name: 'membership_plan_title') String? membershipPlanTitle,
      @JsonKey(name: 'membership_plan_color') String? membershipPlanColor,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      bool? sponsored,
      int? storyCount,
      @JsonKey(name: 'shortestDistance') double? shortestDistance,
      @JsonKey(name: 'nearestBranch') String? nearestBranch,
      String? longitude,
      String? latitude});
}

/// @nodoc
class _$SimilarProductsCopyWithImpl<$Res, $Val extends SimilarProducts>
    implements $SimilarProductsCopyWith<$Res> {
  _$SimilarProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? photo = null,
    Object? name = null,
    Object? usersLocation = freezed,
    Object? branchLocation = freezed,
    Object? membershipPlanTitle = freezed,
    Object? membershipPlanColor = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? sponsored = freezed,
    Object? storyCount = freezed,
    Object? shortestDistance = freezed,
    Object? nearestBranch = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      usersLocation: freezed == usersLocation
          ? _value.usersLocation
          : usersLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      branchLocation: freezed == branchLocation
          ? _value.branchLocation
          : branchLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanTitle: freezed == membershipPlanTitle
          ? _value.membershipPlanTitle
          : membershipPlanTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanColor: freezed == membershipPlanColor
          ? _value.membershipPlanColor
          : membershipPlanColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimilarProductsImplCopyWith<$Res>
    implements $SimilarProductsCopyWith<$Res> {
  factory _$$SimilarProductsImplCopyWith(_$SimilarProductsImpl value,
          $Res Function(_$SimilarProductsImpl) then) =
      __$$SimilarProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      String photo,
      String name,
      @JsonKey(name: 'users_location') String? usersLocation,
      @JsonKey(name: 'branch_location') String? branchLocation,
      @JsonKey(name: 'membership_plan_title') String? membershipPlanTitle,
      @JsonKey(name: 'membership_plan_color') String? membershipPlanColor,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      bool? sponsored,
      int? storyCount,
      @JsonKey(name: 'shortestDistance') double? shortestDistance,
      @JsonKey(name: 'nearestBranch') String? nearestBranch,
      String? longitude,
      String? latitude});
}

/// @nodoc
class __$$SimilarProductsImplCopyWithImpl<$Res>
    extends _$SimilarProductsCopyWithImpl<$Res, _$SimilarProductsImpl>
    implements _$$SimilarProductsImplCopyWith<$Res> {
  __$$SimilarProductsImplCopyWithImpl(
      _$SimilarProductsImpl _value, $Res Function(_$SimilarProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? photo = null,
    Object? name = null,
    Object? usersLocation = freezed,
    Object? branchLocation = freezed,
    Object? membershipPlanTitle = freezed,
    Object? membershipPlanColor = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? sponsored = freezed,
    Object? storyCount = freezed,
    Object? shortestDistance = freezed,
    Object? nearestBranch = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$SimilarProductsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      usersLocation: freezed == usersLocation
          ? _value.usersLocation
          : usersLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      branchLocation: freezed == branchLocation
          ? _value.branchLocation
          : branchLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanTitle: freezed == membershipPlanTitle
          ? _value.membershipPlanTitle
          : membershipPlanTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanColor: freezed == membershipPlanColor
          ? _value.membershipPlanColor
          : membershipPlanColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimilarProductsImpl implements _SimilarProducts {
  const _$SimilarProductsImpl(
      {required this.id,
      @JsonKey(name: 'membership_plan_id') required this.membershipPlanId,
      @JsonKey(name: 'membership_status') required this.membershipStatus,
      required this.photo,
      required this.name,
      @JsonKey(name: 'users_location') this.usersLocation,
      @JsonKey(name: 'branch_location') required this.branchLocation,
      @JsonKey(name: 'membership_plan_title') required this.membershipPlanTitle,
      @JsonKey(name: 'membership_plan_color') required this.membershipPlanColor,
      @JsonKey(name: 'has_sponsored_gifts') required this.hasSponsoredGifts,
      required this.sponsored,
      required this.storyCount,
      @JsonKey(name: 'shortestDistance') required this.shortestDistance,
      @JsonKey(name: 'nearestBranch') required this.nearestBranch,
      required this.longitude,
      required this.latitude});

  factory _$SimilarProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimilarProductsImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'membership_plan_id')
  final String? membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  final String? membershipStatus;
  @override
  final String photo;
  @override
  final String name;
  @override
  @JsonKey(name: 'users_location')
  final String? usersLocation;
  @override
  @JsonKey(name: 'branch_location')
  final String? branchLocation;
  @override
  @JsonKey(name: 'membership_plan_title')
  final String? membershipPlanTitle;
  @override
  @JsonKey(name: 'membership_plan_color')
  final String? membershipPlanColor;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  final bool? sponsored;
  @override
  final int? storyCount;
  @override
  @JsonKey(name: 'shortestDistance')
  final double? shortestDistance;
  @override
  @JsonKey(name: 'nearestBranch')
  final String? nearestBranch;
  @override
  final String? longitude;
  @override
  final String? latitude;

  @override
  String toString() {
    return 'SimilarProducts(id: $id, membershipPlanId: $membershipPlanId, membershipStatus: $membershipStatus, photo: $photo, name: $name, usersLocation: $usersLocation, branchLocation: $branchLocation, membershipPlanTitle: $membershipPlanTitle, membershipPlanColor: $membershipPlanColor, hasSponsoredGifts: $hasSponsoredGifts, sponsored: $sponsored, storyCount: $storyCount, shortestDistance: $shortestDistance, nearestBranch: $nearestBranch, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.membershipPlanId, membershipPlanId) ||
                other.membershipPlanId == membershipPlanId) &&
            (identical(other.membershipStatus, membershipStatus) ||
                other.membershipStatus == membershipStatus) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.usersLocation, usersLocation) ||
                other.usersLocation == usersLocation) &&
            (identical(other.branchLocation, branchLocation) ||
                other.branchLocation == branchLocation) &&
            (identical(other.membershipPlanTitle, membershipPlanTitle) ||
                other.membershipPlanTitle == membershipPlanTitle) &&
            (identical(other.membershipPlanColor, membershipPlanColor) ||
                other.membershipPlanColor == membershipPlanColor) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.sponsored, sponsored) ||
                other.sponsored == sponsored) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.shortestDistance, shortestDistance) ||
                other.shortestDistance == shortestDistance) &&
            (identical(other.nearestBranch, nearestBranch) ||
                other.nearestBranch == nearestBranch) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      membershipPlanId,
      membershipStatus,
      photo,
      name,
      usersLocation,
      branchLocation,
      membershipPlanTitle,
      membershipPlanColor,
      hasSponsoredGifts,
      sponsored,
      storyCount,
      shortestDistance,
      nearestBranch,
      longitude,
      latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarProductsImplCopyWith<_$SimilarProductsImpl> get copyWith =>
      __$$SimilarProductsImplCopyWithImpl<_$SimilarProductsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimilarProductsImplToJson(
      this,
    );
  }
}

abstract class _SimilarProducts implements SimilarProducts {
  const factory _SimilarProducts(
      {required final String id,
      @JsonKey(name: 'membership_plan_id')
      required final String? membershipPlanId,
      @JsonKey(name: 'membership_status')
      required final String? membershipStatus,
      required final String photo,
      required final String name,
      @JsonKey(name: 'users_location') final String? usersLocation,
      @JsonKey(name: 'branch_location') required final String? branchLocation,
      @JsonKey(name: 'membership_plan_title')
      required final String? membershipPlanTitle,
      @JsonKey(name: 'membership_plan_color')
      required final String? membershipPlanColor,
      @JsonKey(name: 'has_sponsored_gifts')
      required final bool? hasSponsoredGifts,
      required final bool? sponsored,
      required final int? storyCount,
      @JsonKey(name: 'shortestDistance')
      required final double? shortestDistance,
      @JsonKey(name: 'nearestBranch') required final String? nearestBranch,
      required final String? longitude,
      required final String? latitude}) = _$SimilarProductsImpl;

  factory _SimilarProducts.fromJson(Map<String, dynamic> json) =
      _$SimilarProductsImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  String? get membershipStatus;
  @override
  String get photo;
  @override
  String get name;
  @override
  @JsonKey(name: 'users_location')
  String? get usersLocation;
  @override
  @JsonKey(name: 'branch_location')
  String? get branchLocation;
  @override
  @JsonKey(name: 'membership_plan_title')
  String? get membershipPlanTitle;
  @override
  @JsonKey(name: 'membership_plan_color')
  String? get membershipPlanColor;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  bool? get sponsored;
  @override
  int? get storyCount;
  @override
  @JsonKey(name: 'shortestDistance')
  double? get shortestDistance;
  @override
  @JsonKey(name: 'nearestBranch')
  String? get nearestBranch;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$SimilarProductsImplCopyWith<_$SimilarProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'subadmin1_code') required String subadmin1Code,
// @JsonKey(name: 'subadmin2_code') required String subadmin2Code,
  String get population => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String get timeZone => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'country_code') String countryCode,
      String name,
      String latitude,
      String longitude,
      String population,
      @JsonKey(name: 'time_zone') String timeZone,
      String active});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? population = null,
    Object? timeZone = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'country_code') String countryCode,
      String name,
      String latitude,
      String longitude,
      String population,
      @JsonKey(name: 'time_zone') String timeZone,
      String active});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? population = null,
    Object? timeZone = null,
    Object? active = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl(
      {required this.id,
      @JsonKey(name: 'country_code') required this.countryCode,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.population,
      @JsonKey(name: 'time_zone') required this.timeZone,
      required this.active});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  final String name;
  @override
  final String latitude;
  @override
  final String longitude;
// @JsonKey(name: 'subadmin1_code') required String subadmin1Code,
// @JsonKey(name: 'subadmin2_code') required String subadmin2Code,
  @override
  final String population;
  @override
  @JsonKey(name: 'time_zone')
  final String timeZone;
  @override
  final String active;

  @override
  String toString() {
    return 'City(id: $id, countryCode: $countryCode, name: $name, latitude: $latitude, longitude: $longitude, population: $population, timeZone: $timeZone, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryCode, name, latitude,
      longitude, population, timeZone, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {required final int id,
      @JsonKey(name: 'country_code') required final String countryCode,
      required final String name,
      required final String latitude,
      required final String longitude,
      required final String population,
      @JsonKey(name: 'time_zone') required final String timeZone,
      required final String active}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  String get name;
  @override
  String get latitude;
  @override
  String get longitude;
  @override // @JsonKey(name: 'subadmin1_code') required String subadmin1Code,
// @JsonKey(name: 'subadmin2_code') required String subadmin2Code,
  String get population;
  @override
  @JsonKey(name: 'time_zone')
  String get timeZone;
  @override
  String get active;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LivePrize _$LivePrizeFromJson(Map<String, dynamic> json) {
  return _LivePrize.fromJson(json);
}

/// @nodoc
mixin _$LivePrize {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  int? get subscribers => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get gift_qty => throw _privateConstructorUsedError;
  String? get total_worth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LivePrizeCopyWith<LivePrize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivePrizeCopyWith<$Res> {
  factory $LivePrizeCopyWith(LivePrize value, $Res Function(LivePrize) then) =
      _$LivePrizeCopyWithImpl<$Res, LivePrize>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String? photo,
      int? subscribers,
      String? image,
      String? gift_qty,
      String? total_worth});
}

/// @nodoc
class _$LivePrizeCopyWithImpl<$Res, $Val extends LivePrize>
    implements $LivePrizeCopyWith<$Res> {
  _$LivePrizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? photo = freezed,
    Object? subscribers = freezed,
    Object? image = freezed,
    Object? gift_qty = freezed,
    Object? total_worth = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      gift_qty: freezed == gift_qty
          ? _value.gift_qty
          : gift_qty // ignore: cast_nullable_to_non_nullable
              as String?,
      total_worth: freezed == total_worth
          ? _value.total_worth
          : total_worth // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LivePrizeImplCopyWith<$Res>
    implements $LivePrizeCopyWith<$Res> {
  factory _$$LivePrizeImplCopyWith(
          _$LivePrizeImpl value, $Res Function(_$LivePrizeImpl) then) =
      __$$LivePrizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String? photo,
      int? subscribers,
      String? image,
      String? gift_qty,
      String? total_worth});
}

/// @nodoc
class __$$LivePrizeImplCopyWithImpl<$Res>
    extends _$LivePrizeCopyWithImpl<$Res, _$LivePrizeImpl>
    implements _$$LivePrizeImplCopyWith<$Res> {
  __$$LivePrizeImplCopyWithImpl(
      _$LivePrizeImpl _value, $Res Function(_$LivePrizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? photo = freezed,
    Object? subscribers = freezed,
    Object? image = freezed,
    Object? gift_qty = freezed,
    Object? total_worth = freezed,
  }) {
    return _then(_$LivePrizeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      gift_qty: freezed == gift_qty
          ? _value.gift_qty
          : gift_qty // ignore: cast_nullable_to_non_nullable
              as String?,
      total_worth: freezed == total_worth
          ? _value.total_worth
          : total_worth // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LivePrizeImpl implements _LivePrize {
  _$LivePrizeImpl(
      {this.id,
      required this.name,
      this.photo,
      required this.subscribers,
      this.image,
      this.gift_qty,
      this.total_worth});

  factory _$LivePrizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LivePrizeImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? photo;
  @override
  final int? subscribers;
  @override
  final String? image;
  @override
  final String? gift_qty;
  @override
  final String? total_worth;

  @override
  String toString() {
    return 'LivePrize(id: $id, name: $name, photo: $photo, subscribers: $subscribers, image: $image, gift_qty: $gift_qty, total_worth: $total_worth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivePrizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.gift_qty, gift_qty) ||
                other.gift_qty == gift_qty) &&
            (identical(other.total_worth, total_worth) ||
                other.total_worth == total_worth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, photo, subscribers, image, gift_qty, total_worth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LivePrizeImplCopyWith<_$LivePrizeImpl> get copyWith =>
      __$$LivePrizeImplCopyWithImpl<_$LivePrizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LivePrizeImplToJson(
      this,
    );
  }
}

abstract class _LivePrize implements LivePrize {
  factory _LivePrize(
      {final String? id,
      required final String name,
      final String? photo,
      required final int? subscribers,
      final String? image,
      final String? gift_qty,
      final String? total_worth}) = _$LivePrizeImpl;

  factory _LivePrize.fromJson(Map<String, dynamic> json) =
      _$LivePrizeImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get photo;
  @override
  int? get subscribers;
  @override
  String? get image;
  @override
  String? get gift_qty;
  @override
  String? get total_worth;
  @override
  @JsonKey(ignore: true)
  _$$LivePrizeImplCopyWith<_$LivePrizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get userid => throw _privateConstructorUsedError;
  String? get vendor_name => throw _privateConstructorUsedError;
  String? get vendor_photo => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;
  int? get similarproductcount => throw _privateConstructorUsedError;
  String? get comment_count => throw _privateConstructorUsedError;
  int? get average_rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res, Shop>;
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? userid,
      String? vendor_name,
      String? vendor_photo,
      String? wow,
      int? similarproductcount,
      String? comment_count,
      int? average_rating,
      @JsonKey(name: 'discount_percentage') double? discountPercentage});
}

/// @nodoc
class _$ShopCopyWithImpl<$Res, $Val extends Shop>
    implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? userid = freezed,
    Object? vendor_name = freezed,
    Object? vendor_photo = freezed,
    Object? wow = freezed,
    Object? similarproductcount = freezed,
    Object? comment_count = freezed,
    Object? average_rating = freezed,
    Object? discountPercentage = freezed,
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
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_name: freezed == vendor_name
          ? _value.vendor_name
          : vendor_name // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_photo: freezed == vendor_photo
          ? _value.vendor_photo
          : vendor_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      similarproductcount: freezed == similarproductcount
          ? _value.similarproductcount
          : similarproductcount // ignore: cast_nullable_to_non_nullable
              as int?,
      comment_count: freezed == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as String?,
      average_rating: freezed == average_rating
          ? _value.average_rating
          : average_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopImplCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$ShopImplCopyWith(
          _$ShopImpl value, $Res Function(_$ShopImpl) then) =
      __$$ShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? userid,
      String? vendor_name,
      String? vendor_photo,
      String? wow,
      int? similarproductcount,
      String? comment_count,
      int? average_rating,
      @JsonKey(name: 'discount_percentage') double? discountPercentage});
}

/// @nodoc
class __$$ShopImplCopyWithImpl<$Res>
    extends _$ShopCopyWithImpl<$Res, _$ShopImpl>
    implements _$$ShopImplCopyWith<$Res> {
  __$$ShopImplCopyWithImpl(_$ShopImpl _value, $Res Function(_$ShopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? userid = freezed,
    Object? vendor_name = freezed,
    Object? vendor_photo = freezed,
    Object? wow = freezed,
    Object? similarproductcount = freezed,
    Object? comment_count = freezed,
    Object? average_rating = freezed,
    Object? discountPercentage = freezed,
  }) {
    return _then(_$ShopImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_name: freezed == vendor_name
          ? _value.vendor_name
          : vendor_name // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_photo: freezed == vendor_photo
          ? _value.vendor_photo
          : vendor_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      similarproductcount: freezed == similarproductcount
          ? _value.similarproductcount
          : similarproductcount // ignore: cast_nullable_to_non_nullable
              as int?,
      comment_count: freezed == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as String?,
      average_rating: freezed == average_rating
          ? _value.average_rating
          : average_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopImpl implements _Shop {
  _$ShopImpl(
      {required this.id,
      required this.image,
      required this.userid,
      required this.vendor_name,
      required this.vendor_photo,
      required this.wow,
      required this.similarproductcount,
      required this.comment_count,
      required this.average_rating,
      @JsonKey(name: 'discount_percentage') required this.discountPercentage});

  factory _$ShopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopImplFromJson(json);

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? userid;
  @override
  final String? vendor_name;
  @override
  final String? vendor_photo;
  @override
  final String? wow;
  @override
  final int? similarproductcount;
  @override
  final String? comment_count;
  @override
  final int? average_rating;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;

  @override
  String toString() {
    return 'Shop(id: $id, image: $image, userid: $userid, vendor_name: $vendor_name, vendor_photo: $vendor_photo, wow: $wow, similarproductcount: $similarproductcount, comment_count: $comment_count, average_rating: $average_rating, discountPercentage: $discountPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.vendor_name, vendor_name) ||
                other.vendor_name == vendor_name) &&
            (identical(other.vendor_photo, vendor_photo) ||
                other.vendor_photo == vendor_photo) &&
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.similarproductcount, similarproductcount) ||
                other.similarproductcount == similarproductcount) &&
            (identical(other.comment_count, comment_count) ||
                other.comment_count == comment_count) &&
            (identical(other.average_rating, average_rating) ||
                other.average_rating == average_rating) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      userid,
      vendor_name,
      vendor_photo,
      wow,
      similarproductcount,
      comment_count,
      average_rating,
      discountPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      __$$ShopImplCopyWithImpl<_$ShopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopImplToJson(
      this,
    );
  }
}

abstract class _Shop implements Shop {
  factory _Shop(
      {required final String? id,
      required final String? image,
      required final String? userid,
      required final String? vendor_name,
      required final String? vendor_photo,
      required final String? wow,
      required final int? similarproductcount,
      required final String? comment_count,
      required final int? average_rating,
      @JsonKey(name: 'discount_percentage')
      required final double? discountPercentage}) = _$ShopImpl;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$ShopImpl.fromJson;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get userid;
  @override
  String? get vendor_name;
  @override
  String? get vendor_photo;
  @override
  String? get wow;
  @override
  int? get similarproductcount;
  @override
  String? get comment_count;
  @override
  int? get average_rating;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;
  @override
  @JsonKey(ignore: true)
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ratings _$RatingsFromJson(Map<String, dynamic> json) {
  return _Ratings.fromJson(json);
}

/// @nodoc
mixin _$Ratings {
  Rating? get rating => throw _privateConstructorUsedError;
  int? get avg_rating => throw _privateConstructorUsedError;
  RatingCounts get ratingCounts => throw _privateConstructorUsedError;
  RatingCounts get ratingPercentages => throw _privateConstructorUsedError;
  int get totalRatings =>
      throw _privateConstructorUsedError; // Required as it's a number
  double get averageRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingsCopyWith<Ratings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingsCopyWith<$Res> {
  factory $RatingsCopyWith(Ratings value, $Res Function(Ratings) then) =
      _$RatingsCopyWithImpl<$Res, Ratings>;
  @useResult
  $Res call(
      {Rating? rating,
      int? avg_rating,
      RatingCounts ratingCounts,
      RatingCounts ratingPercentages,
      int totalRatings,
      double averageRating});

  $RatingCopyWith<$Res>? get rating;
  $RatingCountsCopyWith<$Res> get ratingCounts;
  $RatingCountsCopyWith<$Res> get ratingPercentages;
}

/// @nodoc
class _$RatingsCopyWithImpl<$Res, $Val extends Ratings>
    implements $RatingsCopyWith<$Res> {
  _$RatingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? avg_rating = freezed,
    Object? ratingCounts = null,
    Object? ratingPercentages = null,
    Object? totalRatings = null,
    Object? averageRating = null,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCounts: null == ratingCounts
          ? _value.ratingCounts
          : ratingCounts // ignore: cast_nullable_to_non_nullable
              as RatingCounts,
      ratingPercentages: null == ratingPercentages
          ? _value.ratingPercentages
          : ratingPercentages // ignore: cast_nullable_to_non_nullable
              as RatingCounts,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCountsCopyWith<$Res> get ratingCounts {
    return $RatingCountsCopyWith<$Res>(_value.ratingCounts, (value) {
      return _then(_value.copyWith(ratingCounts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCountsCopyWith<$Res> get ratingPercentages {
    return $RatingCountsCopyWith<$Res>(_value.ratingPercentages, (value) {
      return _then(_value.copyWith(ratingPercentages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingsImplCopyWith<$Res> implements $RatingsCopyWith<$Res> {
  factory _$$RatingsImplCopyWith(
          _$RatingsImpl value, $Res Function(_$RatingsImpl) then) =
      __$$RatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Rating? rating,
      int? avg_rating,
      RatingCounts ratingCounts,
      RatingCounts ratingPercentages,
      int totalRatings,
      double averageRating});

  @override
  $RatingCopyWith<$Res>? get rating;
  @override
  $RatingCountsCopyWith<$Res> get ratingCounts;
  @override
  $RatingCountsCopyWith<$Res> get ratingPercentages;
}

/// @nodoc
class __$$RatingsImplCopyWithImpl<$Res>
    extends _$RatingsCopyWithImpl<$Res, _$RatingsImpl>
    implements _$$RatingsImplCopyWith<$Res> {
  __$$RatingsImplCopyWithImpl(
      _$RatingsImpl _value, $Res Function(_$RatingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? avg_rating = freezed,
    Object? ratingCounts = null,
    Object? ratingPercentages = null,
    Object? totalRatings = null,
    Object? averageRating = null,
  }) {
    return _then(_$RatingsImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingCounts: null == ratingCounts
          ? _value.ratingCounts
          : ratingCounts // ignore: cast_nullable_to_non_nullable
              as RatingCounts,
      ratingPercentages: null == ratingPercentages
          ? _value.ratingPercentages
          : ratingPercentages // ignore: cast_nullable_to_non_nullable
              as RatingCounts,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingsImpl implements _Ratings {
  const _$RatingsImpl(
      {this.rating,
      this.avg_rating,
      required this.ratingCounts,
      required this.ratingPercentages,
      required this.totalRatings,
      required this.averageRating});

  factory _$RatingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingsImplFromJson(json);

  @override
  final Rating? rating;
  @override
  final int? avg_rating;
  @override
  final RatingCounts ratingCounts;
  @override
  final RatingCounts ratingPercentages;
  @override
  final int totalRatings;
// Required as it's a number
  @override
  final double averageRating;

  @override
  String toString() {
    return 'Ratings(rating: $rating, avg_rating: $avg_rating, ratingCounts: $ratingCounts, ratingPercentages: $ratingPercentages, totalRatings: $totalRatings, averageRating: $averageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingsImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.avg_rating, avg_rating) ||
                other.avg_rating == avg_rating) &&
            (identical(other.ratingCounts, ratingCounts) ||
                other.ratingCounts == ratingCounts) &&
            (identical(other.ratingPercentages, ratingPercentages) ||
                other.ratingPercentages == ratingPercentages) &&
            (identical(other.totalRatings, totalRatings) ||
                other.totalRatings == totalRatings) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rating, avg_rating, ratingCounts,
      ratingPercentages, totalRatings, averageRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingsImplCopyWith<_$RatingsImpl> get copyWith =>
      __$$RatingsImplCopyWithImpl<_$RatingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingsImplToJson(
      this,
    );
  }
}

abstract class _Ratings implements Ratings {
  const factory _Ratings(
      {final Rating? rating,
      final int? avg_rating,
      required final RatingCounts ratingCounts,
      required final RatingCounts ratingPercentages,
      required final int totalRatings,
      required final double averageRating}) = _$RatingsImpl;

  factory _Ratings.fromJson(Map<String, dynamic> json) = _$RatingsImpl.fromJson;

  @override
  Rating? get rating;
  @override
  int? get avg_rating;
  @override
  RatingCounts get ratingCounts;
  @override
  RatingCounts get ratingPercentages;
  @override
  int get totalRatings;
  @override // Required as it's a number
  double get averageRating;
  @override
  @JsonKey(ignore: true)
  _$$RatingsImplCopyWith<_$RatingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingComment _$RatingCommentFromJson(Map<String, dynamic> json) {
  return _RatingComment.fromJson(json);
}

/// @nodoc
mixin _$RatingComment {
  String get name => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratingstar')
  String get ratingStar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCommentCopyWith<RatingComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCommentCopyWith<$Res> {
  factory $RatingCommentCopyWith(
          RatingComment value, $Res Function(RatingComment) then) =
      _$RatingCommentCopyWithImpl<$Res, RatingComment>;
  @useResult
  $Res call(
      {String name,
      String photo,
      String comment,
      @JsonKey(name: 'ratingstar') String ratingStar});
}

/// @nodoc
class _$RatingCommentCopyWithImpl<$Res, $Val extends RatingComment>
    implements $RatingCommentCopyWith<$Res> {
  _$RatingCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photo = null,
    Object? comment = null,
    Object? ratingStar = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      ratingStar: null == ratingStar
          ? _value.ratingStar
          : ratingStar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingCommentImplCopyWith<$Res>
    implements $RatingCommentCopyWith<$Res> {
  factory _$$RatingCommentImplCopyWith(
          _$RatingCommentImpl value, $Res Function(_$RatingCommentImpl) then) =
      __$$RatingCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String photo,
      String comment,
      @JsonKey(name: 'ratingstar') String ratingStar});
}

/// @nodoc
class __$$RatingCommentImplCopyWithImpl<$Res>
    extends _$RatingCommentCopyWithImpl<$Res, _$RatingCommentImpl>
    implements _$$RatingCommentImplCopyWith<$Res> {
  __$$RatingCommentImplCopyWithImpl(
      _$RatingCommentImpl _value, $Res Function(_$RatingCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photo = null,
    Object? comment = null,
    Object? ratingStar = null,
  }) {
    return _then(_$RatingCommentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      ratingStar: null == ratingStar
          ? _value.ratingStar
          : ratingStar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingCommentImpl implements _RatingComment {
  const _$RatingCommentImpl(
      {required this.name,
      required this.photo,
      required this.comment,
      @JsonKey(name: 'ratingstar') required this.ratingStar});

  factory _$RatingCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingCommentImplFromJson(json);

  @override
  final String name;
  @override
  final String photo;
  @override
  final String comment;
  @override
  @JsonKey(name: 'ratingstar')
  final String ratingStar;

  @override
  String toString() {
    return 'RatingComment(name: $name, photo: $photo, comment: $comment, ratingStar: $ratingStar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingCommentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.ratingStar, ratingStar) ||
                other.ratingStar == ratingStar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, photo, comment, ratingStar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingCommentImplCopyWith<_$RatingCommentImpl> get copyWith =>
      __$$RatingCommentImplCopyWithImpl<_$RatingCommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingCommentImplToJson(
      this,
    );
  }
}

abstract class _RatingComment implements RatingComment {
  const factory _RatingComment(
          {required final String name,
          required final String photo,
          required final String comment,
          @JsonKey(name: 'ratingstar') required final String ratingStar}) =
      _$RatingCommentImpl;

  factory _RatingComment.fromJson(Map<String, dynamic> json) =
      _$RatingCommentImpl.fromJson;

  @override
  String get name;
  @override
  String get photo;
  @override
  String get comment;
  @override
  @JsonKey(name: 'ratingstar')
  String get ratingStar;
  @override
  @JsonKey(ignore: true)
  _$$RatingCommentImplCopyWith<_$RatingCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_comment')
  String? get replyComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'post_id') String postId,
      @JsonKey(name: 'user_id') String userId,
      String rating,
      @JsonKey(name: 'parent_id') String? parentId,
      String? comment,
      @JsonKey(name: 'reply_comment') String? replyComment,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? rating = null,
    Object? parentId = freezed,
    Object? comment = freezed,
    Object? replyComment = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      replyComment: freezed == replyComment
          ? _value.replyComment
          : replyComment // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'post_id') String postId,
      @JsonKey(name: 'user_id') String userId,
      String rating,
      @JsonKey(name: 'parent_id') String? parentId,
      String? comment,
      @JsonKey(name: 'reply_comment') String? replyComment,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? rating = null,
    Object? parentId = freezed,
    Object? comment = freezed,
    Object? replyComment = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RatingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      replyComment: freezed == replyComment
          ? _value.replyComment
          : replyComment // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$RatingImpl implements _Rating {
  const _$RatingImpl(
      {required this.id,
      @JsonKey(name: 'post_id') required this.postId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.rating,
      @JsonKey(name: 'parent_id') this.parentId,
      this.comment,
      @JsonKey(name: 'reply_comment') this.replyComment,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'post_id')
  final String postId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String rating;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'reply_comment')
  final String? replyComment;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Rating(id: $id, postId: $postId, userId: $userId, rating: $rating, parentId: $parentId, comment: $comment, replyComment: $replyComment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.replyComment, replyComment) ||
                other.replyComment == replyComment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, userId, rating,
      parentId, comment, replyComment, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {required final String id,
      @JsonKey(name: 'post_id') required final String postId,
      @JsonKey(name: 'user_id') required final String userId,
      required final String rating,
      @JsonKey(name: 'parent_id') final String? parentId,
      final String? comment,
      @JsonKey(name: 'reply_comment') final String? replyComment,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'post_id')
  String get postId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get rating;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'reply_comment')
  String? get replyComment;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostType _$PostTypeFromJson(Map<String, dynamic> json) {
  return _PostType.fromJson(json);
}

/// @nodoc
mixin _$PostType {
// required int id,
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTypeCopyWith<PostType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTypeCopyWith<$Res> {
  factory $PostTypeCopyWith(PostType value, $Res Function(PostType) then) =
      _$PostTypeCopyWithImpl<$Res, PostType>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PostTypeCopyWithImpl<$Res, $Val extends PostType>
    implements $PostTypeCopyWith<$Res> {
  _$PostTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostTypeImplCopyWith<$Res>
    implements $PostTypeCopyWith<$Res> {
  factory _$$PostTypeImplCopyWith(
          _$PostTypeImpl value, $Res Function(_$PostTypeImpl) then) =
      __$$PostTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PostTypeImplCopyWithImpl<$Res>
    extends _$PostTypeCopyWithImpl<$Res, _$PostTypeImpl>
    implements _$$PostTypeImplCopyWith<$Res> {
  __$$PostTypeImplCopyWithImpl(
      _$PostTypeImpl _value, $Res Function(_$PostTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PostTypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostTypeImpl implements _PostType {
  const _$PostTypeImpl({required this.name});

  factory _$PostTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostTypeImplFromJson(json);

// required int id,
  @override
  final String name;

  @override
  String toString() {
    return 'PostType(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostTypeImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostTypeImplCopyWith<_$PostTypeImpl> get copyWith =>
      __$$PostTypeImplCopyWithImpl<_$PostTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostTypeImplToJson(
      this,
    );
  }
}

abstract class _PostType implements PostType {
  const factory _PostType({required final String name}) = _$PostTypeImpl;

  factory _PostType.fromJson(Map<String, dynamic> json) =
      _$PostTypeImpl.fromJson;

  @override // required int id,
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PostTypeImplCopyWith<_$PostTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorUserDetail _$VendorUserDetailFromJson(Map<String, dynamic> json) {
  return _VendorUserDetail.fromJson(json);
}

/// @nodoc
mixin _$VendorUserDetail {
  String? get user_id => throw _privateConstructorUsedError;
  String? get membership_plan_id => throw _privateConstructorUsedError;
  String? get membership_status => throw _privateConstructorUsedError;
  String? get membership_id => throw _privateConstructorUsedError;
  String? get membership_title => throw _privateConstructorUsedError;
  String? get membership_color => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get storyCount => throw _privateConstructorUsedError;
  bool? get sponsored => throw _privateConstructorUsedError;
  bool? get has_sponsored_gifts => throw _privateConstructorUsedError;
  double? get shortestDistance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorUserDetailCopyWith<VendorUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorUserDetailCopyWith<$Res> {
  factory $VendorUserDetailCopyWith(
          VendorUserDetail value, $Res Function(VendorUserDetail) then) =
      _$VendorUserDetailCopyWithImpl<$Res, VendorUserDetail>;
  @useResult
  $Res call(
      {String? user_id,
      String? membership_plan_id,
      String? membership_status,
      String? membership_id,
      String? membership_title,
      String? membership_color,
      String? photo,
      String? name,
      int? storyCount,
      bool? sponsored,
      bool? has_sponsored_gifts,
      double? shortestDistance});
}

/// @nodoc
class _$VendorUserDetailCopyWithImpl<$Res, $Val extends VendorUserDetail>
    implements $VendorUserDetailCopyWith<$Res> {
  _$VendorUserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? membership_plan_id = freezed,
    Object? membership_status = freezed,
    Object? membership_id = freezed,
    Object? membership_title = freezed,
    Object? membership_color = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? storyCount = freezed,
    Object? sponsored = freezed,
    Object? has_sponsored_gifts = freezed,
    Object? shortestDistance = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_plan_id: freezed == membership_plan_id
          ? _value.membership_plan_id
          : membership_plan_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_status: freezed == membership_status
          ? _value.membership_status
          : membership_status // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_id: freezed == membership_id
          ? _value.membership_id
          : membership_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_title: freezed == membership_title
          ? _value.membership_title
          : membership_title // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_color: freezed == membership_color
          ? _value.membership_color
          : membership_color // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      has_sponsored_gifts: freezed == has_sponsored_gifts
          ? _value.has_sponsored_gifts
          : has_sponsored_gifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorUserDetailImplCopyWith<$Res>
    implements $VendorUserDetailCopyWith<$Res> {
  factory _$$VendorUserDetailImplCopyWith(_$VendorUserDetailImpl value,
          $Res Function(_$VendorUserDetailImpl) then) =
      __$$VendorUserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user_id,
      String? membership_plan_id,
      String? membership_status,
      String? membership_id,
      String? membership_title,
      String? membership_color,
      String? photo,
      String? name,
      int? storyCount,
      bool? sponsored,
      bool? has_sponsored_gifts,
      double? shortestDistance});
}

/// @nodoc
class __$$VendorUserDetailImplCopyWithImpl<$Res>
    extends _$VendorUserDetailCopyWithImpl<$Res, _$VendorUserDetailImpl>
    implements _$$VendorUserDetailImplCopyWith<$Res> {
  __$$VendorUserDetailImplCopyWithImpl(_$VendorUserDetailImpl _value,
      $Res Function(_$VendorUserDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? membership_plan_id = freezed,
    Object? membership_status = freezed,
    Object? membership_id = freezed,
    Object? membership_title = freezed,
    Object? membership_color = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? storyCount = freezed,
    Object? sponsored = freezed,
    Object? has_sponsored_gifts = freezed,
    Object? shortestDistance = freezed,
  }) {
    return _then(_$VendorUserDetailImpl(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_plan_id: freezed == membership_plan_id
          ? _value.membership_plan_id
          : membership_plan_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_status: freezed == membership_status
          ? _value.membership_status
          : membership_status // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_id: freezed == membership_id
          ? _value.membership_id
          : membership_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_title: freezed == membership_title
          ? _value.membership_title
          : membership_title // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_color: freezed == membership_color
          ? _value.membership_color
          : membership_color // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      has_sponsored_gifts: freezed == has_sponsored_gifts
          ? _value.has_sponsored_gifts
          : has_sponsored_gifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorUserDetailImpl implements _VendorUserDetail {
  const _$VendorUserDetailImpl(
      {this.user_id,
      this.membership_plan_id,
      this.membership_status,
      this.membership_id,
      this.membership_title,
      this.membership_color,
      this.photo,
      this.name,
      this.storyCount,
      this.sponsored,
      this.has_sponsored_gifts,
      this.shortestDistance});

  factory _$VendorUserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorUserDetailImplFromJson(json);

  @override
  final String? user_id;
  @override
  final String? membership_plan_id;
  @override
  final String? membership_status;
  @override
  final String? membership_id;
  @override
  final String? membership_title;
  @override
  final String? membership_color;
  @override
  final String? photo;
  @override
  final String? name;
  @override
  final int? storyCount;
  @override
  final bool? sponsored;
  @override
  final bool? has_sponsored_gifts;
  @override
  final double? shortestDistance;

  @override
  String toString() {
    return 'VendorUserDetail(user_id: $user_id, membership_plan_id: $membership_plan_id, membership_status: $membership_status, membership_id: $membership_id, membership_title: $membership_title, membership_color: $membership_color, photo: $photo, name: $name, storyCount: $storyCount, sponsored: $sponsored, has_sponsored_gifts: $has_sponsored_gifts, shortestDistance: $shortestDistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorUserDetailImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.membership_plan_id, membership_plan_id) ||
                other.membership_plan_id == membership_plan_id) &&
            (identical(other.membership_status, membership_status) ||
                other.membership_status == membership_status) &&
            (identical(other.membership_id, membership_id) ||
                other.membership_id == membership_id) &&
            (identical(other.membership_title, membership_title) ||
                other.membership_title == membership_title) &&
            (identical(other.membership_color, membership_color) ||
                other.membership_color == membership_color) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.sponsored, sponsored) ||
                other.sponsored == sponsored) &&
            (identical(other.has_sponsored_gifts, has_sponsored_gifts) ||
                other.has_sponsored_gifts == has_sponsored_gifts) &&
            (identical(other.shortestDistance, shortestDistance) ||
                other.shortestDistance == shortestDistance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user_id,
      membership_plan_id,
      membership_status,
      membership_id,
      membership_title,
      membership_color,
      photo,
      name,
      storyCount,
      sponsored,
      has_sponsored_gifts,
      shortestDistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorUserDetailImplCopyWith<_$VendorUserDetailImpl> get copyWith =>
      __$$VendorUserDetailImplCopyWithImpl<_$VendorUserDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorUserDetailImplToJson(
      this,
    );
  }
}

abstract class _VendorUserDetail implements VendorUserDetail {
  const factory _VendorUserDetail(
      {final String? user_id,
      final String? membership_plan_id,
      final String? membership_status,
      final String? membership_id,
      final String? membership_title,
      final String? membership_color,
      final String? photo,
      final String? name,
      final int? storyCount,
      final bool? sponsored,
      final bool? has_sponsored_gifts,
      final double? shortestDistance}) = _$VendorUserDetailImpl;

  factory _VendorUserDetail.fromJson(Map<String, dynamic> json) =
      _$VendorUserDetailImpl.fromJson;

  @override
  String? get user_id;
  @override
  String? get membership_plan_id;
  @override
  String? get membership_status;
  @override
  String? get membership_id;
  @override
  String? get membership_title;
  @override
  String? get membership_color;
  @override
  String? get photo;
  @override
  String? get name;
  @override
  int? get storyCount;
  @override
  bool? get sponsored;
  @override
  bool? get has_sponsored_gifts;
  @override
  double? get shortestDistance;
  @override
  @JsonKey(ignore: true)
  _$$VendorUserDetailImplCopyWith<_$VendorUserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingCounts _$RatingCountsFromJson(Map<String, dynamic> json) {
  return _RatingCounts.fromJson(json);
}

/// @nodoc
mixin _$RatingCounts {
  @JsonKey(name: '5')
  int? get five => throw _privateConstructorUsedError;
  @JsonKey(name: '4')
  int? get four => throw _privateConstructorUsedError;
  @JsonKey(name: '3')
  int? get three => throw _privateConstructorUsedError;
  @JsonKey(name: '2')
  int? get two => throw _privateConstructorUsedError;
  @JsonKey(name: '1')
  int? get one => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCountsCopyWith<RatingCounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCountsCopyWith<$Res> {
  factory $RatingCountsCopyWith(
          RatingCounts value, $Res Function(RatingCounts) then) =
      _$RatingCountsCopyWithImpl<$Res, RatingCounts>;
  @useResult
  $Res call(
      {@JsonKey(name: '5') int? five,
      @JsonKey(name: '4') int? four,
      @JsonKey(name: '3') int? three,
      @JsonKey(name: '2') int? two,
      @JsonKey(name: '1') int? one});
}

/// @nodoc
class _$RatingCountsCopyWithImpl<$Res, $Val extends RatingCounts>
    implements $RatingCountsCopyWith<$Res> {
  _$RatingCountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? five = freezed,
    Object? four = freezed,
    Object? three = freezed,
    Object? two = freezed,
    Object? one = freezed,
  }) {
    return _then(_value.copyWith(
      five: freezed == five
          ? _value.five
          : five // ignore: cast_nullable_to_non_nullable
              as int?,
      four: freezed == four
          ? _value.four
          : four // ignore: cast_nullable_to_non_nullable
              as int?,
      three: freezed == three
          ? _value.three
          : three // ignore: cast_nullable_to_non_nullable
              as int?,
      two: freezed == two
          ? _value.two
          : two // ignore: cast_nullable_to_non_nullable
              as int?,
      one: freezed == one
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingCountsImplCopyWith<$Res>
    implements $RatingCountsCopyWith<$Res> {
  factory _$$RatingCountsImplCopyWith(
          _$RatingCountsImpl value, $Res Function(_$RatingCountsImpl) then) =
      __$$RatingCountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '5') int? five,
      @JsonKey(name: '4') int? four,
      @JsonKey(name: '3') int? three,
      @JsonKey(name: '2') int? two,
      @JsonKey(name: '1') int? one});
}

/// @nodoc
class __$$RatingCountsImplCopyWithImpl<$Res>
    extends _$RatingCountsCopyWithImpl<$Res, _$RatingCountsImpl>
    implements _$$RatingCountsImplCopyWith<$Res> {
  __$$RatingCountsImplCopyWithImpl(
      _$RatingCountsImpl _value, $Res Function(_$RatingCountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? five = freezed,
    Object? four = freezed,
    Object? three = freezed,
    Object? two = freezed,
    Object? one = freezed,
  }) {
    return _then(_$RatingCountsImpl(
      five: freezed == five
          ? _value.five
          : five // ignore: cast_nullable_to_non_nullable
              as int?,
      four: freezed == four
          ? _value.four
          : four // ignore: cast_nullable_to_non_nullable
              as int?,
      three: freezed == three
          ? _value.three
          : three // ignore: cast_nullable_to_non_nullable
              as int?,
      two: freezed == two
          ? _value.two
          : two // ignore: cast_nullable_to_non_nullable
              as int?,
      one: freezed == one
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingCountsImpl implements _RatingCounts {
  const _$RatingCountsImpl(
      {@JsonKey(name: '5') required this.five,
      @JsonKey(name: '4') required this.four,
      @JsonKey(name: '3') required this.three,
      @JsonKey(name: '2') required this.two,
      @JsonKey(name: '1') required this.one});

  factory _$RatingCountsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingCountsImplFromJson(json);

  @override
  @JsonKey(name: '5')
  final int? five;
  @override
  @JsonKey(name: '4')
  final int? four;
  @override
  @JsonKey(name: '3')
  final int? three;
  @override
  @JsonKey(name: '2')
  final int? two;
  @override
  @JsonKey(name: '1')
  final int? one;

  @override
  String toString() {
    return 'RatingCounts(five: $five, four: $four, three: $three, two: $two, one: $one)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingCountsImpl &&
            (identical(other.five, five) || other.five == five) &&
            (identical(other.four, four) || other.four == four) &&
            (identical(other.three, three) || other.three == three) &&
            (identical(other.two, two) || other.two == two) &&
            (identical(other.one, one) || other.one == one));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, five, four, three, two, one);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingCountsImplCopyWith<_$RatingCountsImpl> get copyWith =>
      __$$RatingCountsImplCopyWithImpl<_$RatingCountsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingCountsImplToJson(
      this,
    );
  }
}

abstract class _RatingCounts implements RatingCounts {
  const factory _RatingCounts(
      {@JsonKey(name: '5') required final int? five,
      @JsonKey(name: '4') required final int? four,
      @JsonKey(name: '3') required final int? three,
      @JsonKey(name: '2') required final int? two,
      @JsonKey(name: '1') required final int? one}) = _$RatingCountsImpl;

  factory _RatingCounts.fromJson(Map<String, dynamic> json) =
      _$RatingCountsImpl.fromJson;

  @override
  @JsonKey(name: '5')
  int? get five;
  @override
  @JsonKey(name: '4')
  int? get four;
  @override
  @JsonKey(name: '3')
  int? get three;
  @override
  @JsonKey(name: '2')
  int? get two;
  @override
  @JsonKey(name: '1')
  int? get one;
  @override
  @JsonKey(ignore: true)
  _$$RatingCountsImplCopyWith<_$RatingCountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

usermodel _$usermodelFromJson(Map<String, dynamic> json) {
  return _usermodel.fromJson(json);
}

/// @nodoc
mixin _$usermodel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at_formatted')
  String get createdAtFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_count')
  int get storyCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $usermodelCopyWith<usermodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $usermodelCopyWith<$Res> {
  factory $usermodelCopyWith(usermodel value, $Res Function(usermodel) then) =
      _$usermodelCopyWithImpl<$Res, usermodel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      @JsonKey(name: 'created_at_formatted') String createdAtFormatted,
      @JsonKey(name: 'photo_url') String photoUrl,
      @JsonKey(name: 'story_count') int storyCount});
}

/// @nodoc
class _$usermodelCopyWithImpl<$Res, $Val extends usermodel>
    implements $usermodelCopyWith<$Res> {
  _$usermodelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? createdAtFormatted = null,
    Object? photoUrl = null,
    Object? storyCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAtFormatted: null == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$usermodelImplCopyWith<$Res>
    implements $usermodelCopyWith<$Res> {
  factory _$$usermodelImplCopyWith(
          _$usermodelImpl value, $Res Function(_$usermodelImpl) then) =
      __$$usermodelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      @JsonKey(name: 'created_at_formatted') String createdAtFormatted,
      @JsonKey(name: 'photo_url') String photoUrl,
      @JsonKey(name: 'story_count') int storyCount});
}

/// @nodoc
class __$$usermodelImplCopyWithImpl<$Res>
    extends _$usermodelCopyWithImpl<$Res, _$usermodelImpl>
    implements _$$usermodelImplCopyWith<$Res> {
  __$$usermodelImplCopyWithImpl(
      _$usermodelImpl _value, $Res Function(_$usermodelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? createdAtFormatted = null,
    Object? photoUrl = null,
    Object? storyCount = null,
  }) {
    return _then(_$usermodelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAtFormatted: null == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$usermodelImpl implements _usermodel {
  const _$usermodelImpl(
      {required this.id,
      required this.name,
      required this.username,
      @JsonKey(name: 'created_at_formatted') required this.createdAtFormatted,
      @JsonKey(name: 'photo_url') required this.photoUrl,
      @JsonKey(name: 'story_count') required this.storyCount});

  factory _$usermodelImpl.fromJson(Map<String, dynamic> json) =>
      _$$usermodelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey(name: 'created_at_formatted')
  final String createdAtFormatted;
  @override
  @JsonKey(name: 'photo_url')
  final String photoUrl;
  @override
  @JsonKey(name: 'story_count')
  final int storyCount;

  @override
  String toString() {
    return 'usermodel(id: $id, name: $name, username: $username, createdAtFormatted: $createdAtFormatted, photoUrl: $photoUrl, storyCount: $storyCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$usermodelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.createdAtFormatted, createdAtFormatted) ||
                other.createdAtFormatted == createdAtFormatted) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username,
      createdAtFormatted, photoUrl, storyCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$usermodelImplCopyWith<_$usermodelImpl> get copyWith =>
      __$$usermodelImplCopyWithImpl<_$usermodelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$usermodelImplToJson(
      this,
    );
  }
}

abstract class _usermodel implements usermodel {
  const factory _usermodel(
          {required final int id,
          required final String name,
          required final String username,
          @JsonKey(name: 'created_at_formatted')
          required final String createdAtFormatted,
          @JsonKey(name: 'photo_url') required final String photoUrl,
          @JsonKey(name: 'story_count') required final int storyCount}) =
      _$usermodelImpl;

  factory _usermodel.fromJson(Map<String, dynamic> json) =
      _$usermodelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  @JsonKey(name: 'created_at_formatted')
  String get createdAtFormatted;
  @override
  @JsonKey(name: 'photo_url')
  String get photoUrl;
  @override
  @JsonKey(name: 'story_count')
  int get storyCount;
  @override
  @JsonKey(ignore: true)
  _$$usermodelImplCopyWith<_$usermodelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailsProduct _$UserDetailsProductFromJson(Map<String, dynamic> json) {
  return _UserDetailsProduct.fromJson(json);
}

/// @nodoc
mixin _$UserDetailsProduct {
  String get name => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_photo_url')
  String get userPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool get hasSponsoredGifts => throw _privateConstructorUsedError;
  int get livePrizes => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  int get storyCount => throw _privateConstructorUsedError;
  int get subscribers => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsProductCopyWith<UserDetailsProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsProductCopyWith<$Res> {
  factory $UserDetailsProductCopyWith(
          UserDetailsProduct value, $Res Function(UserDetailsProduct) then) =
      _$UserDetailsProductCopyWithImpl<$Res, UserDetailsProduct>;
  @useResult
  $Res call(
      {String name,
      String photo,
      @JsonKey(name: 'user_photo_url') String userPhotoUrl,
      @JsonKey(name: 'has_sponsored_gifts') bool hasSponsoredGifts,
      int livePrizes,
      int productCount,
      int storyCount,
      int subscribers,
      double? distance});
}

/// @nodoc
class _$UserDetailsProductCopyWithImpl<$Res, $Val extends UserDetailsProduct>
    implements $UserDetailsProductCopyWith<$Res> {
  _$UserDetailsProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photo = null,
    Object? userPhotoUrl = null,
    Object? hasSponsoredGifts = null,
    Object? livePrizes = null,
    Object? productCount = null,
    Object? storyCount = null,
    Object? subscribers = null,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      userPhotoUrl: null == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      hasSponsoredGifts: null == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      livePrizes: null == livePrizes
          ? _value.livePrizes
          : livePrizes // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribers: null == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsProductImplCopyWith<$Res>
    implements $UserDetailsProductCopyWith<$Res> {
  factory _$$UserDetailsProductImplCopyWith(_$UserDetailsProductImpl value,
          $Res Function(_$UserDetailsProductImpl) then) =
      __$$UserDetailsProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String photo,
      @JsonKey(name: 'user_photo_url') String userPhotoUrl,
      @JsonKey(name: 'has_sponsored_gifts') bool hasSponsoredGifts,
      int livePrizes,
      int productCount,
      int storyCount,
      int subscribers,
      double? distance});
}

/// @nodoc
class __$$UserDetailsProductImplCopyWithImpl<$Res>
    extends _$UserDetailsProductCopyWithImpl<$Res, _$UserDetailsProductImpl>
    implements _$$UserDetailsProductImplCopyWith<$Res> {
  __$$UserDetailsProductImplCopyWithImpl(_$UserDetailsProductImpl _value,
      $Res Function(_$UserDetailsProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photo = null,
    Object? userPhotoUrl = null,
    Object? hasSponsoredGifts = null,
    Object? livePrizes = null,
    Object? productCount = null,
    Object? storyCount = null,
    Object? subscribers = null,
    Object? distance = freezed,
  }) {
    return _then(_$UserDetailsProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      userPhotoUrl: null == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      hasSponsoredGifts: null == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      livePrizes: null == livePrizes
          ? _value.livePrizes
          : livePrizes // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      storyCount: null == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribers: null == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsProductImpl implements _UserDetailsProduct {
  const _$UserDetailsProductImpl(
      {required this.name,
      required this.photo,
      @JsonKey(name: 'user_photo_url') required this.userPhotoUrl,
      @JsonKey(name: 'has_sponsored_gifts') required this.hasSponsoredGifts,
      required this.livePrizes,
      required this.productCount,
      required this.storyCount,
      required this.subscribers,
      this.distance});

  factory _$UserDetailsProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsProductImplFromJson(json);

  @override
  final String name;
  @override
  final String photo;
  @override
  @JsonKey(name: 'user_photo_url')
  final String userPhotoUrl;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool hasSponsoredGifts;
  @override
  final int livePrizes;
  @override
  final int productCount;
  @override
  final int storyCount;
  @override
  final int subscribers;
  @override
  final double? distance;

  @override
  String toString() {
    return 'UserDetailsProduct(name: $name, photo: $photo, userPhotoUrl: $userPhotoUrl, hasSponsoredGifts: $hasSponsoredGifts, livePrizes: $livePrizes, productCount: $productCount, storyCount: $storyCount, subscribers: $subscribers, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.userPhotoUrl, userPhotoUrl) ||
                other.userPhotoUrl == userPhotoUrl) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.livePrizes, livePrizes) ||
                other.livePrizes == livePrizes) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      photo,
      userPhotoUrl,
      hasSponsoredGifts,
      livePrizes,
      productCount,
      storyCount,
      subscribers,
      distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsProductImplCopyWith<_$UserDetailsProductImpl> get copyWith =>
      __$$UserDetailsProductImplCopyWithImpl<_$UserDetailsProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsProductImplToJson(
      this,
    );
  }
}

abstract class _UserDetailsProduct implements UserDetailsProduct {
  const factory _UserDetailsProduct(
      {required final String name,
      required final String photo,
      @JsonKey(name: 'user_photo_url') required final String userPhotoUrl,
      @JsonKey(name: 'has_sponsored_gifts')
      required final bool hasSponsoredGifts,
      required final int livePrizes,
      required final int productCount,
      required final int storyCount,
      required final int subscribers,
      final double? distance}) = _$UserDetailsProductImpl;

  factory _UserDetailsProduct.fromJson(Map<String, dynamic> json) =
      _$UserDetailsProductImpl.fromJson;

  @override
  String get name;
  @override
  String get photo;
  @override
  @JsonKey(name: 'user_photo_url')
  String get userPhotoUrl;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool get hasSponsoredGifts;
  @override
  int get livePrizes;
  @override
  int get productCount;
  @override
  int get storyCount;
  @override
  int get subscribers;
  @override
  double? get distance;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsProductImplCopyWith<_$UserDetailsProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembershipPlan _$MembershipPlanFromJson(Map<String, dynamic> json) {
  return _MembershipPlan.fromJson(json);
}

/// @nodoc
mixin _$MembershipPlan {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipPlanCopyWith<MembershipPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipPlanCopyWith<$Res> {
  factory $MembershipPlanCopyWith(
          MembershipPlan value, $Res Function(MembershipPlan) then) =
      _$MembershipPlanCopyWithImpl<$Res, MembershipPlan>;
  @useResult
  $Res call({String? id, String? title, String? color});
}

/// @nodoc
class _$MembershipPlanCopyWithImpl<$Res, $Val extends MembershipPlan>
    implements $MembershipPlanCopyWith<$Res> {
  _$MembershipPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembershipPlanImplCopyWith<$Res>
    implements $MembershipPlanCopyWith<$Res> {
  factory _$$MembershipPlanImplCopyWith(_$MembershipPlanImpl value,
          $Res Function(_$MembershipPlanImpl) then) =
      __$$MembershipPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? color});
}

/// @nodoc
class __$$MembershipPlanImplCopyWithImpl<$Res>
    extends _$MembershipPlanCopyWithImpl<$Res, _$MembershipPlanImpl>
    implements _$$MembershipPlanImplCopyWith<$Res> {
  __$$MembershipPlanImplCopyWithImpl(
      _$MembershipPlanImpl _value, $Res Function(_$MembershipPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_$MembershipPlanImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipPlanImpl implements _MembershipPlan {
  const _$MembershipPlanImpl(
      {required this.id, required this.title, required this.color});

  factory _$MembershipPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipPlanImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? color;

  @override
  String toString() {
    return 'MembershipPlan(id: $id, title: $title, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipPlanImplCopyWith<_$MembershipPlanImpl> get copyWith =>
      __$$MembershipPlanImplCopyWithImpl<_$MembershipPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipPlanImplToJson(
      this,
    );
  }
}

abstract class _MembershipPlan implements MembershipPlan {
  const factory _MembershipPlan(
      {required final String? id,
      required final String? title,
      required final String? color}) = _$MembershipPlanImpl;

  factory _MembershipPlan.fromJson(Map<String, dynamic> json) =
      _$MembershipPlanImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$MembershipPlanImplCopyWith<_$MembershipPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return _Picture.fromJson(json);
}

/// @nodoc
mixin _$Picture {
  int? get id => throw _privateConstructorUsedError;
  String? get postId => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) =
      _$PictureCopyWithImpl<$Res, Picture>;
  @useResult
  $Res call({int? id, String? postId, String? filename, String? image_url});
}

/// @nodoc
class _$PictureCopyWithImpl<$Res, $Val extends Picture>
    implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? filename = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PictureImplCopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$$PictureImplCopyWith(
          _$PictureImpl value, $Res Function(_$PictureImpl) then) =
      __$$PictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? postId, String? filename, String? image_url});
}

/// @nodoc
class __$$PictureImplCopyWithImpl<$Res>
    extends _$PictureCopyWithImpl<$Res, _$PictureImpl>
    implements _$$PictureImplCopyWith<$Res> {
  __$$PictureImplCopyWithImpl(
      _$PictureImpl _value, $Res Function(_$PictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? filename = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_$PictureImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PictureImpl implements _Picture {
  const _$PictureImpl(
      {required this.id,
      required this.postId,
      required this.filename,
      required this.image_url});

  factory _$PictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PictureImplFromJson(json);

  @override
  final int? id;
  @override
  final String? postId;
  @override
  final String? filename;
  @override
  final String? image_url;

  @override
  String toString() {
    return 'Picture(id: $id, postId: $postId, filename: $filename, image_url: $image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, filename, image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureImplCopyWith<_$PictureImpl> get copyWith =>
      __$$PictureImplCopyWithImpl<_$PictureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PictureImplToJson(
      this,
    );
  }
}

abstract class _Picture implements Picture {
  const factory _Picture(
      {required final int? id,
      required final String? postId,
      required final String? filename,
      required final String? image_url}) = _$PictureImpl;

  factory _Picture.fromJson(Map<String, dynamic> json) = _$PictureImpl.fromJson;

  @override
  int? get id;
  @override
  String? get postId;
  @override
  String? get filename;
  @override
  String? get image_url;
  @override
  @JsonKey(ignore: true)
  _$$PictureImplCopyWith<_$PictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraModel _$ExtraModelFromJson(Map<String, dynamic> json) {
  return _ExtraModel.fromJson(json);
}

/// @nodoc
mixin _$ExtraModel {
  Fields? get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraModelCopyWith<ExtraModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraModelCopyWith<$Res> {
  factory $ExtraModelCopyWith(
          ExtraModel value, $Res Function(ExtraModel) then) =
      _$ExtraModelCopyWithImpl<$Res, ExtraModel>;
  @useResult
  $Res call({Fields? fields});

  $FieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class _$ExtraModelCopyWithImpl<$Res, $Val extends ExtraModel>
    implements $ExtraModelCopyWith<$Res> {
  _$ExtraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Fields?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $FieldsCopyWith<$Res>(_value.fields!, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExtraModelImplCopyWith<$Res>
    implements $ExtraModelCopyWith<$Res> {
  factory _$$ExtraModelImplCopyWith(
          _$ExtraModelImpl value, $Res Function(_$ExtraModelImpl) then) =
      __$$ExtraModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fields? fields});

  @override
  $FieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class __$$ExtraModelImplCopyWithImpl<$Res>
    extends _$ExtraModelCopyWithImpl<$Res, _$ExtraModelImpl>
    implements _$$ExtraModelImplCopyWith<$Res> {
  __$$ExtraModelImplCopyWithImpl(
      _$ExtraModelImpl _value, $Res Function(_$ExtraModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_$ExtraModelImpl(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Fields?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraModelImpl implements _ExtraModel {
  const _$ExtraModelImpl({this.fields});

  factory _$ExtraModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraModelImplFromJson(json);

  @override
  final Fields? fields;

  @override
  String toString() {
    return 'ExtraModel(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraModelImpl &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraModelImplCopyWith<_$ExtraModelImpl> get copyWith =>
      __$$ExtraModelImplCopyWithImpl<_$ExtraModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraModelImplToJson(
      this,
    );
  }
}

abstract class _ExtraModel implements ExtraModel {
  const factory _ExtraModel({final Fields? fields}) = _$ExtraModelImpl;

  factory _ExtraModel.fromJson(Map<String, dynamic> json) =
      _$ExtraModelImpl.fromJson;

  @override
  Fields? get fields;
  @override
  @JsonKey(ignore: true)
  _$$ExtraModelImplCopyWith<_$ExtraModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;
  Original? get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsCopyWith<Fields> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsCopyWith<$Res> {
  factory $FieldsCopyWith(Fields value, $Res Function(Fields) then) =
      _$FieldsCopyWithImpl<$Res, Fields>;
  @useResult
  $Res call({Map<String, dynamic>? headers, Original? original});

  $OriginalCopyWith<$Res>? get original;
}

/// @nodoc
class _$FieldsCopyWithImpl<$Res, $Val extends Fields>
    implements $FieldsCopyWith<$Res> {
  _$FieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? original = freezed,
  }) {
    return _then(_value.copyWith(
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as Original?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OriginalCopyWith<$Res>? get original {
    if (_value.original == null) {
      return null;
    }

    return $OriginalCopyWith<$Res>(_value.original!, (value) {
      return _then(_value.copyWith(original: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldsImplCopyWith<$Res> implements $FieldsCopyWith<$Res> {
  factory _$$FieldsImplCopyWith(
          _$FieldsImpl value, $Res Function(_$FieldsImpl) then) =
      __$$FieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? headers, Original? original});

  @override
  $OriginalCopyWith<$Res>? get original;
}

/// @nodoc
class __$$FieldsImplCopyWithImpl<$Res>
    extends _$FieldsCopyWithImpl<$Res, _$FieldsImpl>
    implements _$$FieldsImplCopyWith<$Res> {
  __$$FieldsImplCopyWithImpl(
      _$FieldsImpl _value, $Res Function(_$FieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? original = freezed,
  }) {
    return _then(_$FieldsImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as Original?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({final Map<String, dynamic>? headers, this.original})
      : _headers = headers;

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  final Map<String, dynamic>? _headers;
  @override
  Map<String, dynamic>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Original? original;

  @override
  String toString() {
    return 'Fields(headers: $headers, original: $original)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_headers), original);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      __$$FieldsImplCopyWithImpl<_$FieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldsImplToJson(
      this,
    );
  }
}

abstract class _Fields implements Fields {
  const factory _Fields(
      {final Map<String, dynamic>? headers,
      final Original? original}) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  Map<String, dynamic>? get headers;
  @override
  Original? get original;
  @override
  @JsonKey(ignore: true)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Original _$OriginalFromJson(Map<String, dynamic> json) {
  return _Original.fromJson(json);
}

/// @nodoc
mixin _$Original {
// required bool success,
  String? get message => throw _privateConstructorUsedError;
  List<FieldDetails>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginalCopyWith<Original> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginalCopyWith<$Res> {
  factory $OriginalCopyWith(Original value, $Res Function(Original) then) =
      _$OriginalCopyWithImpl<$Res, Original>;
  @useResult
  $Res call({String? message, List<FieldDetails>? result});
}

/// @nodoc
class _$OriginalCopyWithImpl<$Res, $Val extends Original>
    implements $OriginalCopyWith<$Res> {
  _$OriginalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FieldDetails>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OriginalImplCopyWith<$Res>
    implements $OriginalCopyWith<$Res> {
  factory _$$OriginalImplCopyWith(
          _$OriginalImpl value, $Res Function(_$OriginalImpl) then) =
      __$$OriginalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<FieldDetails>? result});
}

/// @nodoc
class __$$OriginalImplCopyWithImpl<$Res>
    extends _$OriginalCopyWithImpl<$Res, _$OriginalImpl>
    implements _$$OriginalImplCopyWith<$Res> {
  __$$OriginalImplCopyWithImpl(
      _$OriginalImpl _value, $Res Function(_$OriginalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$OriginalImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FieldDetails>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OriginalImpl implements _Original {
  const _$OriginalImpl({this.message, final List<FieldDetails>? result})
      : _result = result;

  factory _$OriginalImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginalImplFromJson(json);

// required bool success,
  @override
  final String? message;
  final List<FieldDetails>? _result;
  @override
  List<FieldDetails>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Original(message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginalImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginalImplCopyWith<_$OriginalImpl> get copyWith =>
      __$$OriginalImplCopyWithImpl<_$OriginalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginalImplToJson(
      this,
    );
  }
}

abstract class _Original implements Original {
  const factory _Original(
      {final String? message,
      final List<FieldDetails>? result}) = _$OriginalImpl;

  factory _Original.fromJson(Map<String, dynamic> json) =
      _$OriginalImpl.fromJson;

  @override // required bool success,
  String? get message;
  @override
  List<FieldDetails>? get result;
  @override
  @JsonKey(ignore: true)
  _$$OriginalImplCopyWith<_$OriginalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldDetails _$FieldDetailsFromJson(Map<String, dynamic> json) {
  return _FieldDetails.fromJson(json);
}

/// @nodoc
mixin _$FieldDetails {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to')
  String? get belongsTo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_value')
  @DefaultValueConverter()
  dynamic get defaultValue =>
      throw _privateConstructorUsedError; // Can be String or JSON
  String? get required => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_as_filter')
  String? get useAsFilter => throw _privateConstructorUsedError;
  List<FieldOption>? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldDetailsCopyWith<FieldDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldDetailsCopyWith<$Res> {
  factory $FieldDetailsCopyWith(
          FieldDetails value, $Res Function(FieldDetails) then) =
      _$FieldDetailsCopyWithImpl<$Res, FieldDetails>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'belongs_to') String? belongsTo,
      String? name,
      String? type,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      dynamic defaultValue,
      String? required,
      @JsonKey(name: 'use_as_filter') String? useAsFilter,
      List<FieldOption>? options});
}

/// @nodoc
class _$FieldDetailsCopyWithImpl<$Res, $Val extends FieldDetails>
    implements $FieldDetailsCopyWith<$Res> {
  _$FieldDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? belongsTo = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? defaultValue = freezed,
    Object? required = freezed,
    Object? useAsFilter = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      belongsTo: freezed == belongsTo
          ? _value.belongsTo
          : belongsTo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as String?,
      useAsFilter: freezed == useAsFilter
          ? _value.useAsFilter
          : useAsFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<FieldOption>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldDetailsImplCopyWith<$Res>
    implements $FieldDetailsCopyWith<$Res> {
  factory _$$FieldDetailsImplCopyWith(
          _$FieldDetailsImpl value, $Res Function(_$FieldDetailsImpl) then) =
      __$$FieldDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'belongs_to') String? belongsTo,
      String? name,
      String? type,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      dynamic defaultValue,
      String? required,
      @JsonKey(name: 'use_as_filter') String? useAsFilter,
      List<FieldOption>? options});
}

/// @nodoc
class __$$FieldDetailsImplCopyWithImpl<$Res>
    extends _$FieldDetailsCopyWithImpl<$Res, _$FieldDetailsImpl>
    implements _$$FieldDetailsImplCopyWith<$Res> {
  __$$FieldDetailsImplCopyWithImpl(
      _$FieldDetailsImpl _value, $Res Function(_$FieldDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? belongsTo = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? defaultValue = freezed,
    Object? required = freezed,
    Object? useAsFilter = freezed,
    Object? options = freezed,
  }) {
    return _then(_$FieldDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      belongsTo: freezed == belongsTo
          ? _value.belongsTo
          : belongsTo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as String?,
      useAsFilter: freezed == useAsFilter
          ? _value.useAsFilter
          : useAsFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<FieldOption>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldDetailsImpl implements _FieldDetails {
  const _$FieldDetailsImpl(
      {this.id,
      @JsonKey(name: 'belongs_to') this.belongsTo,
      this.name,
      this.type,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      this.defaultValue,
      this.required,
      @JsonKey(name: 'use_as_filter') this.useAsFilter,
      final List<FieldOption>? options})
      : _options = options;

  factory _$FieldDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldDetailsImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'belongs_to')
  final String? belongsTo;
  @override
  final String? name;
  @override
  final String? type;
  @override
  @JsonKey(name: 'default_value')
  @DefaultValueConverter()
  final dynamic defaultValue;
// Can be String or JSON
  @override
  final String? required;
  @override
  @JsonKey(name: 'use_as_filter')
  final String? useAsFilter;
  final List<FieldOption>? _options;
  @override
  List<FieldOption>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FieldDetails(id: $id, belongsTo: $belongsTo, name: $name, type: $type, defaultValue: $defaultValue, required: $required, useAsFilter: $useAsFilter, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.belongsTo, belongsTo) ||
                other.belongsTo == belongsTo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.useAsFilter, useAsFilter) ||
                other.useAsFilter == useAsFilter) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      belongsTo,
      name,
      type,
      const DeepCollectionEquality().hash(defaultValue),
      required,
      useAsFilter,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldDetailsImplCopyWith<_$FieldDetailsImpl> get copyWith =>
      __$$FieldDetailsImplCopyWithImpl<_$FieldDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldDetailsImplToJson(
      this,
    );
  }
}

abstract class _FieldDetails implements FieldDetails {
  const factory _FieldDetails(
      {final int? id,
      @JsonKey(name: 'belongs_to') final String? belongsTo,
      final String? name,
      final String? type,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      final dynamic defaultValue,
      final String? required,
      @JsonKey(name: 'use_as_filter') final String? useAsFilter,
      final List<FieldOption>? options}) = _$FieldDetailsImpl;

  factory _FieldDetails.fromJson(Map<String, dynamic> json) =
      _$FieldDetailsImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'belongs_to')
  String? get belongsTo;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(name: 'default_value')
  @DefaultValueConverter()
  dynamic get defaultValue;
  @override // Can be String or JSON
  String? get required;
  @override
  @JsonKey(name: 'use_as_filter')
  String? get useAsFilter;
  @override
  List<FieldOption>? get options;
  @override
  @JsonKey(ignore: true)
  _$$FieldDetailsImplCopyWith<_$FieldDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldOption _$FieldOptionFromJson(Map<String, dynamic> json) {
  return _FieldOption.fromJson(json);
}

/// @nodoc
mixin _$FieldOption {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_id')
  String? get fieldId => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldOptionCopyWith<FieldOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldOptionCopyWith<$Res> {
  factory $FieldOptionCopyWith(
          FieldOption value, $Res Function(FieldOption) then) =
      _$FieldOptionCopyWithImpl<$Res, FieldOption>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'field_id') String? fieldId,
      String? value,
      @JsonKey(name: 'parent_id') String? parentId});
}

/// @nodoc
class _$FieldOptionCopyWithImpl<$Res, $Val extends FieldOption>
    implements $FieldOptionCopyWith<$Res> {
  _$FieldOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fieldId = freezed,
    Object? value = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldOptionImplCopyWith<$Res>
    implements $FieldOptionCopyWith<$Res> {
  factory _$$FieldOptionImplCopyWith(
          _$FieldOptionImpl value, $Res Function(_$FieldOptionImpl) then) =
      __$$FieldOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'field_id') String? fieldId,
      String? value,
      @JsonKey(name: 'parent_id') String? parentId});
}

/// @nodoc
class __$$FieldOptionImplCopyWithImpl<$Res>
    extends _$FieldOptionCopyWithImpl<$Res, _$FieldOptionImpl>
    implements _$$FieldOptionImplCopyWith<$Res> {
  __$$FieldOptionImplCopyWithImpl(
      _$FieldOptionImpl _value, $Res Function(_$FieldOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fieldId = freezed,
    Object? value = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_$FieldOptionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldOptionImpl implements _FieldOption {
  const _$FieldOptionImpl(
      {this.id,
      @JsonKey(name: 'field_id') this.fieldId,
      this.value,
      @JsonKey(name: 'parent_id') this.parentId});

  factory _$FieldOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldOptionImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'field_id')
  final String? fieldId;
  @override
  final String? value;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;

  @override
  String toString() {
    return 'FieldOption(id: $id, fieldId: $fieldId, value: $value, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fieldId, value, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldOptionImplCopyWith<_$FieldOptionImpl> get copyWith =>
      __$$FieldOptionImplCopyWithImpl<_$FieldOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldOptionImplToJson(
      this,
    );
  }
}

abstract class _FieldOption implements FieldOption {
  const factory _FieldOption(
      {final int? id,
      @JsonKey(name: 'field_id') final String? fieldId,
      final String? value,
      @JsonKey(name: 'parent_id') final String? parentId}) = _$FieldOptionImpl;

  factory _FieldOption.fromJson(Map<String, dynamic> json) =
      _$FieldOptionImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'field_id')
  String? get fieldId;
  @override
  String? get value;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$FieldOptionImplCopyWith<_$FieldOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
// int? id,
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
          ColorOption value, $Res Function(ColorOption) then) =
      _$ColorOptionCopyWithImpl<$Res, ColorOption>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res, $Val extends ColorOption>
    implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorOptionImplCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$ColorOptionImplCopyWith(
          _$ColorOptionImpl value, $Res Function(_$ColorOptionImpl) then) =
      __$$ColorOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$ColorOptionImplCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$ColorOptionImpl>
    implements _$$ColorOptionImplCopyWith<$Res> {
  __$$ColorOptionImplCopyWithImpl(
      _$ColorOptionImpl _value, $Res Function(_$ColorOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ColorOptionImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorOptionImpl implements _ColorOption {
  const _$ColorOptionImpl({this.value});

  factory _$ColorOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorOptionImplFromJson(json);

// int? id,
  @override
  final String? value;

  @override
  String toString() {
    return 'ColorOption(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorOptionImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      __$$ColorOptionImplCopyWithImpl<_$ColorOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorOptionImplToJson(
      this,
    );
  }
}

abstract class _ColorOption implements ColorOption {
  const factory _ColorOption({final String? value}) = _$ColorOptionImpl;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$ColorOptionImpl.fromJson;

  @override // int? id,
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableColor _$AvailableColorFromJson(Map<String, dynamic> json) {
  return _AvailableColor.fromJson(json);
}

/// @nodoc
mixin _$AvailableColor {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<Option>? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableColorCopyWith<AvailableColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableColorCopyWith<$Res> {
  factory $AvailableColorCopyWith(
          AvailableColor value, $Res Function(AvailableColor) then) =
      _$AvailableColorCopyWithImpl<$Res, AvailableColor>;
  @useResult
  $Res call({String name, String type, List<Option>? options});
}

/// @nodoc
class _$AvailableColorCopyWithImpl<$Res, $Val extends AvailableColor>
    implements $AvailableColorCopyWith<$Res> {
  _$AvailableColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableColorImplCopyWith<$Res>
    implements $AvailableColorCopyWith<$Res> {
  factory _$$AvailableColorImplCopyWith(_$AvailableColorImpl value,
          $Res Function(_$AvailableColorImpl) then) =
      __$$AvailableColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type, List<Option>? options});
}

/// @nodoc
class __$$AvailableColorImplCopyWithImpl<$Res>
    extends _$AvailableColorCopyWithImpl<$Res, _$AvailableColorImpl>
    implements _$$AvailableColorImplCopyWith<$Res> {
  __$$AvailableColorImplCopyWithImpl(
      _$AvailableColorImpl _value, $Res Function(_$AvailableColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? options = freezed,
  }) {
    return _then(_$AvailableColorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableColorImpl implements _AvailableColor {
  const _$AvailableColorImpl(
      {required this.name, required this.type, final List<Option>? options})
      : _options = options;

  factory _$AvailableColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableColorImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  final List<Option>? _options;
  @override
  List<Option>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AvailableColor(name: $name, type: $type, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableColorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, type, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableColorImplCopyWith<_$AvailableColorImpl> get copyWith =>
      __$$AvailableColorImplCopyWithImpl<_$AvailableColorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableColorImplToJson(
      this,
    );
  }
}

abstract class _AvailableColor implements AvailableColor {
  const factory _AvailableColor(
      {required final String name,
      required final String type,
      final List<Option>? options}) = _$AvailableColorImpl;

  factory _AvailableColor.fromJson(Map<String, dynamic> json) =
      _$AvailableColorImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  List<Option>? get options;
  @override
  @JsonKey(ignore: true)
  _$$AvailableColorImplCopyWith<_$AvailableColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimilarItems _$SimilarItemsFromJson(Map<String, dynamic> json) {
  return _SimilarItems.fromJson(json);
}

/// @nodoc
mixin _$SimilarItems {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  List<Picture>? get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimilarItemsCopyWith<SimilarItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarItemsCopyWith<$Res> {
  factory $SimilarItemsCopyWith(
          SimilarItems value, $Res Function(SimilarItems) then) =
      _$SimilarItemsCopyWithImpl<$Res, SimilarItems>;
  @useResult
  $Res call({int? id, String? title, String? price, List<Picture>? pictures});
}

/// @nodoc
class _$SimilarItemsCopyWithImpl<$Res, $Val extends SimilarItems>
    implements $SimilarItemsCopyWith<$Res> {
  _$SimilarItemsCopyWithImpl(this._value, this._then);

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
    Object? pictures = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimilarItemsImplCopyWith<$Res>
    implements $SimilarItemsCopyWith<$Res> {
  factory _$$SimilarItemsImplCopyWith(
          _$SimilarItemsImpl value, $Res Function(_$SimilarItemsImpl) then) =
      __$$SimilarItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? price, List<Picture>? pictures});
}

/// @nodoc
class __$$SimilarItemsImplCopyWithImpl<$Res>
    extends _$SimilarItemsCopyWithImpl<$Res, _$SimilarItemsImpl>
    implements _$$SimilarItemsImplCopyWith<$Res> {
  __$$SimilarItemsImplCopyWithImpl(
      _$SimilarItemsImpl _value, $Res Function(_$SimilarItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? pictures = freezed,
  }) {
    return _then(_$SimilarItemsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      pictures: freezed == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimilarItemsImpl implements _SimilarItems {
  const _$SimilarItemsImpl(
      {this.id, this.title, this.price, final List<Picture>? pictures})
      : _pictures = pictures;

  factory _$SimilarItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimilarItemsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? price;
  final List<Picture>? _pictures;
  @override
  List<Picture>? get pictures {
    final value = _pictures;
    if (value == null) return null;
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SimilarItems(id: $id, title: $title, price: $price, pictures: $pictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarItemsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price,
      const DeepCollectionEquality().hash(_pictures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarItemsImplCopyWith<_$SimilarItemsImpl> get copyWith =>
      __$$SimilarItemsImplCopyWithImpl<_$SimilarItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimilarItemsImplToJson(
      this,
    );
  }
}

abstract class _SimilarItems implements SimilarItems {
  const factory _SimilarItems(
      {final int? id,
      final String? title,
      final String? price,
      final List<Picture>? pictures}) = _$SimilarItemsImpl;

  factory _SimilarItems.fromJson(Map<String, dynamic> json) =
      _$SimilarItemsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get price;
  @override
  List<Picture>? get pictures;
  @override
  @JsonKey(ignore: true)
  _$$SimilarItemsImplCopyWith<_$SimilarItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  @JsonKey(name: 'field_id')
  String? get fieldId => throw _privateConstructorUsedError;
  String? get value =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'parent_id') required String? parentId,
  String? get depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call(
      {@JsonKey(name: 'field_id') String? fieldId,
      String? value,
      String? depth});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = freezed,
    Object? value = freezed,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionImplCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$OptionImplCopyWith(
          _$OptionImpl value, $Res Function(_$OptionImpl) then) =
      __$$OptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'field_id') String? fieldId,
      String? value,
      String? depth});
}

/// @nodoc
class __$$OptionImplCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$OptionImpl>
    implements _$$OptionImplCopyWith<$Res> {
  __$$OptionImplCopyWithImpl(
      _$OptionImpl _value, $Res Function(_$OptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = freezed,
    Object? value = freezed,
    Object? depth = freezed,
  }) {
    return _then(_$OptionImpl(
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionImpl implements _Option {
  const _$OptionImpl(
      {@JsonKey(name: 'field_id') required this.fieldId,
      required this.value,
      required this.depth});

  factory _$OptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionImplFromJson(json);

  @override
  @JsonKey(name: 'field_id')
  final String? fieldId;
  @override
  final String? value;
// @JsonKey(name: 'parent_id') required String? parentId,
  @override
  final String? depth;

  @override
  String toString() {
    return 'Option(fieldId: $fieldId, value: $value, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionImpl &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fieldId, value, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      __$$OptionImplCopyWithImpl<_$OptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionImplToJson(
      this,
    );
  }
}

abstract class _Option implements Option {
  const factory _Option(
      {@JsonKey(name: 'field_id') required final String? fieldId,
      required final String? value,
      required final String? depth}) = _$OptionImpl;

  factory _Option.fromJson(Map<String, dynamic> json) = _$OptionImpl.fromJson;

  @override
  @JsonKey(name: 'field_id')
  String? get fieldId;
  @override
  String? get value;
  @override // @JsonKey(name: 'parent_id') required String? parentId,
  String? get depth;
  @override
  @JsonKey(ignore: true)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
