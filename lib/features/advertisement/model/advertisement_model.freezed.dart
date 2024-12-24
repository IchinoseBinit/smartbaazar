// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvertisementResponse _$AdvertisementResponseFromJson(
    Map<String, dynamic> json) {
  return _AdvertisementResponse.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementResponse {
  Data get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementResponseCopyWith<AdvertisementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementResponseCopyWith<$Res> {
  factory $AdvertisementResponseCopyWith(AdvertisementResponse value,
          $Res Function(AdvertisementResponse) then) =
      _$AdvertisementResponseCopyWithImpl<$Res, AdvertisementResponse>;
  @useResult
  $Res call({Data data, String msg});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$AdvertisementResponseCopyWithImpl<$Res,
        $Val extends AdvertisementResponse>
    implements $AdvertisementResponseCopyWith<$Res> {
  _$AdvertisementResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as Data,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvertisementResponseImplCopyWith<$Res>
    implements $AdvertisementResponseCopyWith<$Res> {
  factory _$$AdvertisementResponseImplCopyWith(
          _$AdvertisementResponseImpl value,
          $Res Function(_$AdvertisementResponseImpl) then) =
      __$$AdvertisementResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data, String msg});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AdvertisementResponseImplCopyWithImpl<$Res>
    extends _$AdvertisementResponseCopyWithImpl<$Res,
        _$AdvertisementResponseImpl>
    implements _$$AdvertisementResponseImplCopyWith<$Res> {
  __$$AdvertisementResponseImplCopyWithImpl(_$AdvertisementResponseImpl _value,
      $Res Function(_$AdvertisementResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$AdvertisementResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementResponseImpl implements _AdvertisementResponse {
  const _$AdvertisementResponseImpl({required this.data, required this.msg});

  factory _$AdvertisementResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementResponseImplFromJson(json);

  @override
  final Data data;
  @override
  final String msg;

  @override
  String toString() {
    return 'AdvertisementResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementResponseImplCopyWith<_$AdvertisementResponseImpl>
      get copyWith => __$$AdvertisementResponseImplCopyWithImpl<
          _$AdvertisementResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementResponseImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementResponse implements AdvertisementResponse {
  const factory _AdvertisementResponse(
      {required final Data data,
      required final String msg}) = _$AdvertisementResponseImpl;

  factory _AdvertisementResponse.fromJson(Map<String, dynamic> json) =
      _$AdvertisementResponseImpl.fromJson;

  @override
  Data get data;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementResponseImplCopyWith<_$AdvertisementResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Ad> get ads => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<Ad> ads});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
  }) {
    return _then(_value.copyWith(
      ads: null == ads
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ad> ads});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
  }) {
    return _then(_$DataImpl(
      ads: null == ads
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({required final List<Ad> ads}) : _ads = ads;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Ad> _ads;
  @override
  List<Ad> get ads {
    if (_ads is EqualUnmodifiableListView) return _ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  @override
  String toString() {
    return 'Data(ads: $ads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._ads, _ads));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({required final List<Ad> ads}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<Ad> get ads;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ad _$AdFromJson(Map<String, dynamic> json) {
  return _Ad.fromJson(json);
}

/// @nodoc
mixin _$Ad {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdCopyWith<Ad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdCopyWith<$Res> {
  factory $AdCopyWith(Ad value, $Res Function(Ad) then) =
      _$AdCopyWithImpl<$Res, Ad>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String image,
      String link,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$AdCopyWithImpl<$Res, $Val extends Ad> implements $AdCopyWith<$Res> {
  _$AdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? image = null,
    Object? link = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdImplCopyWith<$Res> implements $AdCopyWith<$Res> {
  factory _$$AdImplCopyWith(_$AdImpl value, $Res Function(_$AdImpl) then) =
      __$$AdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String image,
      String link,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$AdImplCopyWithImpl<$Res> extends _$AdCopyWithImpl<$Res, _$AdImpl>
    implements _$$AdImplCopyWith<$Res> {
  __$$AdImplCopyWithImpl(_$AdImpl _value, $Res Function(_$AdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? image = null,
    Object? link = null,
    Object? createdAt = null,
  }) {
    return _then(_$AdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdImpl implements _Ad {
  const _$AdImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.image,
      required this.link,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$AdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String image;
  @override
  final String link;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'Ad(id: $id, userId: $userId, image: $image, link: $link, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, image, link, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdImplCopyWith<_$AdImpl> get copyWith =>
      __$$AdImplCopyWithImpl<_$AdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdImplToJson(
      this,
    );
  }
}

abstract class _Ad implements Ad {
  const factory _Ad(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      required final String image,
      required final String link,
      @JsonKey(name: 'created_at') required final String createdAt}) = _$AdImpl;

  factory _Ad.fromJson(Map<String, dynamic> json) = _$AdImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get image;
  @override
  String get link;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$AdImplCopyWith<_$AdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
