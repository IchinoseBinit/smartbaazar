// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_thread_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageThreadModel _$MessageThreadModelFromJson(Map<String, dynamic> json) {
  return _MessageThreadModel.fromJson(json);
}

/// @nodoc
mixin _$MessageThreadModel {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageThreadModelCopyWith<MessageThreadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageThreadModelCopyWith<$Res> {
  factory $MessageThreadModelCopyWith(
          MessageThreadModel value, $Res Function(MessageThreadModel) then) =
      _$MessageThreadModelCopyWithImpl<$Res, MessageThreadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$MessageThreadModelCopyWithImpl<$Res, $Val extends MessageThreadModel>
    implements $MessageThreadModelCopyWith<$Res> {
  _$MessageThreadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageThreadModelImplCopyWith<$Res>
    implements $MessageThreadModelCopyWith<$Res> {
  factory _$$MessageThreadModelImplCopyWith(_$MessageThreadModelImpl value,
          $Res Function(_$MessageThreadModelImpl) then) =
      __$$MessageThreadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$MessageThreadModelImplCopyWithImpl<$Res>
    extends _$MessageThreadModelCopyWithImpl<$Res, _$MessageThreadModelImpl>
    implements _$$MessageThreadModelImplCopyWith<$Res> {
  __$$MessageThreadModelImplCopyWithImpl(_$MessageThreadModelImpl _value,
      $Res Function(_$MessageThreadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$MessageThreadModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageThreadModelImpl implements _MessageThreadModel {
  const _$MessageThreadModelImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result});

  factory _$MessageThreadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageThreadModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'result')
  final Result? result;

  @override
  String toString() {
    return 'MessageThreadModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageThreadModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageThreadModelImplCopyWith<_$MessageThreadModelImpl> get copyWith =>
      __$$MessageThreadModelImplCopyWithImpl<_$MessageThreadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageThreadModelImplToJson(
      this,
    );
  }
}

abstract class _MessageThreadModel implements MessageThreadModel {
  const factory _MessageThreadModel(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'result') final Result? result}) =
      _$MessageThreadModelImpl;

  factory _MessageThreadModel.fromJson(Map<String, dynamic> json) =
      _$MessageThreadModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'result')
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$MessageThreadModelImplCopyWith<_$MessageThreadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'data')
  List<ThreadData>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  Links? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<ThreadData>? data,
      @JsonKey(name: 'links') Links? links,
      @JsonKey(name: 'meta') Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ThreadData>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<ThreadData>? data,
      @JsonKey(name: 'links') Links? links,
      @JsonKey(name: 'meta') Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$ResultImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ThreadData>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: 'data') final List<ThreadData>? data,
      @JsonKey(name: 'links') this.links,
      @JsonKey(name: 'meta') this.meta})
      : _data = data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<ThreadData>? _data;
  @override
  @JsonKey(name: 'data')
  List<ThreadData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'links')
  final Links? links;
  @override
  @JsonKey(name: 'meta')
  final Meta? meta;

  @override
  String toString() {
    return 'Result(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: 'data') final List<ThreadData>? data,
      @JsonKey(name: 'links') final Links? links,
      @JsonKey(name: 'meta') final Meta? meta}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<ThreadData>? get data;
  @override
  @JsonKey(name: 'links')
  Links? get links;
  @override
  @JsonKey(name: 'meta')
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreadData _$ThreadDataFromJson(Map<String, dynamic> json) {
  return _ThreadData.fromJson(json);
}

/// @nodoc
mixin _$ThreadData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  String? get subject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThreadDataCopyWith<ThreadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadDataCopyWith<$Res> {
  factory $ThreadDataCopyWith(
          ThreadData value, $Res Function(ThreadData) then) =
      _$ThreadDataCopyWithImpl<$Res, ThreadData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'post_id') String? postId,
      @JsonKey(name: 'subject') String? subject});
}

/// @nodoc
class _$ThreadDataCopyWithImpl<$Res, $Val extends ThreadData>
    implements $ThreadDataCopyWith<$Res> {
  _$ThreadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? subject = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThreadDataImplCopyWith<$Res>
    implements $ThreadDataCopyWith<$Res> {
  factory _$$ThreadDataImplCopyWith(
          _$ThreadDataImpl value, $Res Function(_$ThreadDataImpl) then) =
      __$$ThreadDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'post_id') String? postId,
      @JsonKey(name: 'subject') String? subject});
}

/// @nodoc
class __$$ThreadDataImplCopyWithImpl<$Res>
    extends _$ThreadDataCopyWithImpl<$Res, _$ThreadDataImpl>
    implements _$$ThreadDataImplCopyWith<$Res> {
  __$$ThreadDataImplCopyWithImpl(
      _$ThreadDataImpl _value, $Res Function(_$ThreadDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? subject = freezed,
  }) {
    return _then(_$ThreadDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
class _$ThreadDataImpl implements _ThreadData {
  const _$ThreadDataImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'post_id') this.postId,
      @JsonKey(name: 'subject') this.subject});

  factory _$ThreadDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'post_id')
  final String? postId;
  @override
  @JsonKey(name: 'subject')
  final String? subject;

  @override
  String toString() {
    return 'ThreadData(id: $id, postId: $postId, subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadDataImplCopyWith<_$ThreadDataImpl> get copyWith =>
      __$$ThreadDataImplCopyWithImpl<_$ThreadDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadDataImplToJson(
      this,
    );
  }
}

abstract class _ThreadData implements ThreadData {
  const factory _ThreadData(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'post_id') final String? postId,
      @JsonKey(name: 'subject') final String? subject}) = _$ThreadDataImpl;

  factory _ThreadData.fromJson(Map<String, dynamic> json) =
      _$ThreadDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'post_id')
  String? get postId;
  @override
  @JsonKey(name: 'subject')
  String? get subject;
  @override
  @JsonKey(ignore: true)
  _$$ThreadDataImplCopyWith<_$ThreadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  @JsonKey(name: 'first')
  String? get first => throw _privateConstructorUsedError;
  @JsonKey(name: 'last')
  String? get last => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev')
  String? get prev => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_$LinksImpl(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl implements _Links {
  const _$LinksImpl(
      {@JsonKey(name: 'first') this.first,
      @JsonKey(name: 'last') this.last,
      @JsonKey(name: 'prev') this.prev,
      @JsonKey(name: 'next') this.next});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  @override
  @JsonKey(name: 'first')
  final String? first;
  @override
  @JsonKey(name: 'last')
  final String? last;
  @override
  @JsonKey(name: 'prev')
  final String? prev;
  @override
  @JsonKey(name: 'next')
  final String? next;

  @override
  String toString() {
    return 'Links(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
      {@JsonKey(name: 'first') final String? first,
      @JsonKey(name: 'last') final String? last,
      @JsonKey(name: 'prev') final String? prev,
      @JsonKey(name: 'next') final String? next}) = _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  @JsonKey(name: 'first')
  String? get first;
  @override
  @JsonKey(name: 'last')
  String? get last;
  @override
  @JsonKey(name: 'prev')
  String? get prev;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  List<MetaLink>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  String? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'links') List<MetaLink>? links,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') String? perPage,
      @JsonKey(name: 'to') int? to,
      @JsonKey(name: 'total') int? total});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? links = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<MetaLink>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'from') int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'links') List<MetaLink>? links,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'per_page') String? perPage,
      @JsonKey(name: 'to') int? to,
      @JsonKey(name: 'total') int? total});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? links = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$MetaImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<MetaLink>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'links') final List<MetaLink>? links,
      @JsonKey(name: 'path') this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'total') this.total})
      : _links = links;

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'from')
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  final List<MetaLink>? _links;
  @override
  @JsonKey(name: 'links')
  List<MetaLink>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'path')
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final String? perPage;
  @override
  @JsonKey(name: 'to')
  final int? to;
  @override
  @JsonKey(name: 'total')
  final int? total;

  @override
  String toString() {
    return 'Meta(currentPage: $currentPage, from: $from, lastPage: $lastPage, links: $links, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, from, lastPage,
      const DeepCollectionEquality().hash(_links), path, perPage, to, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'from') final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'links') final List<MetaLink>? links,
      @JsonKey(name: 'path') final String? path,
      @JsonKey(name: 'per_page') final String? perPage,
      @JsonKey(name: 'to') final int? to,
      @JsonKey(name: 'total') final int? total}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'from')
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'links')
  List<MetaLink>? get links;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  String? get perPage;
  @override
  @JsonKey(name: 'to')
  int? get to;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaLink _$MetaLinkFromJson(Map<String, dynamic> json) {
  return _MetaLink.fromJson(json);
}

/// @nodoc
mixin _$MetaLink {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaLinkCopyWith<MetaLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaLinkCopyWith<$Res> {
  factory $MetaLinkCopyWith(MetaLink value, $Res Function(MetaLink) then) =
      _$MetaLinkCopyWithImpl<$Res, MetaLink>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'active') bool? active});
}

/// @nodoc
class _$MetaLinkCopyWithImpl<$Res, $Val extends MetaLink>
    implements $MetaLinkCopyWith<$Res> {
  _$MetaLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaLinkImplCopyWith<$Res>
    implements $MetaLinkCopyWith<$Res> {
  factory _$$MetaLinkImplCopyWith(
          _$MetaLinkImpl value, $Res Function(_$MetaLinkImpl) then) =
      __$$MetaLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'active') bool? active});
}

/// @nodoc
class __$$MetaLinkImplCopyWithImpl<$Res>
    extends _$MetaLinkCopyWithImpl<$Res, _$MetaLinkImpl>
    implements _$$MetaLinkImplCopyWith<$Res> {
  __$$MetaLinkImplCopyWithImpl(
      _$MetaLinkImpl _value, $Res Function(_$MetaLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$MetaLinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaLinkImpl implements _MetaLink {
  const _$MetaLinkImpl(
      {@JsonKey(name: 'url') this.url,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'active') this.active});

  factory _$MetaLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaLinkImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'label')
  final String? label;
  @override
  @JsonKey(name: 'active')
  final bool? active;

  @override
  String toString() {
    return 'MetaLink(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaLinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaLinkImplCopyWith<_$MetaLinkImpl> get copyWith =>
      __$$MetaLinkImplCopyWithImpl<_$MetaLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaLinkImplToJson(
      this,
    );
  }
}

abstract class _MetaLink implements MetaLink {
  const factory _MetaLink(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'label') final String? label,
      @JsonKey(name: 'active') final bool? active}) = _$MetaLinkImpl;

  factory _MetaLink.fromJson(Map<String, dynamic> json) =
      _$MetaLinkImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(name: 'active')
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$MetaLinkImplCopyWith<_$MetaLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
