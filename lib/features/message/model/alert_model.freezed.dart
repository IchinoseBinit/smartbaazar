// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertModel _$AlertModelFromJson(Map<String, dynamic> json) {
  return _AlertModel.fromJson(json);
}

/// @nodoc
mixin _$AlertModel {
  @JsonKey(name: "alerts")
  List<Alert>? get alerts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertModelCopyWith<AlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertModelCopyWith<$Res> {
  factory $AlertModelCopyWith(
          AlertModel value, $Res Function(AlertModel) then) =
      _$AlertModelCopyWithImpl<$Res, AlertModel>;
  @useResult
  $Res call({@JsonKey(name: "alerts") List<Alert>? alerts});
}

/// @nodoc
class _$AlertModelCopyWithImpl<$Res, $Val extends AlertModel>
    implements $AlertModelCopyWith<$Res> {
  _$AlertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = freezed,
  }) {
    return _then(_value.copyWith(
      alerts: freezed == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<Alert>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertModelImplCopyWith<$Res>
    implements $AlertModelCopyWith<$Res> {
  factory _$$AlertModelImplCopyWith(
          _$AlertModelImpl value, $Res Function(_$AlertModelImpl) then) =
      __$$AlertModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "alerts") List<Alert>? alerts});
}

/// @nodoc
class __$$AlertModelImplCopyWithImpl<$Res>
    extends _$AlertModelCopyWithImpl<$Res, _$AlertModelImpl>
    implements _$$AlertModelImplCopyWith<$Res> {
  __$$AlertModelImplCopyWithImpl(
      _$AlertModelImpl _value, $Res Function(_$AlertModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = freezed,
  }) {
    return _then(_$AlertModelImpl(
      alerts: freezed == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<Alert>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertModelImpl implements _AlertModel {
  const _$AlertModelImpl(
      {@JsonKey(name: "alerts") required final List<Alert>? alerts})
      : _alerts = alerts;

  factory _$AlertModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertModelImplFromJson(json);

  final List<Alert>? _alerts;
  @override
  @JsonKey(name: "alerts")
  List<Alert>? get alerts {
    final value = _alerts;
    if (value == null) return null;
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AlertModel(alerts: $alerts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertModelImpl &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_alerts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertModelImplCopyWith<_$AlertModelImpl> get copyWith =>
      __$$AlertModelImplCopyWithImpl<_$AlertModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertModelImplToJson(
      this,
    );
  }
}

abstract class _AlertModel implements AlertModel {
  const factory _AlertModel(
          {@JsonKey(name: "alerts") required final List<Alert>? alerts}) =
      _$AlertModelImpl;

  factory _AlertModel.fromJson(Map<String, dynamic> json) =
      _$AlertModelImpl.fromJson;

  @override
  @JsonKey(name: "alerts")
  List<Alert>? get alerts;
  @override
  @JsonKey(ignore: true)
  _$$AlertModelImplCopyWith<_$AlertModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Alert _$AlertFromJson(Map<String, dynamic> json) {
  return _Alert.fromJson(json);
}

/// @nodoc
mixin _$Alert {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'click_action')
  String? get clickAction => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertCopyWith<Alert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCopyWith<$Res> {
  factory $AlertCopyWith(Alert value, $Res Function(Alert) then) =
      _$AlertCopyWithImpl<$Res, Alert>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      String? title,
      String? body,
      String? image,
      @JsonKey(name: 'click_action') String? clickAction,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$AlertCopyWithImpl<$Res, $Val extends Alert>
    implements $AlertCopyWith<$Res> {
  _$AlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
    Object? clickAction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      clickAction: freezed == clickAction
          ? _value.clickAction
          : clickAction // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertImplCopyWith<$Res> implements $AlertCopyWith<$Res> {
  factory _$$AlertImplCopyWith(
          _$AlertImpl value, $Res Function(_$AlertImpl) then) =
      __$$AlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      String? title,
      String? body,
      String? image,
      @JsonKey(name: 'click_action') String? clickAction,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$AlertImplCopyWithImpl<$Res>
    extends _$AlertCopyWithImpl<$Res, _$AlertImpl>
    implements _$$AlertImplCopyWith<$Res> {
  __$$AlertImplCopyWithImpl(
      _$AlertImpl _value, $Res Function(_$AlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
    Object? clickAction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AlertImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      clickAction: freezed == clickAction
          ? _value.clickAction
          : clickAction // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertImpl implements _Alert {
  const _$AlertImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.title,
      required this.body,
      this.image,
      @JsonKey(name: 'click_action') required this.clickAction,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$AlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? image;
  @override
  @JsonKey(name: 'click_action')
  final String? clickAction;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Alert(id: $id, userId: $userId, title: $title, body: $body, image: $image, clickAction: $clickAction, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.clickAction, clickAction) ||
                other.clickAction == clickAction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, body, image,
      clickAction, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      __$$AlertImplCopyWithImpl<_$AlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertImplToJson(
      this,
    );
  }
}

abstract class _Alert implements Alert {
  const factory _Alert(
      {required final String? id,
      @JsonKey(name: 'user_id') required final String? userId,
      required final String? title,
      required final String? body,
      final String? image,
      @JsonKey(name: 'click_action') required final String? clickAction,
      @JsonKey(name: 'created_at') required final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$AlertImpl;

  factory _Alert.fromJson(Map<String, dynamic> json) = _$AlertImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get image;
  @override
  @JsonKey(name: 'click_action')
  String? get clickAction;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
