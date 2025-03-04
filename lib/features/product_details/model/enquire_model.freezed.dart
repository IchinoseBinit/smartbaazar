// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enquire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EnquireResponse _$EnquireResponseFromJson(Map<String, dynamic> json) {
  return _EnquireResponse.fromJson(json);
}

/// @nodoc
mixin _$EnquireResponse {
  EnquireData? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnquireResponseCopyWith<EnquireResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnquireResponseCopyWith<$Res> {
  factory $EnquireResponseCopyWith(
          EnquireResponse value, $Res Function(EnquireResponse) then) =
      _$EnquireResponseCopyWithImpl<$Res, EnquireResponse>;
  @useResult
  $Res call({EnquireData? data, String? msg});

  $EnquireDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EnquireResponseCopyWithImpl<$Res, $Val extends EnquireResponse>
    implements $EnquireResponseCopyWith<$Res> {
  _$EnquireResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as EnquireData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EnquireDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $EnquireDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnquireResponseImplCopyWith<$Res>
    implements $EnquireResponseCopyWith<$Res> {
  factory _$$EnquireResponseImplCopyWith(_$EnquireResponseImpl value,
          $Res Function(_$EnquireResponseImpl) then) =
      __$$EnquireResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EnquireData? data, String? msg});

  @override
  $EnquireDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$EnquireResponseImplCopyWithImpl<$Res>
    extends _$EnquireResponseCopyWithImpl<$Res, _$EnquireResponseImpl>
    implements _$$EnquireResponseImplCopyWith<$Res> {
  __$$EnquireResponseImplCopyWithImpl(
      _$EnquireResponseImpl _value, $Res Function(_$EnquireResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$EnquireResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EnquireData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnquireResponseImpl implements _EnquireResponse {
  const _$EnquireResponseImpl({required this.data, required this.msg});

  factory _$EnquireResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnquireResponseImplFromJson(json);

  @override
  final EnquireData? data;
  @override
  final String? msg;

  @override
  String toString() {
    return 'EnquireResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquireResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnquireResponseImplCopyWith<_$EnquireResponseImpl> get copyWith =>
      __$$EnquireResponseImplCopyWithImpl<_$EnquireResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnquireResponseImplToJson(
      this,
    );
  }
}

abstract class _EnquireResponse implements EnquireResponse {
  const factory _EnquireResponse(
      {required final EnquireData? data,
      required final String? msg}) = _$EnquireResponseImpl;

  factory _EnquireResponse.fromJson(Map<String, dynamic> json) =
      _$EnquireResponseImpl.fromJson;

  @override
  EnquireData? get data;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$EnquireResponseImplCopyWith<_$EnquireResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnquireData _$EnquireDataFromJson(Map<String, dynamic> json) {
  return _EnquireData.fromJson(json);
}

/// @nodoc
mixin _$EnquireData {
  int? get enquire => throw _privateConstructorUsedError;
  String? get vendor_id => throw _privateConstructorUsedError;
  Thread? get thread => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnquireDataCopyWith<EnquireData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnquireDataCopyWith<$Res> {
  factory $EnquireDataCopyWith(
          EnquireData value, $Res Function(EnquireData) then) =
      _$EnquireDataCopyWithImpl<$Res, EnquireData>;
  @useResult
  $Res call({int? enquire, String? vendor_id, Thread? thread});

  $ThreadCopyWith<$Res>? get thread;
}

/// @nodoc
class _$EnquireDataCopyWithImpl<$Res, $Val extends EnquireData>
    implements $EnquireDataCopyWith<$Res> {
  _$EnquireDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enquire = freezed,
    Object? vendor_id = freezed,
    Object? thread = freezed,
  }) {
    return _then(_value.copyWith(
      enquire: freezed == enquire
          ? _value.enquire
          : enquire // ignore: cast_nullable_to_non_nullable
              as int?,
      vendor_id: freezed == vendor_id
          ? _value.vendor_id
          : vendor_id // ignore: cast_nullable_to_non_nullable
              as String?,
      thread: freezed == thread
          ? _value.thread
          : thread // ignore: cast_nullable_to_non_nullable
              as Thread?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThreadCopyWith<$Res>? get thread {
    if (_value.thread == null) {
      return null;
    }

    return $ThreadCopyWith<$Res>(_value.thread!, (value) {
      return _then(_value.copyWith(thread: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnquireDataImplCopyWith<$Res>
    implements $EnquireDataCopyWith<$Res> {
  factory _$$EnquireDataImplCopyWith(
          _$EnquireDataImpl value, $Res Function(_$EnquireDataImpl) then) =
      __$$EnquireDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? enquire, String? vendor_id, Thread? thread});

  @override
  $ThreadCopyWith<$Res>? get thread;
}

/// @nodoc
class __$$EnquireDataImplCopyWithImpl<$Res>
    extends _$EnquireDataCopyWithImpl<$Res, _$EnquireDataImpl>
    implements _$$EnquireDataImplCopyWith<$Res> {
  __$$EnquireDataImplCopyWithImpl(
      _$EnquireDataImpl _value, $Res Function(_$EnquireDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enquire = freezed,
    Object? vendor_id = freezed,
    Object? thread = freezed,
  }) {
    return _then(_$EnquireDataImpl(
      enquire: freezed == enquire
          ? _value.enquire
          : enquire // ignore: cast_nullable_to_non_nullable
              as int?,
      vendor_id: freezed == vendor_id
          ? _value.vendor_id
          : vendor_id // ignore: cast_nullable_to_non_nullable
              as String?,
      thread: freezed == thread
          ? _value.thread
          : thread // ignore: cast_nullable_to_non_nullable
              as Thread?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnquireDataImpl implements _EnquireData {
  const _$EnquireDataImpl(
      {required this.enquire, required this.vendor_id, required this.thread});

  factory _$EnquireDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnquireDataImplFromJson(json);

  @override
  final int? enquire;
  @override
  final String? vendor_id;
  @override
  final Thread? thread;

  @override
  String toString() {
    return 'EnquireData(enquire: $enquire, vendor_id: $vendor_id, thread: $thread)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnquireDataImpl &&
            (identical(other.enquire, enquire) || other.enquire == enquire) &&
            (identical(other.vendor_id, vendor_id) ||
                other.vendor_id == vendor_id) &&
            (identical(other.thread, thread) || other.thread == thread));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enquire, vendor_id, thread);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnquireDataImplCopyWith<_$EnquireDataImpl> get copyWith =>
      __$$EnquireDataImplCopyWithImpl<_$EnquireDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnquireDataImplToJson(
      this,
    );
  }
}

abstract class _EnquireData implements EnquireData {
  const factory _EnquireData(
      {required final int? enquire,
      required final String? vendor_id,
      required final Thread? thread}) = _$EnquireDataImpl;

  factory _EnquireData.fromJson(Map<String, dynamic> json) =
      _$EnquireDataImpl.fromJson;

  @override
  int? get enquire;
  @override
  String? get vendor_id;
  @override
  Thread? get thread;
  @override
  @JsonKey(ignore: true)
  _$$EnquireDataImplCopyWith<_$EnquireDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Thread _$ThreadFromJson(Map<String, dynamic> json) {
  return _Thread.fromJson(json);
}

/// @nodoc
mixin _$Thread {
  String? get id => throw _privateConstructorUsedError;
  String? get post_id => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThreadCopyWith<Thread> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadCopyWith<$Res> {
  factory $ThreadCopyWith(Thread value, $Res Function(Thread) then) =
      _$ThreadCopyWithImpl<$Res, Thread>;
  @useResult
  $Res call({String? id, String? post_id, String? subject});
}

/// @nodoc
class _$ThreadCopyWithImpl<$Res, $Val extends Thread>
    implements $ThreadCopyWith<$Res> {
  _$ThreadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? post_id = freezed,
    Object? subject = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_id: freezed == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThreadImplCopyWith<$Res> implements $ThreadCopyWith<$Res> {
  factory _$$ThreadImplCopyWith(
          _$ThreadImpl value, $Res Function(_$ThreadImpl) then) =
      __$$ThreadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? post_id, String? subject});
}

/// @nodoc
class __$$ThreadImplCopyWithImpl<$Res>
    extends _$ThreadCopyWithImpl<$Res, _$ThreadImpl>
    implements _$$ThreadImplCopyWith<$Res> {
  __$$ThreadImplCopyWithImpl(
      _$ThreadImpl _value, $Res Function(_$ThreadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? post_id = freezed,
    Object? subject = freezed,
  }) {
    return _then(_$ThreadImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_id: freezed == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadImpl implements _Thread {
  const _$ThreadImpl(
      {required this.id, required this.post_id, required this.subject});

  factory _$ThreadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadImplFromJson(json);

  @override
  final String? id;
  @override
  final String? post_id;
  @override
  final String? subject;

  @override
  String toString() {
    return 'Thread(id: $id, post_id: $post_id, subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.post_id, post_id) || other.post_id == post_id) &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, post_id, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadImplCopyWith<_$ThreadImpl> get copyWith =>
      __$$ThreadImplCopyWithImpl<_$ThreadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadImplToJson(
      this,
    );
  }
}

abstract class _Thread implements Thread {
  const factory _Thread(
      {required final String? id,
      required final String? post_id,
      required final String? subject}) = _$ThreadImpl;

  factory _Thread.fromJson(Map<String, dynamic> json) = _$ThreadImpl.fromJson;

  @override
  String? get id;
  @override
  String? get post_id;
  @override
  String? get subject;
  @override
  @JsonKey(ignore: true)
  _$$ThreadImplCopyWith<_$ThreadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
