// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_model_for_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorModelByID _$VendorModelByIDFromJson(Map<String, dynamic> json) {
  return _VendorModelByID.fromJson(json);
}

/// @nodoc
mixin _$VendorModelByID {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;

  /// Serializes this VendorModelByID to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorModelByID
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorModelByIDCopyWith<VendorModelByID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorModelByIDCopyWith<$Res> {
  factory $VendorModelByIDCopyWith(
          VendorModelByID value, $Res Function(VendorModelByID) then) =
      _$VendorModelByIDCopyWithImpl<$Res, VendorModelByID>;
  @useResult
  $Res call(
      {String id, String name, String username, String email, String photo});
}

/// @nodoc
class _$VendorModelByIDCopyWithImpl<$Res, $Val extends VendorModelByID>
    implements $VendorModelByIDCopyWith<$Res> {
  _$VendorModelByIDCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorModelByID
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorModelByIDImplCopyWith<$Res>
    implements $VendorModelByIDCopyWith<$Res> {
  factory _$$VendorModelByIDImplCopyWith(_$VendorModelByIDImpl value,
          $Res Function(_$VendorModelByIDImpl) then) =
      __$$VendorModelByIDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String username, String email, String photo});
}

/// @nodoc
class __$$VendorModelByIDImplCopyWithImpl<$Res>
    extends _$VendorModelByIDCopyWithImpl<$Res, _$VendorModelByIDImpl>
    implements _$$VendorModelByIDImplCopyWith<$Res> {
  __$$VendorModelByIDImplCopyWithImpl(
      _$VendorModelByIDImpl _value, $Res Function(_$VendorModelByIDImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorModelByID
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? photo = null,
  }) {
    return _then(_$VendorModelByIDImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorModelByIDImpl implements _VendorModelByID {
  _$VendorModelByIDImpl(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      this.photo = ''});

  factory _$VendorModelByIDImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorModelByIDImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey()
  final String photo;

  @override
  String toString() {
    return 'VendorModelByID(id: $id, name: $name, username: $username, email: $email, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorModelByIDImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, username, email, photo);

  /// Create a copy of VendorModelByID
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorModelByIDImplCopyWith<_$VendorModelByIDImpl> get copyWith =>
      __$$VendorModelByIDImplCopyWithImpl<_$VendorModelByIDImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorModelByIDImplToJson(
      this,
    );
  }
}

abstract class _VendorModelByID implements VendorModelByID {
  factory _VendorModelByID(
      {required final String id,
      required final String name,
      required final String username,
      required final String email,
      final String photo}) = _$VendorModelByIDImpl;

  factory _VendorModelByID.fromJson(Map<String, dynamic> json) =
      _$VendorModelByIDImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get photo;

  /// Create a copy of VendorModelByID
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorModelByIDImplCopyWith<_$VendorModelByIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
