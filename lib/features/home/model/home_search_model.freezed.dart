// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeSearchResopnse _$HomeSearchResopnseFromJson(Map<String, dynamic> json) {
  return _HomeSearchResopnse.fromJson(json);
}

/// @nodoc
mixin _$HomeSearchResopnse {
  HomeSearchData get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this HomeSearchResopnse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeSearchResopnse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeSearchResopnseCopyWith<HomeSearchResopnse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSearchResopnseCopyWith<$Res> {
  factory $HomeSearchResopnseCopyWith(
          HomeSearchResopnse value, $Res Function(HomeSearchResopnse) then) =
      _$HomeSearchResopnseCopyWithImpl<$Res, HomeSearchResopnse>;
  @useResult
  $Res call({HomeSearchData data, String msg});

  $HomeSearchDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeSearchResopnseCopyWithImpl<$Res, $Val extends HomeSearchResopnse>
    implements $HomeSearchResopnseCopyWith<$Res> {
  _$HomeSearchResopnseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSearchResopnse
  /// with the given fields replaced by the non-null parameter values.
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
              as HomeSearchData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of HomeSearchResopnse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeSearchDataCopyWith<$Res> get data {
    return $HomeSearchDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeSearchResopnseImplCopyWith<$Res>
    implements $HomeSearchResopnseCopyWith<$Res> {
  factory _$$HomeSearchResopnseImplCopyWith(_$HomeSearchResopnseImpl value,
          $Res Function(_$HomeSearchResopnseImpl) then) =
      __$$HomeSearchResopnseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeSearchData data, String msg});

  @override
  $HomeSearchDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeSearchResopnseImplCopyWithImpl<$Res>
    extends _$HomeSearchResopnseCopyWithImpl<$Res, _$HomeSearchResopnseImpl>
    implements _$$HomeSearchResopnseImplCopyWith<$Res> {
  __$$HomeSearchResopnseImplCopyWithImpl(_$HomeSearchResopnseImpl _value,
      $Res Function(_$HomeSearchResopnseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSearchResopnse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$HomeSearchResopnseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeSearchData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeSearchResopnseImpl implements _HomeSearchResopnse {
  const _$HomeSearchResopnseImpl({required this.data, required this.msg});

  factory _$HomeSearchResopnseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeSearchResopnseImplFromJson(json);

  @override
  final HomeSearchData data;
  @override
  final String msg;

  @override
  String toString() {
    return 'HomeSearchResopnse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearchResopnseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of HomeSearchResopnse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSearchResopnseImplCopyWith<_$HomeSearchResopnseImpl> get copyWith =>
      __$$HomeSearchResopnseImplCopyWithImpl<_$HomeSearchResopnseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeSearchResopnseImplToJson(
      this,
    );
  }
}

abstract class _HomeSearchResopnse implements HomeSearchResopnse {
  const factory _HomeSearchResopnse(
      {required final HomeSearchData data,
      required final String msg}) = _$HomeSearchResopnseImpl;

  factory _HomeSearchResopnse.fromJson(Map<String, dynamic> json) =
      _$HomeSearchResopnseImpl.fromJson;

  @override
  HomeSearchData get data;
  @override
  String get msg;

  /// Create a copy of HomeSearchResopnse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSearchResopnseImplCopyWith<_$HomeSearchResopnseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeSearchData _$HomeSearchDataFromJson(Map<String, dynamic> json) {
  return _HomeSearchData.fromJson(json);
}

/// @nodoc
mixin _$HomeSearchData {
  HomeSearchStoryData get home_story => throw _privateConstructorUsedError;

  /// Serializes this HomeSearchData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeSearchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeSearchDataCopyWith<HomeSearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSearchDataCopyWith<$Res> {
  factory $HomeSearchDataCopyWith(
          HomeSearchData value, $Res Function(HomeSearchData) then) =
      _$HomeSearchDataCopyWithImpl<$Res, HomeSearchData>;
  @useResult
  $Res call({HomeSearchStoryData home_story});

  $HomeSearchStoryDataCopyWith<$Res> get home_story;
}

/// @nodoc
class _$HomeSearchDataCopyWithImpl<$Res, $Val extends HomeSearchData>
    implements $HomeSearchDataCopyWith<$Res> {
  _$HomeSearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSearchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home_story = null,
  }) {
    return _then(_value.copyWith(
      home_story: null == home_story
          ? _value.home_story
          : home_story // ignore: cast_nullable_to_non_nullable
              as HomeSearchStoryData,
    ) as $Val);
  }

  /// Create a copy of HomeSearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeSearchStoryDataCopyWith<$Res> get home_story {
    return $HomeSearchStoryDataCopyWith<$Res>(_value.home_story, (value) {
      return _then(_value.copyWith(home_story: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeSearchDataImplCopyWith<$Res>
    implements $HomeSearchDataCopyWith<$Res> {
  factory _$$HomeSearchDataImplCopyWith(_$HomeSearchDataImpl value,
          $Res Function(_$HomeSearchDataImpl) then) =
      __$$HomeSearchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeSearchStoryData home_story});

  @override
  $HomeSearchStoryDataCopyWith<$Res> get home_story;
}

/// @nodoc
class __$$HomeSearchDataImplCopyWithImpl<$Res>
    extends _$HomeSearchDataCopyWithImpl<$Res, _$HomeSearchDataImpl>
    implements _$$HomeSearchDataImplCopyWith<$Res> {
  __$$HomeSearchDataImplCopyWithImpl(
      _$HomeSearchDataImpl _value, $Res Function(_$HomeSearchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSearchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home_story = null,
  }) {
    return _then(_$HomeSearchDataImpl(
      home_story: null == home_story
          ? _value.home_story
          : home_story // ignore: cast_nullable_to_non_nullable
              as HomeSearchStoryData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeSearchDataImpl implements _HomeSearchData {
  const _$HomeSearchDataImpl({required this.home_story});

  factory _$HomeSearchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeSearchDataImplFromJson(json);

  @override
  final HomeSearchStoryData home_story;

  @override
  String toString() {
    return 'HomeSearchData(home_story: $home_story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearchDataImpl &&
            (identical(other.home_story, home_story) ||
                other.home_story == home_story));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, home_story);

  /// Create a copy of HomeSearchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSearchDataImplCopyWith<_$HomeSearchDataImpl> get copyWith =>
      __$$HomeSearchDataImplCopyWithImpl<_$HomeSearchDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeSearchDataImplToJson(
      this,
    );
  }
}

abstract class _HomeSearchData implements HomeSearchData {
  const factory _HomeSearchData(
      {required final HomeSearchStoryData home_story}) = _$HomeSearchDataImpl;

  factory _HomeSearchData.fromJson(Map<String, dynamic> json) =
      _$HomeSearchDataImpl.fromJson;

  @override
  HomeSearchStoryData get home_story;

  /// Create a copy of HomeSearchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSearchDataImplCopyWith<_$HomeSearchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeSearchStoryData _$HomeSearchStoryDataFromJson(Map<String, dynamic> json) {
  return _HomeSearchStoryData.fromJson(json);
}

/// @nodoc
mixin _$HomeSearchStoryData {
  FeedStory get story => throw _privateConstructorUsedError;

  /// Serializes this HomeSearchStoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeSearchStoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeSearchStoryDataCopyWith<HomeSearchStoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSearchStoryDataCopyWith<$Res> {
  factory $HomeSearchStoryDataCopyWith(
          HomeSearchStoryData value, $Res Function(HomeSearchStoryData) then) =
      _$HomeSearchStoryDataCopyWithImpl<$Res, HomeSearchStoryData>;
  @useResult
  $Res call({FeedStory story});

  $FeedStoryCopyWith<$Res> get story;
}

/// @nodoc
class _$HomeSearchStoryDataCopyWithImpl<$Res, $Val extends HomeSearchStoryData>
    implements $HomeSearchStoryDataCopyWith<$Res> {
  _$HomeSearchStoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSearchStoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = null,
  }) {
    return _then(_value.copyWith(
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as FeedStory,
    ) as $Val);
  }

  /// Create a copy of HomeSearchStoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedStoryCopyWith<$Res> get story {
    return $FeedStoryCopyWith<$Res>(_value.story, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeSearchStoryDataImplCopyWith<$Res>
    implements $HomeSearchStoryDataCopyWith<$Res> {
  factory _$$HomeSearchStoryDataImplCopyWith(_$HomeSearchStoryDataImpl value,
          $Res Function(_$HomeSearchStoryDataImpl) then) =
      __$$HomeSearchStoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeedStory story});

  @override
  $FeedStoryCopyWith<$Res> get story;
}

/// @nodoc
class __$$HomeSearchStoryDataImplCopyWithImpl<$Res>
    extends _$HomeSearchStoryDataCopyWithImpl<$Res, _$HomeSearchStoryDataImpl>
    implements _$$HomeSearchStoryDataImplCopyWith<$Res> {
  __$$HomeSearchStoryDataImplCopyWithImpl(_$HomeSearchStoryDataImpl _value,
      $Res Function(_$HomeSearchStoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSearchStoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = null,
  }) {
    return _then(_$HomeSearchStoryDataImpl(
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as FeedStory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeSearchStoryDataImpl implements _HomeSearchStoryData {
  const _$HomeSearchStoryDataImpl({required this.story});

  factory _$HomeSearchStoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeSearchStoryDataImplFromJson(json);

  @override
  final FeedStory story;

  @override
  String toString() {
    return 'HomeSearchStoryData(story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearchStoryDataImpl &&
            (identical(other.story, story) || other.story == story));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, story);

  /// Create a copy of HomeSearchStoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSearchStoryDataImplCopyWith<_$HomeSearchStoryDataImpl> get copyWith =>
      __$$HomeSearchStoryDataImplCopyWithImpl<_$HomeSearchStoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeSearchStoryDataImplToJson(
      this,
    );
  }
}

abstract class _HomeSearchStoryData implements HomeSearchStoryData {
  const factory _HomeSearchStoryData({required final FeedStory story}) =
      _$HomeSearchStoryDataImpl;

  factory _HomeSearchStoryData.fromJson(Map<String, dynamic> json) =
      _$HomeSearchStoryDataImpl.fromJson;

  @override
  FeedStory get story;

  /// Create a copy of HomeSearchStoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSearchStoryDataImplCopyWith<_$HomeSearchStoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
