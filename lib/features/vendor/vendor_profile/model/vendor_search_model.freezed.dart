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
  VendorPost? get vendorPost => throw _privateConstructorUsedError;

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
  $Res call({VendorPost? vendorPost});

  $VendorPostCopyWith<$Res>? get vendorPost;
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
    Object? vendorPost = freezed,
  }) {
    return _then(_value.copyWith(
      vendorPost: freezed == vendorPost
          ? _value.vendorPost
          : vendorPost // ignore: cast_nullable_to_non_nullable
              as VendorPost?,
    ) as $Val);
  }

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorPostCopyWith<$Res>? get vendorPost {
    if (_value.vendorPost == null) {
      return null;
    }

    return $VendorPostCopyWith<$Res>(_value.vendorPost!, (value) {
      return _then(_value.copyWith(vendorPost: value) as $Val);
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
  $Res call({VendorPost? vendorPost});

  @override
  $VendorPostCopyWith<$Res>? get vendorPost;
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
    Object? vendorPost = freezed,
  }) {
    return _then(_$VendorProductSearchResponseImpl(
      vendorPost: freezed == vendorPost
          ? _value.vendorPost
          : vendorPost // ignore: cast_nullable_to_non_nullable
              as VendorPost?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProductSearchResponseImpl
    implements _VendorProductSearchResponse {
  _$VendorProductSearchResponseImpl({this.vendorPost});

  factory _$VendorProductSearchResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VendorProductSearchResponseImplFromJson(json);

  @override
  final VendorPost? vendorPost;

  @override
  String toString() {
    return 'VendorProductSearchResponse(vendorPost: $vendorPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProductSearchResponseImpl &&
            (identical(other.vendorPost, vendorPost) ||
                other.vendorPost == vendorPost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vendorPost);

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
  factory _VendorProductSearchResponse({final VendorPost? vendorPost}) =
      _$VendorProductSearchResponseImpl;

  factory _VendorProductSearchResponse.fromJson(Map<String, dynamic> json) =
      _$VendorProductSearchResponseImpl.fromJson;

  @override
  VendorPost? get vendorPost;

  /// Create a copy of VendorProductSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorProductSearchResponseImplCopyWith<_$VendorProductSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VendorPost _$VendorPostFromJson(Map<String, dynamic> json) {
  return _VendorPost.fromJson(json);
}

/// @nodoc
mixin _$VendorPost {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  List<PostResult>? get data => throw _privateConstructorUsedError;

  /// Serializes this VendorPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorPostCopyWith<VendorPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorPostCopyWith<$Res> {
  factory $VendorPostCopyWith(
          VendorPost value, $Res Function(VendorPost) then) =
      _$VendorPostCopyWithImpl<$Res, VendorPost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<PostResult>? data});
}

/// @nodoc
class _$VendorPostCopyWithImpl<$Res, $Val extends VendorPost>
    implements $VendorPostCopyWith<$Res> {
  _$VendorPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorPostImplCopyWith<$Res>
    implements $VendorPostCopyWith<$Res> {
  factory _$$VendorPostImplCopyWith(
          _$VendorPostImpl value, $Res Function(_$VendorPostImpl) then) =
      __$$VendorPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<PostResult>? data});
}

/// @nodoc
class __$$VendorPostImplCopyWithImpl<$Res>
    extends _$VendorPostCopyWithImpl<$Res, _$VendorPostImpl>
    implements _$$VendorPostImplCopyWith<$Res> {
  __$$VendorPostImplCopyWithImpl(
      _$VendorPostImpl _value, $Res Function(_$VendorPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VendorPostImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorPostImpl implements _VendorPost {
  _$VendorPostImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      final List<PostResult>? data})
      : _data = data;

  factory _$VendorPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorPostImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<PostResult>? _data;
  @override
  List<PostResult>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VendorPost(currentPage: $currentPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorPostImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, const DeepCollectionEquality().hash(_data));

  /// Create a copy of VendorPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorPostImplCopyWith<_$VendorPostImpl> get copyWith =>
      __$$VendorPostImplCopyWithImpl<_$VendorPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorPostImplToJson(
      this,
    );
  }
}

abstract class _VendorPost implements VendorPost {
  factory _VendorPost(
      {@JsonKey(name: 'current_page') final int? currentPage,
      final List<PostResult>? data}) = _$VendorPostImpl;

  factory _VendorPost.fromJson(Map<String, dynamic> json) =
      _$VendorPostImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  List<PostResult>? get data;

  /// Create a copy of VendorPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorPostImplCopyWith<_$VendorPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
