// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_comment_of_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedCommentModel _$FeedCommentModelFromJson(Map<String, dynamic> json) {
  return _FeedCommentModel.fromJson(json);
}

/// @nodoc
mixin _$FeedCommentModel {
  String? get id => throw _privateConstructorUsedError;
  String? get appFeedId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCommentModelCopyWith<FeedCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentModelCopyWith<$Res> {
  factory $FeedCommentModelCopyWith(
          FeedCommentModel value, $Res Function(FeedCommentModel) then) =
      _$FeedCommentModelCopyWithImpl<$Res, FeedCommentModel>;
  @useResult
  $Res call(
      {String? id,
      String? appFeedId,
      String? userId,
      String? parentId,
      String? comment,
      String? createdAt,
      String? photo,
      String? name});
}

/// @nodoc
class _$FeedCommentModelCopyWithImpl<$Res, $Val extends FeedCommentModel>
    implements $FeedCommentModelCopyWith<$Res> {
  _$FeedCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appFeedId = freezed,
    Object? userId = freezed,
    Object? parentId = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? photo = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      appFeedId: freezed == appFeedId
          ? _value.appFeedId
          : appFeedId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedCommentModelImplCopyWith<$Res>
    implements $FeedCommentModelCopyWith<$Res> {
  factory _$$FeedCommentModelImplCopyWith(_$FeedCommentModelImpl value,
          $Res Function(_$FeedCommentModelImpl) then) =
      __$$FeedCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? appFeedId,
      String? userId,
      String? parentId,
      String? comment,
      String? createdAt,
      String? photo,
      String? name});
}

/// @nodoc
class __$$FeedCommentModelImplCopyWithImpl<$Res>
    extends _$FeedCommentModelCopyWithImpl<$Res, _$FeedCommentModelImpl>
    implements _$$FeedCommentModelImplCopyWith<$Res> {
  __$$FeedCommentModelImplCopyWithImpl(_$FeedCommentModelImpl _value,
      $Res Function(_$FeedCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? appFeedId = freezed,
    Object? userId = freezed,
    Object? parentId = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? photo = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FeedCommentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      appFeedId: freezed == appFeedId
          ? _value.appFeedId
          : appFeedId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedCommentModelImpl implements _FeedCommentModel {
  _$FeedCommentModelImpl(
      {this.id,
      this.appFeedId,
      this.userId,
      this.parentId,
      this.comment,
      this.createdAt,
      this.photo,
      this.name});

  factory _$FeedCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedCommentModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? appFeedId;
  @override
  final String? userId;
  @override
  final String? parentId;
  @override
  final String? comment;
  @override
  final String? createdAt;
  @override
  final String? photo;
  @override
  final String? name;

  @override
  String toString() {
    return 'FeedCommentModel(id: $id, appFeedId: $appFeedId, userId: $userId, parentId: $parentId, comment: $comment, createdAt: $createdAt, photo: $photo, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appFeedId, appFeedId) ||
                other.appFeedId == appFeedId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, appFeedId, userId, parentId,
      comment, createdAt, photo, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentModelImplCopyWith<_$FeedCommentModelImpl> get copyWith =>
      __$$FeedCommentModelImplCopyWithImpl<_$FeedCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedCommentModelImplToJson(
      this,
    );
  }
}

abstract class _FeedCommentModel implements FeedCommentModel {
  factory _FeedCommentModel(
      {final String? id,
      final String? appFeedId,
      final String? userId,
      final String? parentId,
      final String? comment,
      final String? createdAt,
      final String? photo,
      final String? name}) = _$FeedCommentModelImpl;

  factory _FeedCommentModel.fromJson(Map<String, dynamic> json) =
      _$FeedCommentModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get appFeedId;
  @override
  String? get userId;
  @override
  String? get parentId;
  @override
  String? get comment;
  @override
  String? get createdAt;
  @override
  String? get photo;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$FeedCommentModelImplCopyWith<_$FeedCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
