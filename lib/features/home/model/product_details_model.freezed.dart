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

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, result, extra, widgetSimilarPosts);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  PostPagination get posts => throw _privateConstructorUsedError;

  /// Serializes this WidgetSimilarPosts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WidgetSimilarPosts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WidgetSimilarPostsCopyWith<WidgetSimilarPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetSimilarPostsCopyWith<$Res> {
  factory $WidgetSimilarPostsCopyWith(
          WidgetSimilarPosts value, $Res Function(WidgetSimilarPosts) then) =
      _$WidgetSimilarPostsCopyWithImpl<$Res, WidgetSimilarPosts>;
  @useResult
  $Res call({PostPagination posts});

  $PostPaginationCopyWith<$Res> get posts;
}

/// @nodoc
class _$WidgetSimilarPostsCopyWithImpl<$Res, $Val extends WidgetSimilarPosts>
    implements $WidgetSimilarPostsCopyWith<$Res> {
  _$WidgetSimilarPostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WidgetSimilarPosts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostPagination,
    ) as $Val);
  }

  /// Create a copy of WidgetSimilarPosts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostPaginationCopyWith<$Res> get posts {
    return $PostPaginationCopyWith<$Res>(_value.posts, (value) {
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
  $Res call({PostPagination posts});

  @override
  $PostPaginationCopyWith<$Res> get posts;
}

/// @nodoc
class __$$WidgetSimilarPostsImplCopyWithImpl<$Res>
    extends _$WidgetSimilarPostsCopyWithImpl<$Res, _$WidgetSimilarPostsImpl>
    implements _$$WidgetSimilarPostsImplCopyWith<$Res> {
  __$$WidgetSimilarPostsImplCopyWithImpl(_$WidgetSimilarPostsImpl _value,
      $Res Function(_$WidgetSimilarPostsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WidgetSimilarPosts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$WidgetSimilarPostsImpl(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostPagination,
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
  final PostPagination posts;

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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, posts);

  /// Create a copy of WidgetSimilarPosts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _WidgetSimilarPosts({required final PostPagination posts}) =
      _$WidgetSimilarPostsImpl;

  factory _WidgetSimilarPosts.fromJson(Map<String, dynamic> json) =
      _$WidgetSimilarPostsImpl.fromJson;

// required String title,
// required String link,
  @override
  PostPagination get posts;

  /// Create a copy of WidgetSimilarPosts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this PostPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PostPagination
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostPagination
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_page, const DeepCollectionEquality().hash(_data));

  /// Create a copy of PostPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PostPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPaginationImplCopyWith<_$PostPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostResult _$PostResultFromJson(Map<String, dynamic> json) {
  return _PostResult.fromJson(json);
}

/// @nodoc
mixin _$PostResult {
  int? get id => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get postTypeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get discountedPrice => throw _privateConstructorUsedError;
  String? get trending => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  String get user_photo_url => throw _privateConstructorUsedError;
  String? get minOrder => throw _privateConstructorUsedError;
  String? get sampPrice => throw _privateConstructorUsedError;
  String? get textOne => throw _privateConstructorUsedError;
  String? get textTwo => throw _privateConstructorUsedError;
  String? get avaTo => throw _privateConstructorUsedError;
  String? get negotiable => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get phoneHidden => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get cityId => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  String? get ipAddr => throw _privateConstructorUsedError;
  String? get length => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get hyperDel => throw _privateConstructorUsedError;
  String? get sellerDel => throw _privateConstructorUsedError;
  String? get acceptTerms => throw _privateConstructorUsedError;
  String? get acceptMarketingOffers => throw _privateConstructorUsedError;
  String? get isPermanent => throw _privateConstructorUsedError;
  String? get reviewed => throw _privateConstructorUsedError;
  String? get featured => throw _privateConstructorUsedError;
  String? get archived => throw _privateConstructorUsedError;
  String? get archivedAt => throw _privateConstructorUsedError;
  String? get deletionMailSentAt => throw _privateConstructorUsedError;
  String? get fbProfile => throw _privateConstructorUsedError;
  String? get partner => throw _privateConstructorUsedError;
  String? get b2bPricing => throw _privateConstructorUsedError;
  String? get offer => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get createdAtFormatted => throw _privateConstructorUsedError;
  String? get userPhotoUrl => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  ExtraModel? get extra => throw _privateConstructorUsedError;
  Ratings? get ratings => throw _privateConstructorUsedError;
  usermodel? get user => throw _privateConstructorUsedError;
  UserDetailsProduct? get user_details => throw _privateConstructorUsedError;
  List<Picture>? get pictures => throw _privateConstructorUsedError;
  PostType? get postType => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  List<RatingComment> get rating_comment => throw _privateConstructorUsedError;
  List<LivePrize> get live_prizes => throw _privateConstructorUsedError;
  List<Shop>? get deals => throw _privateConstructorUsedError;
  List<Shop>? get shop => throw _privateConstructorUsedError;
  List<FeedPost>? get feed_post => throw _privateConstructorUsedError;

  /// Serializes this PostResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      String? countryCode,
      String? userId,
      String? categoryId,
      String? postTypeId,
      String? title,
      String? description,
      List<String>? tags,
      String? price,
      String? discountedPrice,
      String? trending,
      String? stock,
      String user_photo_url,
      String? minOrder,
      String? sampPrice,
      String? textOne,
      String? textTwo,
      String? avaTo,
      String? negotiable,
      String? contactName,
      String? email,
      String? phone,
      String? phoneHidden,
      String? address,
      String? cityId,
      String? lat,
      String? lon,
      String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      String? hyperDel,
      String? sellerDel,
      String? acceptTerms,
      String? acceptMarketingOffers,
      String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? archivedAt,
      String? deletionMailSentAt,
      String? fbProfile,
      String? partner,
      String? b2bPricing,
      String? offer,
      String? wow,
      String? sku,
      String? createdAt,
      String? updatedAt,
      String? slug,
      String? createdAtFormatted,
      String? userPhotoUrl,
      int? commentCount,
      ExtraModel? extra,
      Ratings? ratings,
      usermodel? user,
      UserDetailsProduct? user_details,
      List<Picture>? pictures,
      PostType? postType,
      City? city,
      List<RatingComment> rating_comment,
      List<LivePrize> live_prizes,
      List<Shop>? deals,
      List<Shop>? shop,
      List<FeedPost>? feed_post});

  $ExtraModelCopyWith<$Res>? get extra;
  $RatingsCopyWith<$Res>? get ratings;
  $usermodelCopyWith<$Res>? get user;
  $UserDetailsProductCopyWith<$Res>? get user_details;
  $PostTypeCopyWith<$Res>? get postType;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$PostResultCopyWithImpl<$Res, $Val extends PostResult>
    implements $PostResultCopyWith<$Res> {
  _$PostResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
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
    Object? user_photo_url = null,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
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
    Object? archivedAt = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? b2bPricing = freezed,
    Object? offer = freezed,
    Object? wow = freezed,
    Object? sku = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
    Object? createdAtFormatted = freezed,
    Object? userPhotoUrl = freezed,
    Object? commentCount = freezed,
    Object? extra = freezed,
    Object? ratings = freezed,
    Object? user = freezed,
    Object? user_details = freezed,
    Object? pictures = freezed,
    Object? postType = freezed,
    Object? city = freezed,
    Object? rating_comment = null,
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
      user_photo_url: null == user_photo_url
          ? _value.user_photo_url
          : user_photo_url // ignore: cast_nullable_to_non_nullable
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
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
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
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as usermodel?,
      user_details: freezed == user_details
          ? _value.user_details
          : user_details // ignore: cast_nullable_to_non_nullable
              as UserDetailsProduct?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>?,
      postType: freezed == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      rating_comment: null == rating_comment
          ? _value.rating_comment
          : rating_comment // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailsProductCopyWith<$Res>? get user_details {
    if (_value.user_details == null) {
      return null;
    }

    return $UserDetailsProductCopyWith<$Res>(_value.user_details!, (value) {
      return _then(_value.copyWith(user_details: value) as $Val);
    });
  }

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
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
      String? countryCode,
      String? userId,
      String? categoryId,
      String? postTypeId,
      String? title,
      String? description,
      List<String>? tags,
      String? price,
      String? discountedPrice,
      String? trending,
      String? stock,
      String user_photo_url,
      String? minOrder,
      String? sampPrice,
      String? textOne,
      String? textTwo,
      String? avaTo,
      String? negotiable,
      String? contactName,
      String? email,
      String? phone,
      String? phoneHidden,
      String? address,
      String? cityId,
      String? lat,
      String? lon,
      String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      String? hyperDel,
      String? sellerDel,
      String? acceptTerms,
      String? acceptMarketingOffers,
      String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? archivedAt,
      String? deletionMailSentAt,
      String? fbProfile,
      String? partner,
      String? b2bPricing,
      String? offer,
      String? wow,
      String? sku,
      String? createdAt,
      String? updatedAt,
      String? slug,
      String? createdAtFormatted,
      String? userPhotoUrl,
      int? commentCount,
      ExtraModel? extra,
      Ratings? ratings,
      usermodel? user,
      UserDetailsProduct? user_details,
      List<Picture>? pictures,
      PostType? postType,
      City? city,
      List<RatingComment> rating_comment,
      List<LivePrize> live_prizes,
      List<Shop>? deals,
      List<Shop>? shop,
      List<FeedPost>? feed_post});

  @override
  $ExtraModelCopyWith<$Res>? get extra;
  @override
  $RatingsCopyWith<$Res>? get ratings;
  @override
  $usermodelCopyWith<$Res>? get user;
  @override
  $UserDetailsProductCopyWith<$Res>? get user_details;
  @override
  $PostTypeCopyWith<$Res>? get postType;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$PostResultImplCopyWithImpl<$Res>
    extends _$PostResultCopyWithImpl<$Res, _$PostResultImpl>
    implements _$$PostResultImplCopyWith<$Res> {
  __$$PostResultImplCopyWithImpl(
      _$PostResultImpl _value, $Res Function(_$PostResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
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
    Object? user_photo_url = null,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
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
    Object? archivedAt = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? b2bPricing = freezed,
    Object? offer = freezed,
    Object? wow = freezed,
    Object? sku = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
    Object? createdAtFormatted = freezed,
    Object? userPhotoUrl = freezed,
    Object? commentCount = freezed,
    Object? extra = freezed,
    Object? ratings = freezed,
    Object? user = freezed,
    Object? user_details = freezed,
    Object? pictures = freezed,
    Object? postType = freezed,
    Object? city = freezed,
    Object? rating_comment = null,
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
      user_photo_url: null == user_photo_url
          ? _value.user_photo_url
          : user_photo_url // ignore: cast_nullable_to_non_nullable
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
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
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
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as usermodel?,
      user_details: freezed == user_details
          ? _value.user_details
          : user_details // ignore: cast_nullable_to_non_nullable
              as UserDetailsProduct?,
      pictures: freezed == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>?,
      postType: freezed == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      rating_comment: null == rating_comment
          ? _value._rating_comment
          : rating_comment // ignore: cast_nullable_to_non_nullable
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
      required this.countryCode,
      required this.userId,
      required this.categoryId,
      required this.postTypeId,
      required this.title,
      required this.description,
      required final List<String>? tags,
      required this.price,
      this.discountedPrice,
      required this.trending,
      required this.stock,
      required this.user_photo_url,
      this.minOrder,
      this.sampPrice,
      this.textOne,
      this.textTwo,
      this.avaTo,
      this.negotiable,
      required this.contactName,
      required this.email,
      required this.phone,
      this.phoneHidden,
      this.address,
      required this.cityId,
      required this.lat,
      required this.lon,
      required this.ipAddr,
      required this.length,
      required this.width,
      required this.weight,
      required this.height,
      required this.pickup,
      required this.longitude,
      required this.latitude,
      required this.hyperDel,
      this.sellerDel,
      required this.acceptTerms,
      required this.acceptMarketingOffers,
      required this.isPermanent,
      required this.reviewed,
      required this.featured,
      required this.archived,
      required this.archivedAt,
      this.deletionMailSentAt,
      this.fbProfile,
      this.partner,
      this.b2bPricing,
      this.offer,
      this.wow,
      this.sku,
      required this.createdAt,
      required this.updatedAt,
      required this.slug,
      required this.createdAtFormatted,
      required this.userPhotoUrl,
      required this.commentCount,
      required this.extra,
      this.ratings,
      this.user,
      required this.user_details,
      required final List<Picture>? pictures,
      this.postType,
      this.city,
      required final List<RatingComment> rating_comment,
      final List<LivePrize> live_prizes = const [],
      final List<Shop>? deals = const [],
      final List<Shop>? shop = const [],
      final List<FeedPost>? feed_post = const []})
      : _tags = tags,
        _pictures = pictures,
        _rating_comment = rating_comment,
        _live_prizes = live_prizes,
        _deals = deals,
        _shop = shop,
        _feed_post = feed_post;

  factory _$PostResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostResultImplFromJson(json);

  @override
  final int? id;
  @override
  final String? countryCode;
  @override
  final String? userId;
  @override
  final String? categoryId;
  @override
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
  final String? discountedPrice;
  @override
  final String? trending;
  @override
  final String? stock;
  @override
  final String user_photo_url;
  @override
  final String? minOrder;
  @override
  final String? sampPrice;
  @override
  final String? textOne;
  @override
  final String? textTwo;
  @override
  final String? avaTo;
  @override
  final String? negotiable;
  @override
  final String? contactName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? phoneHidden;
  @override
  final String? address;
  @override
  final String? cityId;
  @override
  final String? lat;
  @override
  final String? lon;
  @override
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
  final String? hyperDel;
  @override
  final String? sellerDel;
  @override
  final String? acceptTerms;
  @override
  final String? acceptMarketingOffers;
  @override
  final String? isPermanent;
  @override
  final String? reviewed;
  @override
  final String? featured;
  @override
  final String? archived;
  @override
  final String? archivedAt;
  @override
  final String? deletionMailSentAt;
  @override
  final String? fbProfile;
  @override
  final String? partner;
  @override
  final String? b2bPricing;
  @override
  final String? offer;
  @override
  final String? wow;
  @override
  final String? sku;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? slug;
  @override
  final String? createdAtFormatted;
  @override
  final String? userPhotoUrl;
  @override
  final int? commentCount;
  @override
  final ExtraModel? extra;
  @override
  final Ratings? ratings;
  @override
  final usermodel? user;
  @override
  final UserDetailsProduct? user_details;
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
  final PostType? postType;
  @override
  final City? city;
  final List<RatingComment> _rating_comment;
  @override
  List<RatingComment> get rating_comment {
    if (_rating_comment is EqualUnmodifiableListView) return _rating_comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rating_comment);
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
    return 'PostResult(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, tags: $tags, price: $price, discountedPrice: $discountedPrice, trending: $trending, stock: $stock, user_photo_url: $user_photo_url, minOrder: $minOrder, sampPrice: $sampPrice, textOne: $textOne, textTwo: $textTwo, avaTo: $avaTo, negotiable: $negotiable, contactName: $contactName, email: $email, phone: $phone, phoneHidden: $phoneHidden, address: $address, cityId: $cityId, lat: $lat, lon: $lon, ipAddr: $ipAddr, length: $length, width: $width, weight: $weight, height: $height, pickup: $pickup, longitude: $longitude, latitude: $latitude, hyperDel: $hyperDel, sellerDel: $sellerDel, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, isPermanent: $isPermanent, reviewed: $reviewed, featured: $featured, archived: $archived, archivedAt: $archivedAt, deletionMailSentAt: $deletionMailSentAt, fbProfile: $fbProfile, partner: $partner, b2bPricing: $b2bPricing, offer: $offer, wow: $wow, sku: $sku, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, createdAtFormatted: $createdAtFormatted, userPhotoUrl: $userPhotoUrl, commentCount: $commentCount, extra: $extra, ratings: $ratings, user: $user, user_details: $user_details, pictures: $pictures, postType: $postType, city: $city, rating_comment: $rating_comment, live_prizes: $live_prizes, deals: $deals, shop: $shop, feed_post: $feed_post)';
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
            (identical(other.user_photo_url, user_photo_url) ||
                other.user_photo_url == user_photo_url) &&
            (identical(other.minOrder, minOrder) ||
                other.minOrder == minOrder) &&
            (identical(other.sampPrice, sampPrice) ||
                other.sampPrice == sampPrice) &&
            (identical(other.textOne, textOne) || other.textOne == textOne) &&
            (identical(other.textTwo, textTwo) || other.textTwo == textTwo) &&
            (identical(other.avaTo, avaTo) || other.avaTo == avaTo) &&
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
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.deletionMailSentAt, deletionMailSentAt) ||
                other.deletionMailSentAt == deletionMailSentAt) &&
            (identical(other.fbProfile, fbProfile) ||
                other.fbProfile == fbProfile) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.b2bPricing, b2bPricing) ||
                other.b2bPricing == b2bPricing) &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.createdAtFormatted, createdAtFormatted) ||
                other.createdAtFormatted == createdAtFormatted) &&
            (identical(other.userPhotoUrl, userPhotoUrl) ||
                other.userPhotoUrl == userPhotoUrl) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.user_details, user_details) ||
                other.user_details == user_details) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality()
                .equals(other._rating_comment, _rating_comment) &&
            const DeepCollectionEquality()
                .equals(other._live_prizes, _live_prizes) &&
            const DeepCollectionEquality().equals(other._deals, _deals) &&
            const DeepCollectionEquality().equals(other._shop, _shop) &&
            const DeepCollectionEquality()
                .equals(other._feed_post, _feed_post));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        user_photo_url,
        minOrder,
        sampPrice,
        textOne,
        textTwo,
        avaTo,
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
        archivedAt,
        deletionMailSentAt,
        fbProfile,
        partner,
        b2bPricing,
        offer,
        wow,
        sku,
        createdAt,
        updatedAt,
        slug,
        createdAtFormatted,
        userPhotoUrl,
        commentCount,
        extra,
        ratings,
        user,
        user_details,
        const DeepCollectionEquality().hash(_pictures),
        postType,
        city,
        const DeepCollectionEquality().hash(_rating_comment),
        const DeepCollectionEquality().hash(_live_prizes),
        const DeepCollectionEquality().hash(_deals),
        const DeepCollectionEquality().hash(_shop),
        const DeepCollectionEquality().hash(_feed_post)
      ]);

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      required final String? countryCode,
      required final String? userId,
      required final String? categoryId,
      required final String? postTypeId,
      required final String? title,
      required final String? description,
      required final List<String>? tags,
      required final String? price,
      final String? discountedPrice,
      required final String? trending,
      required final String? stock,
      required final String user_photo_url,
      final String? minOrder,
      final String? sampPrice,
      final String? textOne,
      final String? textTwo,
      final String? avaTo,
      final String? negotiable,
      required final String? contactName,
      required final String? email,
      required final String? phone,
      final String? phoneHidden,
      final String? address,
      required final String? cityId,
      required final String? lat,
      required final String? lon,
      required final String? ipAddr,
      required final String? length,
      required final String? width,
      required final String? weight,
      required final String? height,
      required final String? pickup,
      required final String? longitude,
      required final String? latitude,
      required final String? hyperDel,
      final String? sellerDel,
      required final String? acceptTerms,
      required final String? acceptMarketingOffers,
      required final String? isPermanent,
      required final String? reviewed,
      required final String? featured,
      required final String? archived,
      required final String? archivedAt,
      final String? deletionMailSentAt,
      final String? fbProfile,
      final String? partner,
      final String? b2bPricing,
      final String? offer,
      final String? wow,
      final String? sku,
      required final String? createdAt,
      required final String? updatedAt,
      required final String? slug,
      required final String? createdAtFormatted,
      required final String? userPhotoUrl,
      required final int? commentCount,
      required final ExtraModel? extra,
      final Ratings? ratings,
      final usermodel? user,
      required final UserDetailsProduct? user_details,
      required final List<Picture>? pictures,
      final PostType? postType,
      final City? city,
      required final List<RatingComment> rating_comment,
      final List<LivePrize> live_prizes,
      final List<Shop>? deals,
      final List<Shop>? shop,
      final List<FeedPost>? feed_post}) = _$PostResultImpl;

  factory _PostResult.fromJson(Map<String, dynamic> json) =
      _$PostResultImpl.fromJson;

  @override
  int? get id;
  @override
  String? get countryCode;
  @override
  String? get userId;
  @override
  String? get categoryId;
  @override
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
  String? get discountedPrice;
  @override
  String? get trending;
  @override
  String? get stock;
  @override
  String get user_photo_url;
  @override
  String? get minOrder;
  @override
  String? get sampPrice;
  @override
  String? get textOne;
  @override
  String? get textTwo;
  @override
  String? get avaTo;
  @override
  String? get negotiable;
  @override
  String? get contactName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get phoneHidden;
  @override
  String? get address;
  @override
  String? get cityId;
  @override
  String? get lat;
  @override
  String? get lon;
  @override
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
  String? get hyperDel;
  @override
  String? get sellerDel;
  @override
  String? get acceptTerms;
  @override
  String? get acceptMarketingOffers;
  @override
  String? get isPermanent;
  @override
  String? get reviewed;
  @override
  String? get featured;
  @override
  String? get archived;
  @override
  String? get archivedAt;
  @override
  String? get deletionMailSentAt;
  @override
  String? get fbProfile;
  @override
  String? get partner;
  @override
  String? get b2bPricing;
  @override
  String? get offer;
  @override
  String? get wow;
  @override
  String? get sku;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get slug;
  @override
  String? get createdAtFormatted;
  @override
  String? get userPhotoUrl;
  @override
  int? get commentCount;
  @override
  ExtraModel? get extra;
  @override
  Ratings? get ratings;
  @override
  usermodel? get user;
  @override
  UserDetailsProduct? get user_details;
  @override
  List<Picture>? get pictures;
  @override
  PostType? get postType;
  @override
  City? get city;
  @override
  List<RatingComment> get rating_comment;
  @override
  List<LivePrize> get live_prizes;
  @override
  List<Shop>? get deals;
  @override
  List<Shop>? get shop;
  @override
  List<FeedPost>? get feed_post;

  /// Create a copy of PostResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostResultImplCopyWith<_$PostResultImpl> get copyWith =>
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

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryCode, name, latitude,
      longitude, population, timeZone, active);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  String
      get longitude; // @JsonKey(name: 'subadmin1_code') required String subadmin1Code,
// @JsonKey(name: 'subadmin2_code') required String subadmin2Code,
  @override
  String get population;
  @override
  @JsonKey(name: 'time_zone')
  String get timeZone;
  @override
  String get active;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this LivePrize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LivePrize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of LivePrize
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of LivePrize
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, photo, subscribers, image, gift_qty, total_worth);

  /// Create a copy of LivePrize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of LivePrize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivePrizeImplCopyWith<_$LivePrizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;

  /// Serializes this Shop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res, Shop>;
  @useResult
  $Res call(
      {String id,
      String image,
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

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? discountPercentage = freezed,
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
      {String id,
      String image,
      @JsonKey(name: 'discount_percentage') double? discountPercentage});
}

/// @nodoc
class __$$ShopImplCopyWithImpl<$Res>
    extends _$ShopCopyWithImpl<$Res, _$ShopImpl>
    implements _$$ShopImplCopyWith<$Res> {
  __$$ShopImplCopyWithImpl(_$ShopImpl _value, $Res Function(_$ShopImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? discountPercentage = freezed,
  }) {
    return _then(_$ShopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: 'discount_percentage') required this.discountPercentage});

  factory _$ShopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopImplFromJson(json);

  @override
  final String id;
  @override
  final String image;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;

  @override
  String toString() {
    return 'Shop(id: $id, image: $image, discountPercentage: $discountPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, discountPercentage);

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {required final String id,
      required final String image,
      @JsonKey(name: 'discount_percentage')
      required final double? discountPercentage}) = _$ShopImpl;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$ShopImpl.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this Ratings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCountsCopyWith<$Res> get ratingCounts {
    return $RatingCountsCopyWith<$Res>(_value.ratingCounts, (value) {
      return _then(_value.copyWith(ratingCounts: value) as $Val);
    });
  }

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, avg_rating, ratingCounts,
      ratingPercentages, totalRatings, averageRating);

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  int get totalRatings; // Required as it's a number
  @override
  double get averageRating;

  /// Create a copy of Ratings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this RatingComment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RatingComment
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RatingComment
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, photo, comment, ratingStar);

  /// Create a copy of RatingComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RatingComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this Rating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, userId, rating,
      parentId, comment, replyComment, createdAt, updatedAt);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this PostType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PostType
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PostType
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PostType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

// required int id,
  @override
  String get name;

  /// Create a copy of PostType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this VendorUserDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of VendorUserDetail
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of VendorUserDetail
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of VendorUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of VendorUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this RatingCounts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RatingCounts
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RatingCounts
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, five, four, three, two, one);

  /// Create a copy of RatingCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of RatingCounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this usermodel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of usermodel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of usermodel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of usermodel
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username,
      createdAtFormatted, photoUrl, storyCount);

  /// Create a copy of usermodel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of usermodel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this UserDetailsProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailsProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of UserDetailsProduct
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of UserDetailsProduct
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of UserDetailsProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of UserDetailsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this MembershipPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MembershipPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MembershipPlan
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of MembershipPlan
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, color);

  /// Create a copy of MembershipPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MembershipPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this Picture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Picture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Picture
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Picture
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, filename, image_url);

  /// Create a copy of Picture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Picture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PictureImplCopyWith<_$PictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraModel _$ExtraModelFromJson(Map<String, dynamic> json) {
  return _ExtraModel.fromJson(json);
}

/// @nodoc
mixin _$ExtraModel {
  Fields? get fields => throw _privateConstructorUsedError;

  /// Serializes this ExtraModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ExtraModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ExtraModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ExtraModel
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  /// Create a copy of ExtraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ExtraModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this Fields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_headers), original);

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this Original to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Original
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Original
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Original
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_result));

  /// Create a copy of Original
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

// required bool success,
  @override
  String? get message;
  @override
  List<FieldDetails>? get result;

  /// Create a copy of Original
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  int? get max => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_value')
  @DefaultValueConverter()
  dynamic get defaultValue =>
      throw _privateConstructorUsedError; // Can be String or JSON
  String? get required => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_as_filter')
  String? get useAsFilter => throw _privateConstructorUsedError;
  String? get help => throw _privateConstructorUsedError;
  String? get active => throw _privateConstructorUsedError;
  List<FieldOption>? get options => throw _privateConstructorUsedError;

  /// Serializes this FieldDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      int? max,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      dynamic defaultValue,
      String? required,
      @JsonKey(name: 'use_as_filter') String? useAsFilter,
      String? help,
      String? active,
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

  /// Create a copy of FieldDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? belongsTo = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? max = freezed,
    Object? defaultValue = freezed,
    Object? required = freezed,
    Object? useAsFilter = freezed,
    Object? help = freezed,
    Object? active = freezed,
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
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
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
      help: freezed == help
          ? _value.help
          : help // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
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
      int? max,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      dynamic defaultValue,
      String? required,
      @JsonKey(name: 'use_as_filter') String? useAsFilter,
      String? help,
      String? active,
      List<FieldOption>? options});
}

/// @nodoc
class __$$FieldDetailsImplCopyWithImpl<$Res>
    extends _$FieldDetailsCopyWithImpl<$Res, _$FieldDetailsImpl>
    implements _$$FieldDetailsImplCopyWith<$Res> {
  __$$FieldDetailsImplCopyWithImpl(
      _$FieldDetailsImpl _value, $Res Function(_$FieldDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? belongsTo = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? max = freezed,
    Object? defaultValue = freezed,
    Object? required = freezed,
    Object? useAsFilter = freezed,
    Object? help = freezed,
    Object? active = freezed,
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
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
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
      help: freezed == help
          ? _value.help
          : help // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
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
      this.max,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      this.defaultValue,
      this.required,
      @JsonKey(name: 'use_as_filter') this.useAsFilter,
      this.help,
      this.active,
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
  final int? max;
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
  @override
  final String? help;
  @override
  final String? active;
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
    return 'FieldDetails(id: $id, belongsTo: $belongsTo, name: $name, type: $type, max: $max, defaultValue: $defaultValue, required: $required, useAsFilter: $useAsFilter, help: $help, active: $active, options: $options)';
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
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.useAsFilter, useAsFilter) ||
                other.useAsFilter == useAsFilter) &&
            (identical(other.help, help) || other.help == help) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      belongsTo,
      name,
      type,
      max,
      const DeepCollectionEquality().hash(defaultValue),
      required,
      useAsFilter,
      help,
      active,
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of FieldDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final int? max,
      @JsonKey(name: 'default_value')
      @DefaultValueConverter()
      final dynamic defaultValue,
      final String? required,
      @JsonKey(name: 'use_as_filter') final String? useAsFilter,
      final String? help,
      final String? active,
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
  int? get max;
  @override
  @JsonKey(name: 'default_value')
  @DefaultValueConverter()
  dynamic get defaultValue; // Can be String or JSON
  @override
  String? get required;
  @override
  @JsonKey(name: 'use_as_filter')
  String? get useAsFilter;
  @override
  String? get help;
  @override
  String? get active;
  @override
  List<FieldOption>? get options;

  /// Create a copy of FieldDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this FieldOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of FieldOption
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of FieldOption
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fieldId, value, parentId);

  /// Create a copy of FieldOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of FieldOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this ColorOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

// int? id,
  @override
  String? get value;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this AvailableColor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, type, const DeepCollectionEquality().hash(_options));

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this SimilarItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimilarItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SimilarItems
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SimilarItems
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price,
      const DeepCollectionEquality().hash(_pictures));

  /// Create a copy of SimilarItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SimilarItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this Option to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fieldId, value, depth);

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  String? get value; // @JsonKey(name: 'parent_id') required String? parentId,
  @override
  String? get depth;

  /// Create a copy of Option
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
