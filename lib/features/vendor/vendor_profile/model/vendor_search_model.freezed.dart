// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorProductSearchResponse _$VendorProductSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _VendorProductSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorProductSearchResponse {
  Vdata? get data => throw _privateConstructorUsedError;

  /// Serializes this VendorProductSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorProductSearchResponseCopyWith<VendorProductSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProductSearchResponseCopyWith<$Res> {
  factory $VendorProductSearchResponseCopyWith(
          VendorProductSearchResponse value,
          $Res Function(VendorProductSearchResponse) then) =
      _$VendorProductSearchResponseCopyWithImpl<$Res,
          VendorProductSearchResponse>;
  @useResult
  $Res call({Vdata? data});

  $VdataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendorProductSearchResponseCopyWithImpl<$Res,
        $Val extends VendorProductSearchResponse>
    implements $VendorProductSearchResponseCopyWith<$Res> {
  _$VendorProductSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Vdata?,
    ) as $Val);
  }

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VdataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VdataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorProductSearchResponseImplCopyWith<$Res>
    implements $VendorProductSearchResponseCopyWith<$Res> {
  factory _$$VendorProductSearchResponseImplCopyWith(
          _$VendorProductSearchResponseImpl value,
          $Res Function(_$VendorProductSearchResponseImpl) then) =
      __$$VendorProductSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Vdata? data});

  @override
  $VdataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendorProductSearchResponseImplCopyWithImpl<$Res>
    extends _$VendorProductSearchResponseCopyWithImpl<$Res,
        _$VendorProductSearchResponseImpl>
    implements _$$VendorProductSearchResponseImplCopyWith<$Res> {
  __$$VendorProductSearchResponseImplCopyWithImpl(
      _$VendorProductSearchResponseImpl _value,
      $Res Function(_$VendorProductSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$VendorProductSearchResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Vdata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProductSearchResponseImpl
    implements _VendorProductSearchResponse {
  _$VendorProductSearchResponseImpl({required this.data});

  factory _$VendorProductSearchResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VendorProductSearchResponseImplFromJson(json);

  @override
  final Vdata? data;

  @override
  String toString() {
    return 'VendorProductSearchResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProductSearchResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProductSearchResponseImplCopyWith<_$VendorProductSearchResponseImpl>
      get copyWith => __$$VendorProductSearchResponseImplCopyWithImpl<
          _$VendorProductSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProductSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _VendorProductSearchResponse
    implements VendorProductSearchResponse {
  factory _VendorProductSearchResponse({required final Vdata? data}) =
      _$VendorProductSearchResponseImpl;

  factory _VendorProductSearchResponse.fromJson(Map<String, dynamic> json) =
      _$VendorProductSearchResponseImpl.fromJson;

  @override
  Vdata? get data;

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorProductSearchResponseImplCopyWith<_$VendorProductSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Vdata _$VdataFromJson(Map<String, dynamic> json) {
  return _Vdata.fromJson(json);
}

/// @nodoc
mixin _$Vdata {
  VPosts? get Posts => throw _privateConstructorUsedError;

  /// Serializes this Vdata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vdata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VdataCopyWith<Vdata> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VdataCopyWith<$Res> {
  factory $VdataCopyWith(Vdata value, $Res Function(Vdata) then) =
      _$VdataCopyWithImpl<$Res, Vdata>;
  @useResult
  $Res call({VPosts? Posts});

  $VPostsCopyWith<$Res>? get Posts;
}

/// @nodoc
class _$VdataCopyWithImpl<$Res, $Val extends Vdata>
    implements $VdataCopyWith<$Res> {
  _$VdataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vdata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Posts = freezed,
  }) {
    return _then(_value.copyWith(
      Posts: freezed == Posts
          ? _value.Posts
          : Posts // ignore: cast_nullable_to_non_nullable
              as VPosts?,
    ) as $Val);
  }

  /// Create a copy of Vdata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VPostsCopyWith<$Res>? get Posts {
    if (_value.Posts == null) {
      return null;
    }

    return $VPostsCopyWith<$Res>(_value.Posts!, (value) {
      return _then(_value.copyWith(Posts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VdataImplCopyWith<$Res> implements $VdataCopyWith<$Res> {
  factory _$$VdataImplCopyWith(
          _$VdataImpl value, $Res Function(_$VdataImpl) then) =
      __$$VdataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VPosts? Posts});

  @override
  $VPostsCopyWith<$Res>? get Posts;
}

/// @nodoc
class __$$VdataImplCopyWithImpl<$Res>
    extends _$VdataCopyWithImpl<$Res, _$VdataImpl>
    implements _$$VdataImplCopyWith<$Res> {
  __$$VdataImplCopyWithImpl(
      _$VdataImpl _value, $Res Function(_$VdataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vdata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Posts = freezed,
  }) {
    return _then(_$VdataImpl(
      Posts: freezed == Posts
          ? _value.Posts
          : Posts // ignore: cast_nullable_to_non_nullable
              as VPosts?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VdataImpl implements _Vdata {
  const _$VdataImpl({required this.Posts});

  factory _$VdataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VdataImplFromJson(json);

  @override
  final VPosts? Posts;

  @override
  String toString() {
    return 'Vdata(Posts: $Posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VdataImpl &&
            (identical(other.Posts, Posts) || other.Posts == Posts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, Posts);

  /// Create a copy of Vdata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VdataImplCopyWith<_$VdataImpl> get copyWith =>
      __$$VdataImplCopyWithImpl<_$VdataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VdataImplToJson(
      this,
    );
  }
}

abstract class _Vdata implements Vdata {
  const factory _Vdata({required final VPosts? Posts}) = _$VdataImpl;

  factory _Vdata.fromJson(Map<String, dynamic> json) = _$VdataImpl.fromJson;

  @override
  VPosts? get Posts;

  /// Create a copy of Vdata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VdataImplCopyWith<_$VdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VPosts _$VPostsFromJson(Map<String, dynamic> json) {
  return _VPosts.fromJson(json);
}

/// @nodoc
mixin _$VPosts {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  List<PostResult> get data => throw _privateConstructorUsedError;

  /// Serializes this VPosts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VPosts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VPostsCopyWith<VPosts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VPostsCopyWith<$Res> {
  factory $VPostsCopyWith(VPosts value, $Res Function(VPosts) then) =
      _$VPostsCopyWithImpl<$Res, VPosts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage, List<PostResult> data});
}

/// @nodoc
class _$VPostsCopyWithImpl<$Res, $Val extends VPosts>
    implements $VPostsCopyWith<$Res> {
  _$VPostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VPosts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VPostsImplCopyWith<$Res> implements $VPostsCopyWith<$Res> {
  factory _$$VPostsImplCopyWith(
          _$VPostsImpl value, $Res Function(_$VPostsImpl) then) =
      __$$VPostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage, List<PostResult> data});
}

/// @nodoc
class __$$VPostsImplCopyWithImpl<$Res>
    extends _$VPostsCopyWithImpl<$Res, _$VPostsImpl>
    implements _$$VPostsImplCopyWith<$Res> {
  __$$VPostsImplCopyWithImpl(
      _$VPostsImpl _value, $Res Function(_$VPostsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VPosts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
  }) {
    return _then(_$VPostsImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
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
class _$VPostsImpl implements _VPosts {
  const _$VPostsImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<PostResult> data})
      : _data = data;

  factory _$VPostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VPostsImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<PostResult> _data;
  @override
  List<PostResult> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'VPosts(currentPage: $currentPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VPostsImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, const DeepCollectionEquality().hash(_data));

  /// Create a copy of VPosts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VPostsImplCopyWith<_$VPostsImpl> get copyWith =>
      __$$VPostsImplCopyWithImpl<_$VPostsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VPostsImplToJson(
      this,
    );
  }
}

abstract class _VPosts implements VPosts {
  const factory _VPosts(
      {@JsonKey(name: 'current_page') required final int currentPage,
      required final List<PostResult> data}) = _$VPostsImpl;

  factory _VPosts.fromJson(Map<String, dynamic> json) = _$VPostsImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  List<PostResult> get data;

  /// Create a copy of VPosts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VPostsImplCopyWith<_$VPostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
