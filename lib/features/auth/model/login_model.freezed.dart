// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return _LoginData.fromJson(json);
}

/// @nodoc
mixin _$LoginData {
  LoginDataResult get result => throw _privateConstructorUsedError;
  LoginDataExtra get extra => throw _privateConstructorUsedError;

  /// Serializes this LoginData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call({LoginDataResult result, LoginDataExtra extra});

  $LoginDataResultCopyWith<$Res> get result;
  $LoginDataExtraCopyWith<$Res> get extra;
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? extra = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginDataResult,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as LoginDataExtra,
    ) as $Val);
  }

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginDataResultCopyWith<$Res> get result {
    return $LoginDataResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginDataExtraCopyWith<$Res> get extra {
    return $LoginDataExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
          _$LoginDataImpl value, $Res Function(_$LoginDataImpl) then) =
      __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginDataResult result, LoginDataExtra extra});

  @override
  $LoginDataResultCopyWith<$Res> get result;
  @override
  $LoginDataExtraCopyWith<$Res> get extra;
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
      _$LoginDataImpl _value, $Res Function(_$LoginDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? extra = null,
  }) {
    return _then(_$LoginDataImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginDataResult,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as LoginDataExtra,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  const _$LoginDataImpl({required this.result, required this.extra});

  factory _$LoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataImplFromJson(json);

  @override
  final LoginDataResult result;
  @override
  final LoginDataExtra extra;

  @override
  String toString() {
    return 'LoginData(result: $result, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result, extra);

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(
      this,
    );
  }
}

abstract class _LoginData implements LoginData {
  const factory _LoginData(
      {required final LoginDataResult result,
      required final LoginDataExtra extra}) = _$LoginDataImpl;

  factory _LoginData.fromJson(Map<String, dynamic> json) =
      _$LoginDataImpl.fromJson;

  @override
  LoginDataResult get result;
  @override
  LoginDataExtra get extra;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDataResult _$LoginDataResultFromJson(Map<String, dynamic> json) {
  return _LoginDataResult.fromJson(json);
}

/// @nodoc
mixin _$LoginDataResult {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get photo_url => throw _privateConstructorUsedError;
  String get gender_id => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  /// Serializes this LoginDataResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginDataResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataResultCopyWith<LoginDataResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataResultCopyWith<$Res> {
  factory $LoginDataResultCopyWith(
          LoginDataResult value, $Res Function(LoginDataResult) then) =
      _$LoginDataResultCopyWithImpl<$Res, LoginDataResult>;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String photo_url,
      String gender_id,
      String photo,
      String phone,
      String email,
      String dob,
      String gender});
}

/// @nodoc
class _$LoginDataResultCopyWithImpl<$Res, $Val extends LoginDataResult>
    implements $LoginDataResultCopyWith<$Res> {
  _$LoginDataResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginDataResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? photo_url = null,
    Object? gender_id = null,
    Object? photo = null,
    Object? phone = null,
    Object? email = null,
    Object? dob = null,
    Object? gender = null,
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
      photo_url: null == photo_url
          ? _value.photo_url
          : photo_url // ignore: cast_nullable_to_non_nullable
              as String,
      gender_id: null == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDataResultImplCopyWith<$Res>
    implements $LoginDataResultCopyWith<$Res> {
  factory _$$LoginDataResultImplCopyWith(_$LoginDataResultImpl value,
          $Res Function(_$LoginDataResultImpl) then) =
      __$$LoginDataResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String photo_url,
      String gender_id,
      String photo,
      String phone,
      String email,
      String dob,
      String gender});
}

/// @nodoc
class __$$LoginDataResultImplCopyWithImpl<$Res>
    extends _$LoginDataResultCopyWithImpl<$Res, _$LoginDataResultImpl>
    implements _$$LoginDataResultImplCopyWith<$Res> {
  __$$LoginDataResultImplCopyWithImpl(
      _$LoginDataResultImpl _value, $Res Function(_$LoginDataResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginDataResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? photo_url = null,
    Object? gender_id = null,
    Object? photo = null,
    Object? phone = null,
    Object? email = null,
    Object? dob = null,
    Object? gender = null,
  }) {
    return _then(_$LoginDataResultImpl(
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
      photo_url: null == photo_url
          ? _value.photo_url
          : photo_url // ignore: cast_nullable_to_non_nullable
              as String,
      gender_id: null == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataResultImpl implements _LoginDataResult {
  const _$LoginDataResultImpl(
      {required this.id,
      required this.name,
      required this.username,
      required this.photo_url,
      required this.gender_id,
      required this.photo,
      required this.phone,
      required this.email,
      required this.dob,
      required this.gender});

  factory _$LoginDataResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataResultImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String photo_url;
  @override
  final String gender_id;
  @override
  final String photo;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String dob;
  @override
  final String gender;

  @override
  String toString() {
    return 'LoginDataResult(id: $id, name: $name, username: $username, photo_url: $photo_url, gender_id: $gender_id, photo: $photo, phone: $phone, email: $email, dob: $dob, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.photo_url, photo_url) ||
                other.photo_url == photo_url) &&
            (identical(other.gender_id, gender_id) ||
                other.gender_id == gender_id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, photo_url,
      gender_id, photo, phone, email, dob, gender);

  /// Create a copy of LoginDataResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataResultImplCopyWith<_$LoginDataResultImpl> get copyWith =>
      __$$LoginDataResultImplCopyWithImpl<_$LoginDataResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataResultImplToJson(
      this,
    );
  }
}

abstract class _LoginDataResult implements LoginDataResult {
  const factory _LoginDataResult(
      {required final int id,
      required final String name,
      required final String username,
      required final String photo_url,
      required final String gender_id,
      required final String photo,
      required final String phone,
      required final String email,
      required final String dob,
      required final String gender}) = _$LoginDataResultImpl;

  factory _LoginDataResult.fromJson(Map<String, dynamic> json) =
      _$LoginDataResultImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get photo_url;
  @override
  String get gender_id;
  @override
  String get photo;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get dob;
  @override
  String get gender;

  /// Create a copy of LoginDataResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataResultImplCopyWith<_$LoginDataResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDataExtra _$LoginDataExtraFromJson(Map<String, dynamic> json) {
  return _LoginDataExtra.fromJson(json);
}

/// @nodoc
mixin _$LoginDataExtra {
  String get authToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this LoginDataExtra to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginDataExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataExtraCopyWith<LoginDataExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataExtraCopyWith<$Res> {
  factory $LoginDataExtraCopyWith(
          LoginDataExtra value, $Res Function(LoginDataExtra) then) =
      _$LoginDataExtraCopyWithImpl<$Res, LoginDataExtra>;
  @useResult
  $Res call({String authToken, String refreshToken});
}

/// @nodoc
class _$LoginDataExtraCopyWithImpl<$Res, $Val extends LoginDataExtra>
    implements $LoginDataExtraCopyWith<$Res> {
  _$LoginDataExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginDataExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDataExtraImplCopyWith<$Res>
    implements $LoginDataExtraCopyWith<$Res> {
  factory _$$LoginDataExtraImplCopyWith(_$LoginDataExtraImpl value,
          $Res Function(_$LoginDataExtraImpl) then) =
      __$$LoginDataExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String authToken, String refreshToken});
}

/// @nodoc
class __$$LoginDataExtraImplCopyWithImpl<$Res>
    extends _$LoginDataExtraCopyWithImpl<$Res, _$LoginDataExtraImpl>
    implements _$$LoginDataExtraImplCopyWith<$Res> {
  __$$LoginDataExtraImplCopyWithImpl(
      _$LoginDataExtraImpl _value, $Res Function(_$LoginDataExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginDataExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$LoginDataExtraImpl(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataExtraImpl implements _LoginDataExtra {
  const _$LoginDataExtraImpl(
      {required this.authToken, required this.refreshToken});

  factory _$LoginDataExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataExtraImplFromJson(json);

  @override
  final String authToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'LoginDataExtra(authToken: $authToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataExtraImpl &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authToken, refreshToken);

  /// Create a copy of LoginDataExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataExtraImplCopyWith<_$LoginDataExtraImpl> get copyWith =>
      __$$LoginDataExtraImplCopyWithImpl<_$LoginDataExtraImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataExtraImplToJson(
      this,
    );
  }
}

abstract class _LoginDataExtra implements LoginDataExtra {
  const factory _LoginDataExtra(
      {required final String authToken,
      required final String refreshToken}) = _$LoginDataExtraImpl;

  factory _LoginDataExtra.fromJson(Map<String, dynamic> json) =
      _$LoginDataExtraImpl.fromJson;

  @override
  String get authToken;
  @override
  String get refreshToken;

  /// Create a copy of LoginDataExtra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataExtraImplCopyWith<_$LoginDataExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
