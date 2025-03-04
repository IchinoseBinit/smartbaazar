// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedSearchModel _$SavedSearchModelFromJson(Map<String, dynamic> json) {
  return _SavedSearchModel.fromJson(json);
}

/// @nodoc
mixin _$SavedSearchModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedSearchModelCopyWith<SavedSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedSearchModelCopyWith<$Res> {
  factory $SavedSearchModelCopyWith(
          SavedSearchModel value, $Res Function(SavedSearchModel) then) =
      _$SavedSearchModelCopyWithImpl<$Res, SavedSearchModel>;
  @useResult
  $Res call({bool? success, String? message, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SavedSearchModelCopyWithImpl<$Res, $Val extends SavedSearchModel>
    implements $SavedSearchModelCopyWith<$Res> {
  _$SavedSearchModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SavedSearchModelImplCopyWith<$Res>
    implements $SavedSearchModelCopyWith<$Res> {
  factory _$$SavedSearchModelImplCopyWith(_$SavedSearchModelImpl value,
          $Res Function(_$SavedSearchModelImpl) then) =
      __$$SavedSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SavedSearchModelImplCopyWithImpl<$Res>
    extends _$SavedSearchModelCopyWithImpl<$Res, _$SavedSearchModelImpl>
    implements _$$SavedSearchModelImplCopyWith<$Res> {
  __$$SavedSearchModelImplCopyWithImpl(_$SavedSearchModelImpl _value,
      $Res Function(_$SavedSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SavedSearchModelImpl(
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
class _$SavedSearchModelImpl implements _SavedSearchModel {
  const _$SavedSearchModelImpl({this.success, this.message, this.result});

  factory _$SavedSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedSearchModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Result? result;

  @override
  String toString() {
    return 'SavedSearchModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedSearchModelImpl &&
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
  _$$SavedSearchModelImplCopyWith<_$SavedSearchModelImpl> get copyWith =>
      __$$SavedSearchModelImplCopyWithImpl<_$SavedSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedSearchModelImplToJson(
      this,
    );
  }
}

abstract class _SavedSearchModel implements SavedSearchModel {
  const factory _SavedSearchModel(
      {final bool? success,
      final String? message,
      final Result? result}) = _$SavedSearchModelImpl;

  factory _SavedSearchModel.fromJson(Map<String, dynamic> json) =
      _$SavedSearchModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$SavedSearchModelImplCopyWith<_$SavedSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  SavedSearches? get savedSearches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({SavedSearches? savedSearches});

  $SavedSearchesCopyWith<$Res>? get savedSearches;
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
    Object? savedSearches = freezed,
  }) {
    return _then(_value.copyWith(
      savedSearches: freezed == savedSearches
          ? _value.savedSearches
          : savedSearches // ignore: cast_nullable_to_non_nullable
              as SavedSearches?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SavedSearchesCopyWith<$Res>? get savedSearches {
    if (_value.savedSearches == null) {
      return null;
    }

    return $SavedSearchesCopyWith<$Res>(_value.savedSearches!, (value) {
      return _then(_value.copyWith(savedSearches: value) as $Val);
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
  $Res call({SavedSearches? savedSearches});

  @override
  $SavedSearchesCopyWith<$Res>? get savedSearches;
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
    Object? savedSearches = freezed,
  }) {
    return _then(_$ResultImpl(
      savedSearches: freezed == savedSearches
          ? _value.savedSearches
          : savedSearches // ignore: cast_nullable_to_non_nullable
              as SavedSearches?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.savedSearches});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final SavedSearches? savedSearches;

  @override
  String toString() {
    return 'Result(savedSearches: $savedSearches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.savedSearches, savedSearches) ||
                other.savedSearches == savedSearches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, savedSearches);

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
  const factory _Result({final SavedSearches? savedSearches}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  SavedSearches? get savedSearches;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedSearches _$SavedSearchesFromJson(Map<String, dynamic> json) {
  return _SavedSearches.fromJson(json);
}

/// @nodoc
mixin _$SavedSearches {
  List<SavedSearch>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedSearchesCopyWith<SavedSearches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedSearchesCopyWith<$Res> {
  factory $SavedSearchesCopyWith(
          SavedSearches value, $Res Function(SavedSearches) then) =
      _$SavedSearchesCopyWithImpl<$Res, SavedSearches>;
  @useResult
  $Res call({List<SavedSearch>? data});
}

/// @nodoc
class _$SavedSearchesCopyWithImpl<$Res, $Val extends SavedSearches>
    implements $SavedSearchesCopyWith<$Res> {
  _$SavedSearchesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SavedSearch>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedSearchesImplCopyWith<$Res>
    implements $SavedSearchesCopyWith<$Res> {
  factory _$$SavedSearchesImplCopyWith(
          _$SavedSearchesImpl value, $Res Function(_$SavedSearchesImpl) then) =
      __$$SavedSearchesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SavedSearch>? data});
}

/// @nodoc
class __$$SavedSearchesImplCopyWithImpl<$Res>
    extends _$SavedSearchesCopyWithImpl<$Res, _$SavedSearchesImpl>
    implements _$$SavedSearchesImplCopyWith<$Res> {
  __$$SavedSearchesImplCopyWithImpl(
      _$SavedSearchesImpl _value, $Res Function(_$SavedSearchesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SavedSearchesImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SavedSearch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedSearchesImpl implements _SavedSearches {
  const _$SavedSearchesImpl({final List<SavedSearch>? data}) : _data = data;

  factory _$SavedSearchesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedSearchesImplFromJson(json);

  final List<SavedSearch>? _data;
  @override
  List<SavedSearch>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SavedSearches(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedSearchesImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedSearchesImplCopyWith<_$SavedSearchesImpl> get copyWith =>
      __$$SavedSearchesImplCopyWithImpl<_$SavedSearchesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedSearchesImplToJson(
      this,
    );
  }
}

abstract class _SavedSearches implements SavedSearches {
  const factory _SavedSearches({final List<SavedSearch>? data}) =
      _$SavedSearchesImpl;

  factory _SavedSearches.fromJson(Map<String, dynamic> json) =
      _$SavedSearchesImpl.fromJson;

  @override
  List<SavedSearch>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SavedSearchesImplCopyWith<_$SavedSearchesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedSearch _$SavedSearchFromJson(Map<String, dynamic> json) {
  return _SavedSearch.fromJson(json);
}

/// @nodoc
mixin _$SavedSearch {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedSearchCopyWith<SavedSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedSearchCopyWith<$Res> {
  factory $SavedSearchCopyWith(
          SavedSearch value, $Res Function(SavedSearch) then) =
      _$SavedSearchCopyWithImpl<$Res, SavedSearch>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      String? keyword,
      String? query,
      String? count});
}

/// @nodoc
class _$SavedSearchCopyWithImpl<$Res, $Val extends SavedSearch>
    implements $SavedSearchCopyWith<$Res> {
  _$SavedSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? userId = freezed,
    Object? keyword = freezed,
    Object? query = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedSearchImplCopyWith<$Res>
    implements $SavedSearchCopyWith<$Res> {
  factory _$$SavedSearchImplCopyWith(
          _$SavedSearchImpl value, $Res Function(_$SavedSearchImpl) then) =
      __$$SavedSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      String? keyword,
      String? query,
      String? count});
}

/// @nodoc
class __$$SavedSearchImplCopyWithImpl<$Res>
    extends _$SavedSearchCopyWithImpl<$Res, _$SavedSearchImpl>
    implements _$$SavedSearchImplCopyWith<$Res> {
  __$$SavedSearchImplCopyWithImpl(
      _$SavedSearchImpl _value, $Res Function(_$SavedSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? userId = freezed,
    Object? keyword = freezed,
    Object? query = freezed,
    Object? count = freezed,
  }) {
    return _then(_$SavedSearchImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedSearchImpl implements _SavedSearch {
  const _$SavedSearchImpl(
      {this.id,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'user_id') this.userId,
      this.keyword,
      this.query,
      this.count});

  factory _$SavedSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedSearchImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final String? keyword;
  @override
  final String? query;
  @override
  final String? count;

  @override
  String toString() {
    return 'SavedSearch(id: $id, countryCode: $countryCode, userId: $userId, keyword: $keyword, query: $query, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedSearchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, countryCode, userId, keyword, query, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedSearchImplCopyWith<_$SavedSearchImpl> get copyWith =>
      __$$SavedSearchImplCopyWithImpl<_$SavedSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedSearchImplToJson(
      this,
    );
  }
}

abstract class _SavedSearch implements SavedSearch {
  const factory _SavedSearch(
      {final int? id,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'user_id') final String? userId,
      final String? keyword,
      final String? query,
      final String? count}) = _$SavedSearchImpl;

  factory _SavedSearch.fromJson(Map<String, dynamic> json) =
      _$SavedSearchImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  String? get keyword;
  @override
  String? get query;
  @override
  String? get count;
  @override
  @JsonKey(ignore: true)
  _$$SavedSearchImplCopyWith<_$SavedSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
