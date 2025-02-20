// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_form_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedFormResponseModel _$FeedFormResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FeedFormResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FeedFormResponseModel {
  bool get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this FeedFormResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedFormResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedFormResponseModelCopyWith<FeedFormResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedFormResponseModelCopyWith<$Res> {
  factory $FeedFormResponseModelCopyWith(FeedFormResponseModel value,
          $Res Function(FeedFormResponseModel) then) =
      _$FeedFormResponseModelCopyWithImpl<$Res, FeedFormResponseModel>;
  @useResult
  $Res call({bool data, String msg});
}

/// @nodoc
class _$FeedFormResponseModelCopyWithImpl<$Res,
        $Val extends FeedFormResponseModel>
    implements $FeedFormResponseModelCopyWith<$Res> {
  _$FeedFormResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedFormResponseModel
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
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedFormResponseModelImplCopyWith<$Res>
    implements $FeedFormResponseModelCopyWith<$Res> {
  factory _$$FeedFormResponseModelImplCopyWith(
          _$FeedFormResponseModelImpl value,
          $Res Function(_$FeedFormResponseModelImpl) then) =
      __$$FeedFormResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool data, String msg});
}

/// @nodoc
class __$$FeedFormResponseModelImplCopyWithImpl<$Res>
    extends _$FeedFormResponseModelCopyWithImpl<$Res,
        _$FeedFormResponseModelImpl>
    implements _$$FeedFormResponseModelImplCopyWith<$Res> {
  __$$FeedFormResponseModelImplCopyWithImpl(_$FeedFormResponseModelImpl _value,
      $Res Function(_$FeedFormResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedFormResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$FeedFormResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedFormResponseModelImpl implements _FeedFormResponseModel {
  const _$FeedFormResponseModelImpl({required this.data, required this.msg});

  factory _$FeedFormResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedFormResponseModelImplFromJson(json);

  @override
  final bool data;
  @override
  final String msg;

  @override
  String toString() {
    return 'FeedFormResponseModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedFormResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of FeedFormResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedFormResponseModelImplCopyWith<_$FeedFormResponseModelImpl>
      get copyWith => __$$FeedFormResponseModelImplCopyWithImpl<
          _$FeedFormResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedFormResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FeedFormResponseModel implements FeedFormResponseModel {
  const factory _FeedFormResponseModel(
      {required final bool data,
      required final String msg}) = _$FeedFormResponseModelImpl;

  factory _FeedFormResponseModel.fromJson(Map<String, dynamic> json) =
      _$FeedFormResponseModelImpl.fromJson;

  @override
  bool get data;
  @override
  String get msg;

  /// Create a copy of FeedFormResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedFormResponseModelImplCopyWith<_$FeedFormResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
