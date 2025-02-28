// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_live_prizes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorLivePrizePostResponse _$VendorLivePrizePostResponseFromJson(
    Map<String, dynamic> json) {
  return _VendorLivePrizePostResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorLivePrizePostResponse {
  VendorLivePrizePostData get data =>
      throw _privateConstructorUsedError; // ✅ Fixed Class Name
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorLivePrizePostResponseCopyWith<VendorLivePrizePostResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorLivePrizePostResponseCopyWith<$Res> {
  factory $VendorLivePrizePostResponseCopyWith(
          VendorLivePrizePostResponse value,
          $Res Function(VendorLivePrizePostResponse) then) =
      _$VendorLivePrizePostResponseCopyWithImpl<$Res,
          VendorLivePrizePostResponse>;
  @useResult
  $Res call({VendorLivePrizePostData data, String msg});

  $VendorLivePrizePostDataCopyWith<$Res> get data;
}

/// @nodoc
class _$VendorLivePrizePostResponseCopyWithImpl<$Res,
        $Val extends VendorLivePrizePostResponse>
    implements $VendorLivePrizePostResponseCopyWith<$Res> {
  _$VendorLivePrizePostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorLivePrizePostData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorLivePrizePostDataCopyWith<$Res> get data {
    return $VendorLivePrizePostDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorLivePrizePostResponseImplCopyWith<$Res>
    implements $VendorLivePrizePostResponseCopyWith<$Res> {
  factory _$$VendorLivePrizePostResponseImplCopyWith(
          _$VendorLivePrizePostResponseImpl value,
          $Res Function(_$VendorLivePrizePostResponseImpl) then) =
      __$$VendorLivePrizePostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VendorLivePrizePostData data, String msg});

  @override
  $VendorLivePrizePostDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$VendorLivePrizePostResponseImplCopyWithImpl<$Res>
    extends _$VendorLivePrizePostResponseCopyWithImpl<$Res,
        _$VendorLivePrizePostResponseImpl>
    implements _$$VendorLivePrizePostResponseImplCopyWith<$Res> {
  __$$VendorLivePrizePostResponseImplCopyWithImpl(
      _$VendorLivePrizePostResponseImpl _value,
      $Res Function(_$VendorLivePrizePostResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$VendorLivePrizePostResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorLivePrizePostData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorLivePrizePostResponseImpl
    implements _VendorLivePrizePostResponse {
  const _$VendorLivePrizePostResponseImpl(
      {required this.data, required this.msg});

  factory _$VendorLivePrizePostResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VendorLivePrizePostResponseImplFromJson(json);

  @override
  final VendorLivePrizePostData data;
// ✅ Fixed Class Name
  @override
  final String msg;

  @override
  String toString() {
    return 'VendorLivePrizePostResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorLivePrizePostResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorLivePrizePostResponseImplCopyWith<_$VendorLivePrizePostResponseImpl>
      get copyWith => __$$VendorLivePrizePostResponseImplCopyWithImpl<
          _$VendorLivePrizePostResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorLivePrizePostResponseImplToJson(
      this,
    );
  }
}

abstract class _VendorLivePrizePostResponse
    implements VendorLivePrizePostResponse {
  const factory _VendorLivePrizePostResponse(
      {required final VendorLivePrizePostData data,
      required final String msg}) = _$VendorLivePrizePostResponseImpl;

  factory _VendorLivePrizePostResponse.fromJson(Map<String, dynamic> json) =
      _$VendorLivePrizePostResponseImpl.fromJson;

  @override
  VendorLivePrizePostData get data;
  @override // ✅ Fixed Class Name
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$VendorLivePrizePostResponseImplCopyWith<_$VendorLivePrizePostResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VendorLivePrizePostData _$VendorLivePrizePostDataFromJson(
    Map<String, dynamic> json) {
  return _VendorLivePrizePostData.fromJson(json);
}

/// @nodoc
mixin _$VendorLivePrizePostData {
  List<FeedPost>? get live_prizes => throw _privateConstructorUsedError;
  List<FeedPost> get feedPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorLivePrizePostDataCopyWith<VendorLivePrizePostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorLivePrizePostDataCopyWith<$Res> {
  factory $VendorLivePrizePostDataCopyWith(VendorLivePrizePostData value,
          $Res Function(VendorLivePrizePostData) then) =
      _$VendorLivePrizePostDataCopyWithImpl<$Res, VendorLivePrizePostData>;
  @useResult
  $Res call({List<FeedPost>? live_prizes, List<FeedPost> feedPosts});
}

/// @nodoc
class _$VendorLivePrizePostDataCopyWithImpl<$Res,
        $Val extends VendorLivePrizePostData>
    implements $VendorLivePrizePostDataCopyWith<$Res> {
  _$VendorLivePrizePostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? live_prizes = freezed,
    Object? feedPosts = null,
  }) {
    return _then(_value.copyWith(
      live_prizes: freezed == live_prizes
          ? _value.live_prizes
          : live_prizes // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
      feedPosts: null == feedPosts
          ? _value.feedPosts
          : feedPosts // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorLivePrizePostDataImplCopyWith<$Res>
    implements $VendorLivePrizePostDataCopyWith<$Res> {
  factory _$$VendorLivePrizePostDataImplCopyWith(
          _$VendorLivePrizePostDataImpl value,
          $Res Function(_$VendorLivePrizePostDataImpl) then) =
      __$$VendorLivePrizePostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FeedPost>? live_prizes, List<FeedPost> feedPosts});
}

/// @nodoc
class __$$VendorLivePrizePostDataImplCopyWithImpl<$Res>
    extends _$VendorLivePrizePostDataCopyWithImpl<$Res,
        _$VendorLivePrizePostDataImpl>
    implements _$$VendorLivePrizePostDataImplCopyWith<$Res> {
  __$$VendorLivePrizePostDataImplCopyWithImpl(
      _$VendorLivePrizePostDataImpl _value,
      $Res Function(_$VendorLivePrizePostDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? live_prizes = freezed,
    Object? feedPosts = null,
  }) {
    return _then(_$VendorLivePrizePostDataImpl(
      live_prizes: freezed == live_prizes
          ? _value._live_prizes
          : live_prizes // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>?,
      feedPosts: null == feedPosts
          ? _value._feedPosts
          : feedPosts // ignore: cast_nullable_to_non_nullable
              as List<FeedPost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorLivePrizePostDataImpl implements _VendorLivePrizePostData {
  const _$VendorLivePrizePostDataImpl(
      {required final List<FeedPost>? live_prizes,
      required final List<FeedPost> feedPosts})
      : _live_prizes = live_prizes,
        _feedPosts = feedPosts;

  factory _$VendorLivePrizePostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorLivePrizePostDataImplFromJson(json);

  final List<FeedPost>? _live_prizes;
  @override
  List<FeedPost>? get live_prizes {
    final value = _live_prizes;
    if (value == null) return null;
    if (_live_prizes is EqualUnmodifiableListView) return _live_prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FeedPost> _feedPosts;
  @override
  List<FeedPost> get feedPosts {
    if (_feedPosts is EqualUnmodifiableListView) return _feedPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedPosts);
  }

  @override
  String toString() {
    return 'VendorLivePrizePostData(live_prizes: $live_prizes, feedPosts: $feedPosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorLivePrizePostDataImpl &&
            const DeepCollectionEquality()
                .equals(other._live_prizes, _live_prizes) &&
            const DeepCollectionEquality()
                .equals(other._feedPosts, _feedPosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_live_prizes),
      const DeepCollectionEquality().hash(_feedPosts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorLivePrizePostDataImplCopyWith<_$VendorLivePrizePostDataImpl>
      get copyWith => __$$VendorLivePrizePostDataImplCopyWithImpl<
          _$VendorLivePrizePostDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorLivePrizePostDataImplToJson(
      this,
    );
  }
}

abstract class _VendorLivePrizePostData implements VendorLivePrizePostData {
  const factory _VendorLivePrizePostData(
      {required final List<FeedPost>? live_prizes,
      required final List<FeedPost> feedPosts}) = _$VendorLivePrizePostDataImpl;

  factory _VendorLivePrizePostData.fromJson(Map<String, dynamic> json) =
      _$VendorLivePrizePostDataImpl.fromJson;

  @override
  List<FeedPost>? get live_prizes;
  @override
  List<FeedPost> get feedPosts;
  @override
  @JsonKey(ignore: true)
  _$$VendorLivePrizePostDataImplCopyWith<_$VendorLivePrizePostDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
