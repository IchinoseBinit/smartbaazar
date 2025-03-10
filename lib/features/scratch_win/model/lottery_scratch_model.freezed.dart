// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_scratch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiftResponseModel _$GiftResponseModelFromJson(Map<String, dynamic> json) {
  return _GiftResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GiftResponseModel {
  LotteryData? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  /// Serializes this GiftResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftResponseModelCopyWith<GiftResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftResponseModelCopyWith<$Res> {
  factory $GiftResponseModelCopyWith(
          GiftResponseModel value, $Res Function(GiftResponseModel) then) =
      _$GiftResponseModelCopyWithImpl<$Res, GiftResponseModel>;
  @useResult
  $Res call({LotteryData? data, String? msg});

  $LotteryDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GiftResponseModelCopyWithImpl<$Res, $Val extends GiftResponseModel>
    implements $GiftResponseModelCopyWith<$Res> {
  _$GiftResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
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
              as LotteryData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LotteryDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LotteryDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GiftResponseModelImplCopyWith<$Res>
    implements $GiftResponseModelCopyWith<$Res> {
  factory _$$GiftResponseModelImplCopyWith(_$GiftResponseModelImpl value,
          $Res Function(_$GiftResponseModelImpl) then) =
      __$$GiftResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LotteryData? data, String? msg});

  @override
  $LotteryDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GiftResponseModelImplCopyWithImpl<$Res>
    extends _$GiftResponseModelCopyWithImpl<$Res, _$GiftResponseModelImpl>
    implements _$$GiftResponseModelImplCopyWith<$Res> {
  __$$GiftResponseModelImplCopyWithImpl(_$GiftResponseModelImpl _value,
      $Res Function(_$GiftResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$GiftResponseModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LotteryData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftResponseModelImpl implements _GiftResponseModel {
  _$GiftResponseModelImpl({this.data, this.msg});

  factory _$GiftResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftResponseModelImplFromJson(json);

  @override
  final LotteryData? data;
  @override
  final String? msg;

  @override
  String toString() {
    return 'GiftResponseModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of GiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftResponseModelImplCopyWith<_$GiftResponseModelImpl> get copyWith =>
      __$$GiftResponseModelImplCopyWithImpl<_$GiftResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GiftResponseModel implements GiftResponseModel {
  factory _GiftResponseModel({final LotteryData? data, final String? msg}) =
      _$GiftResponseModelImpl;

  factory _GiftResponseModel.fromJson(Map<String, dynamic> json) =
      _$GiftResponseModelImpl.fromJson;

  @override
  LotteryData? get data;
  @override
  String? get msg;

  /// Create a copy of GiftResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftResponseModelImplCopyWith<_$GiftResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotteryData _$LotteryDataFromJson(Map<String, dynamic> json) {
  return _LotteryData.fromJson(json);
}

/// @nodoc
mixin _$LotteryData {
  TotalParticipants? get total_participants =>
      throw _privateConstructorUsedError;
  GiftName? get user_name => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  dynamic get banners => throw _privateConstructorUsedError;
  GiftGot? get gifts => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this LotteryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LotteryDataCopyWith<LotteryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryDataCopyWith<$Res> {
  factory $LotteryDataCopyWith(
          LotteryData value, $Res Function(LotteryData) then) =
      _$LotteryDataCopyWithImpl<$Res, LotteryData>;
  @useResult
  $Res call(
      {TotalParticipants? total_participants,
      GiftName? user_name,
      int? status,
      dynamic banners,
      GiftGot? gifts,
      String? message});

  $TotalParticipantsCopyWith<$Res>? get total_participants;
  $GiftNameCopyWith<$Res>? get user_name;
  $GiftGotCopyWith<$Res>? get gifts;
}

/// @nodoc
class _$LotteryDataCopyWithImpl<$Res, $Val extends LotteryData>
    implements $LotteryDataCopyWith<$Res> {
  _$LotteryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_participants = freezed,
    Object? user_name = freezed,
    Object? status = freezed,
    Object? banners = freezed,
    Object? gifts = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      total_participants: freezed == total_participants
          ? _value.total_participants
          : total_participants // ignore: cast_nullable_to_non_nullable
              as TotalParticipants?,
      user_name: freezed == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as GiftName?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gifts: freezed == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as GiftGot?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalParticipantsCopyWith<$Res>? get total_participants {
    if (_value.total_participants == null) {
      return null;
    }

    return $TotalParticipantsCopyWith<$Res>(_value.total_participants!,
        (value) {
      return _then(_value.copyWith(total_participants: value) as $Val);
    });
  }

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftNameCopyWith<$Res>? get user_name {
    if (_value.user_name == null) {
      return null;
    }

    return $GiftNameCopyWith<$Res>(_value.user_name!, (value) {
      return _then(_value.copyWith(user_name: value) as $Val);
    });
  }

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftGotCopyWith<$Res>? get gifts {
    if (_value.gifts == null) {
      return null;
    }

    return $GiftGotCopyWith<$Res>(_value.gifts!, (value) {
      return _then(_value.copyWith(gifts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotteryDataImplCopyWith<$Res>
    implements $LotteryDataCopyWith<$Res> {
  factory _$$LotteryDataImplCopyWith(
          _$LotteryDataImpl value, $Res Function(_$LotteryDataImpl) then) =
      __$$LotteryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TotalParticipants? total_participants,
      GiftName? user_name,
      int? status,
      dynamic banners,
      GiftGot? gifts,
      String? message});

  @override
  $TotalParticipantsCopyWith<$Res>? get total_participants;
  @override
  $GiftNameCopyWith<$Res>? get user_name;
  @override
  $GiftGotCopyWith<$Res>? get gifts;
}

/// @nodoc
class __$$LotteryDataImplCopyWithImpl<$Res>
    extends _$LotteryDataCopyWithImpl<$Res, _$LotteryDataImpl>
    implements _$$LotteryDataImplCopyWith<$Res> {
  __$$LotteryDataImplCopyWithImpl(
      _$LotteryDataImpl _value, $Res Function(_$LotteryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_participants = freezed,
    Object? user_name = freezed,
    Object? status = freezed,
    Object? banners = freezed,
    Object? gifts = freezed,
    Object? message = freezed,
  }) {
    return _then(_$LotteryDataImpl(
      total_participants: freezed == total_participants
          ? _value.total_participants
          : total_participants // ignore: cast_nullable_to_non_nullable
              as TotalParticipants?,
      user_name: freezed == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as GiftName?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gifts: freezed == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as GiftGot?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryDataImpl implements _LotteryData {
  _$LotteryDataImpl(
      {this.total_participants,
      this.user_name,
      this.status,
      this.banners,
      this.gifts,
      this.message});

  factory _$LotteryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryDataImplFromJson(json);

  @override
  final TotalParticipants? total_participants;
  @override
  final GiftName? user_name;
  @override
  final int? status;
  @override
  final dynamic banners;
  @override
  final GiftGot? gifts;
  @override
  final String? message;

  @override
  String toString() {
    return 'LotteryData(total_participants: $total_participants, user_name: $user_name, status: $status, banners: $banners, gifts: $gifts, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryDataImpl &&
            (identical(other.total_participants, total_participants) ||
                other.total_participants == total_participants) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.banners, banners) &&
            (identical(other.gifts, gifts) || other.gifts == gifts) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total_participants, user_name,
      status, const DeepCollectionEquality().hash(banners), gifts, message);

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryDataImplCopyWith<_$LotteryDataImpl> get copyWith =>
      __$$LotteryDataImplCopyWithImpl<_$LotteryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryDataImplToJson(
      this,
    );
  }
}

abstract class _LotteryData implements LotteryData {
  factory _LotteryData(
      {final TotalParticipants? total_participants,
      final GiftName? user_name,
      final int? status,
      final dynamic banners,
      final GiftGot? gifts,
      final String? message}) = _$LotteryDataImpl;

  factory _LotteryData.fromJson(Map<String, dynamic> json) =
      _$LotteryDataImpl.fromJson;

  @override
  TotalParticipants? get total_participants;
  @override
  GiftName? get user_name;
  @override
  int? get status;
  @override
  dynamic get banners;
  @override
  GiftGot? get gifts;
  @override
  String? get message;

  /// Create a copy of LotteryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LotteryDataImplCopyWith<_$LotteryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalParticipants _$TotalParticipantsFromJson(Map<String, dynamic> json) {
  return _TotalParticipants.fromJson(json);
}

/// @nodoc
mixin _$TotalParticipants {
  String? get total => throw _privateConstructorUsedError;

  /// Serializes this TotalParticipants to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TotalParticipants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalParticipantsCopyWith<TotalParticipants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalParticipantsCopyWith<$Res> {
  factory $TotalParticipantsCopyWith(
          TotalParticipants value, $Res Function(TotalParticipants) then) =
      _$TotalParticipantsCopyWithImpl<$Res, TotalParticipants>;
  @useResult
  $Res call({String? total});
}

/// @nodoc
class _$TotalParticipantsCopyWithImpl<$Res, $Val extends TotalParticipants>
    implements $TotalParticipantsCopyWith<$Res> {
  _$TotalParticipantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TotalParticipants
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalParticipantsImplCopyWith<$Res>
    implements $TotalParticipantsCopyWith<$Res> {
  factory _$$TotalParticipantsImplCopyWith(_$TotalParticipantsImpl value,
          $Res Function(_$TotalParticipantsImpl) then) =
      __$$TotalParticipantsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? total});
}

/// @nodoc
class __$$TotalParticipantsImplCopyWithImpl<$Res>
    extends _$TotalParticipantsCopyWithImpl<$Res, _$TotalParticipantsImpl>
    implements _$$TotalParticipantsImplCopyWith<$Res> {
  __$$TotalParticipantsImplCopyWithImpl(_$TotalParticipantsImpl _value,
      $Res Function(_$TotalParticipantsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TotalParticipants
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_$TotalParticipantsImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalParticipantsImpl implements _TotalParticipants {
  _$TotalParticipantsImpl({this.total});

  factory _$TotalParticipantsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalParticipantsImplFromJson(json);

  @override
  final String? total;

  @override
  String toString() {
    return 'TotalParticipants(total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalParticipantsImpl &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  /// Create a copy of TotalParticipants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalParticipantsImplCopyWith<_$TotalParticipantsImpl> get copyWith =>
      __$$TotalParticipantsImplCopyWithImpl<_$TotalParticipantsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalParticipantsImplToJson(
      this,
    );
  }
}

abstract class _TotalParticipants implements TotalParticipants {
  factory _TotalParticipants({final String? total}) = _$TotalParticipantsImpl;

  factory _TotalParticipants.fromJson(Map<String, dynamic> json) =
      _$TotalParticipantsImpl.fromJson;

  @override
  String? get total;

  /// Create a copy of TotalParticipants
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalParticipantsImplCopyWith<_$TotalParticipantsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftName _$GiftNameFromJson(Map<String, dynamic> json) {
  return _GiftName.fromJson(json);
}

/// @nodoc
mixin _$GiftName {
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this GiftName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiftName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftNameCopyWith<GiftName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftNameCopyWith<$Res> {
  factory $GiftNameCopyWith(GiftName value, $Res Function(GiftName) then) =
      _$GiftNameCopyWithImpl<$Res, GiftName>;
  @useResult
  $Res call({String? username, String? name, String? email, String? link});
}

/// @nodoc
class _$GiftNameCopyWithImpl<$Res, $Val extends GiftName>
    implements $GiftNameCopyWith<$Res> {
  _$GiftNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftNameImplCopyWith<$Res>
    implements $GiftNameCopyWith<$Res> {
  factory _$$GiftNameImplCopyWith(
          _$GiftNameImpl value, $Res Function(_$GiftNameImpl) then) =
      __$$GiftNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? name, String? email, String? link});
}

/// @nodoc
class __$$GiftNameImplCopyWithImpl<$Res>
    extends _$GiftNameCopyWithImpl<$Res, _$GiftNameImpl>
    implements _$$GiftNameImplCopyWith<$Res> {
  __$$GiftNameImplCopyWithImpl(
      _$GiftNameImpl _value, $Res Function(_$GiftNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? link = freezed,
  }) {
    return _then(_$GiftNameImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftNameImpl implements _GiftName {
  _$GiftNameImpl({this.username, this.name, this.email, this.link});

  factory _$GiftNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftNameImplFromJson(json);

  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? link;

  @override
  String toString() {
    return 'GiftName(username: $username, name: $name, email: $email, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftNameImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, name, email, link);

  /// Create a copy of GiftName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftNameImplCopyWith<_$GiftNameImpl> get copyWith =>
      __$$GiftNameImplCopyWithImpl<_$GiftNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftNameImplToJson(
      this,
    );
  }
}

abstract class _GiftName implements GiftName {
  factory _GiftName(
      {final String? username,
      final String? name,
      final String? email,
      final String? link}) = _$GiftNameImpl;

  factory _GiftName.fromJson(Map<String, dynamic> json) =
      _$GiftNameImpl.fromJson;

  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get link;

  /// Create a copy of GiftName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftNameImplCopyWith<_$GiftNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftGot _$GiftGotFromJson(Map<String, dynamic> json) {
  return _GiftGot.fromJson(json);
}

/// @nodoc
mixin _$GiftGot {
  String? get id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get post_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get discount_percentage => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get worth => throw _privateConstructorUsedError;
  String? get gift_qty => throw _privateConstructorUsedError;
  String? get total_worth => throw _privateConstructorUsedError;
  String? get approved => throw _privateConstructorUsedError;
  String? get time_frame => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get mileage => throw _privateConstructorUsedError;
  String? get mileage_count => throw _privateConstructorUsedError;
  String? get gift_qty_count => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this GiftGot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiftGot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftGotCopyWith<GiftGot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftGotCopyWith<$Res> {
  factory $GiftGotCopyWith(GiftGot value, $Res Function(GiftGot) then) =
      _$GiftGotCopyWithImpl<$Res, GiftGot>;
  @useResult
  $Res call(
      {String? id,
      String? user_id,
      String? post_id,
      String? name,
      String? discount_percentage,
      String? image,
      String? worth,
      String? gift_qty,
      String? total_worth,
      String? approved,
      String? time_frame,
      String? status,
      String? mileage,
      String? mileage_count,
      String? gift_qty_count,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class _$GiftGotCopyWithImpl<$Res, $Val extends GiftGot>
    implements $GiftGotCopyWith<$Res> {
  _$GiftGotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftGot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? post_id = freezed,
    Object? name = freezed,
    Object? discount_percentage = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? gift_qty = freezed,
    Object? total_worth = freezed,
    Object? approved = freezed,
    Object? time_frame = freezed,
    Object? status = freezed,
    Object? mileage = freezed,
    Object? mileage_count = freezed,
    Object? gift_qty_count = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_id: freezed == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_percentage: freezed == discount_percentage
          ? _value.discount_percentage
          : discount_percentage // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      gift_qty: freezed == gift_qty
          ? _value.gift_qty
          : gift_qty // ignore: cast_nullable_to_non_nullable
              as String?,
      total_worth: freezed == total_worth
          ? _value.total_worth
          : total_worth // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      time_frame: freezed == time_frame
          ? _value.time_frame
          : time_frame // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage_count: freezed == mileage_count
          ? _value.mileage_count
          : mileage_count // ignore: cast_nullable_to_non_nullable
              as String?,
      gift_qty_count: freezed == gift_qty_count
          ? _value.gift_qty_count
          : gift_qty_count // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftGotImplCopyWith<$Res> implements $GiftGotCopyWith<$Res> {
  factory _$$GiftGotImplCopyWith(
          _$GiftGotImpl value, $Res Function(_$GiftGotImpl) then) =
      __$$GiftGotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? user_id,
      String? post_id,
      String? name,
      String? discount_percentage,
      String? image,
      String? worth,
      String? gift_qty,
      String? total_worth,
      String? approved,
      String? time_frame,
      String? status,
      String? mileage,
      String? mileage_count,
      String? gift_qty_count,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class __$$GiftGotImplCopyWithImpl<$Res>
    extends _$GiftGotCopyWithImpl<$Res, _$GiftGotImpl>
    implements _$$GiftGotImplCopyWith<$Res> {
  __$$GiftGotImplCopyWithImpl(
      _$GiftGotImpl _value, $Res Function(_$GiftGotImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftGot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? post_id = freezed,
    Object? name = freezed,
    Object? discount_percentage = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? gift_qty = freezed,
    Object? total_worth = freezed,
    Object? approved = freezed,
    Object? time_frame = freezed,
    Object? status = freezed,
    Object? mileage = freezed,
    Object? mileage_count = freezed,
    Object? gift_qty_count = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$GiftGotImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_id: freezed == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_percentage: freezed == discount_percentage
          ? _value.discount_percentage
          : discount_percentage // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      gift_qty: freezed == gift_qty
          ? _value.gift_qty
          : gift_qty // ignore: cast_nullable_to_non_nullable
              as String?,
      total_worth: freezed == total_worth
          ? _value.total_worth
          : total_worth // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      time_frame: freezed == time_frame
          ? _value.time_frame
          : time_frame // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage_count: freezed == mileage_count
          ? _value.mileage_count
          : mileage_count // ignore: cast_nullable_to_non_nullable
              as String?,
      gift_qty_count: freezed == gift_qty_count
          ? _value.gift_qty_count
          : gift_qty_count // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftGotImpl implements _GiftGot {
  _$GiftGotImpl(
      {this.id,
      this.user_id,
      this.post_id,
      this.name,
      this.discount_percentage,
      this.image,
      this.worth,
      this.gift_qty,
      this.total_worth,
      this.approved,
      this.time_frame,
      this.status,
      this.mileage,
      this.mileage_count,
      this.gift_qty_count,
      this.created_at,
      this.updated_at});

  factory _$GiftGotImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftGotImplFromJson(json);

  @override
  final String? id;
  @override
  final String? user_id;
  @override
  final String? post_id;
  @override
  final String? name;
  @override
  final String? discount_percentage;
  @override
  final String? image;
  @override
  final String? worth;
  @override
  final String? gift_qty;
  @override
  final String? total_worth;
  @override
  final String? approved;
  @override
  final String? time_frame;
  @override
  final String? status;
  @override
  final String? mileage;
  @override
  final String? mileage_count;
  @override
  final String? gift_qty_count;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  @override
  String toString() {
    return 'GiftGot(id: $id, user_id: $user_id, post_id: $post_id, name: $name, discount_percentage: $discount_percentage, image: $image, worth: $worth, gift_qty: $gift_qty, total_worth: $total_worth, approved: $approved, time_frame: $time_frame, status: $status, mileage: $mileage, mileage_count: $mileage_count, gift_qty_count: $gift_qty_count, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftGotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.post_id, post_id) || other.post_id == post_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discount_percentage, discount_percentage) ||
                other.discount_percentage == discount_percentage) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.worth, worth) || other.worth == worth) &&
            (identical(other.gift_qty, gift_qty) ||
                other.gift_qty == gift_qty) &&
            (identical(other.total_worth, total_worth) ||
                other.total_worth == total_worth) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.time_frame, time_frame) ||
                other.time_frame == time_frame) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mileage, mileage) || other.mileage == mileage) &&
            (identical(other.mileage_count, mileage_count) ||
                other.mileage_count == mileage_count) &&
            (identical(other.gift_qty_count, gift_qty_count) ||
                other.gift_qty_count == gift_qty_count) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_id,
      post_id,
      name,
      discount_percentage,
      image,
      worth,
      gift_qty,
      total_worth,
      approved,
      time_frame,
      status,
      mileage,
      mileage_count,
      gift_qty_count,
      created_at,
      updated_at);

  /// Create a copy of GiftGot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftGotImplCopyWith<_$GiftGotImpl> get copyWith =>
      __$$GiftGotImplCopyWithImpl<_$GiftGotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftGotImplToJson(
      this,
    );
  }
}

abstract class _GiftGot implements GiftGot {
  factory _GiftGot(
      {final String? id,
      final String? user_id,
      final String? post_id,
      final String? name,
      final String? discount_percentage,
      final String? image,
      final String? worth,
      final String? gift_qty,
      final String? total_worth,
      final String? approved,
      final String? time_frame,
      final String? status,
      final String? mileage,
      final String? mileage_count,
      final String? gift_qty_count,
      final String? created_at,
      final String? updated_at}) = _$GiftGotImpl;

  factory _GiftGot.fromJson(Map<String, dynamic> json) = _$GiftGotImpl.fromJson;

  @override
  String? get id;
  @override
  String? get user_id;
  @override
  String? get post_id;
  @override
  String? get name;
  @override
  String? get discount_percentage;
  @override
  String? get image;
  @override
  String? get worth;
  @override
  String? get gift_qty;
  @override
  String? get total_worth;
  @override
  String? get approved;
  @override
  String? get time_frame;
  @override
  String? get status;
  @override
  String? get mileage;
  @override
  String? get mileage_count;
  @override
  String? get gift_qty_count;
  @override
  String? get created_at;
  @override
  String? get updated_at;

  /// Create a copy of GiftGot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftGotImplCopyWith<_$GiftGotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
