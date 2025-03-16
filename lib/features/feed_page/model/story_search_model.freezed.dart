// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StorySearchModel _$StorySearchModelFromJson(Map<String, dynamic> json) {
  return _StorySearchModel.fromJson(json);
}

/// @nodoc
mixin _$StorySearchModel {
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;

  /// Serializes this StorySearchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StorySearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StorySearchModelCopyWith<StorySearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorySearchModelCopyWith<$Res> {
  factory $StorySearchModelCopyWith(
          StorySearchModel value, $Res Function(StorySearchModel) then) =
      _$StorySearchModelCopyWithImpl<$Res, StorySearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') Data? data, @JsonKey(name: 'msg') String? msg});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StorySearchModelCopyWithImpl<$Res, $Val extends StorySearchModel>
    implements $StorySearchModelCopyWith<$Res> {
  _$StorySearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorySearchModel
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
              as Data?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StorySearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StorySearchModelImplCopyWith<$Res>
    implements $StorySearchModelCopyWith<$Res> {
  factory _$$StorySearchModelImplCopyWith(_$StorySearchModelImpl value,
          $Res Function(_$StorySearchModelImpl) then) =
      __$$StorySearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') Data? data, @JsonKey(name: 'msg') String? msg});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StorySearchModelImplCopyWithImpl<$Res>
    extends _$StorySearchModelCopyWithImpl<$Res, _$StorySearchModelImpl>
    implements _$$StorySearchModelImplCopyWith<$Res> {
  __$$StorySearchModelImplCopyWithImpl(_$StorySearchModelImpl _value,
      $Res Function(_$StorySearchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorySearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$StorySearchModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorySearchModelImpl implements _StorySearchModel {
  const _$StorySearchModelImpl(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'msg') required this.msg});

  factory _$StorySearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorySearchModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final Data? data;
  @override
  @JsonKey(name: 'msg')
  final String? msg;

  @override
  String toString() {
    return 'StorySearchModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorySearchModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of StorySearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorySearchModelImplCopyWith<_$StorySearchModelImpl> get copyWith =>
      __$$StorySearchModelImplCopyWithImpl<_$StorySearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorySearchModelImplToJson(
      this,
    );
  }
}

abstract class _StorySearchModel implements StorySearchModel {
  const factory _StorySearchModel(
          {@JsonKey(name: 'data') required final Data? data,
          @JsonKey(name: 'msg') required final String? msg}) =
      _$StorySearchModelImpl;

  factory _StorySearchModel.fromJson(Map<String, dynamic> json) =
      _$StorySearchModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  Data? get data;
  @override
  @JsonKey(name: 'msg')
  String? get msg;

  /// Create a copy of StorySearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorySearchModelImplCopyWith<_$StorySearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'home_story')
  HomeStory? get homeStory => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: 'home_story') HomeStory? homeStory});

  $HomeStoryCopyWith<$Res>? get homeStory;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeStory = freezed,
  }) {
    return _then(_value.copyWith(
      homeStory: freezed == homeStory
          ? _value.homeStory
          : homeStory // ignore: cast_nullable_to_non_nullable
              as HomeStory?,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeStoryCopyWith<$Res>? get homeStory {
    if (_value.homeStory == null) {
      return null;
    }

    return $HomeStoryCopyWith<$Res>(_value.homeStory!, (value) {
      return _then(_value.copyWith(homeStory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'home_story') HomeStory? homeStory});

  @override
  $HomeStoryCopyWith<$Res>? get homeStory;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeStory = freezed,
  }) {
    return _then(_$DataImpl(
      homeStory: freezed == homeStory
          ? _value.homeStory
          : homeStory // ignore: cast_nullable_to_non_nullable
              as HomeStory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: 'home_story') required this.homeStory});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'home_story')
  final HomeStory? homeStory;

  @override
  String toString() {
    return 'Data(homeStory: $homeStory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.homeStory, homeStory) ||
                other.homeStory == homeStory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, homeStory);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _Data(
          {@JsonKey(name: 'home_story') required final HomeStory? homeStory}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'home_story')
  HomeStory? get homeStory;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeStory _$HomeStoryFromJson(Map<String, dynamic> json) {
  return _HomeStory.fromJson(json);
}

/// @nodoc
mixin _$HomeStory {
  @JsonKey(name: 'story')
  Story? get story => throw _privateConstructorUsedError;

  /// Serializes this HomeStory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeStory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStoryCopyWith<HomeStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStoryCopyWith<$Res> {
  factory $HomeStoryCopyWith(HomeStory value, $Res Function(HomeStory) then) =
      _$HomeStoryCopyWithImpl<$Res, HomeStory>;
  @useResult
  $Res call({@JsonKey(name: 'story') Story? story});

  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class _$HomeStoryCopyWithImpl<$Res, $Val extends HomeStory>
    implements $HomeStoryCopyWith<$Res> {
  _$HomeStoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeStory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = freezed,
  }) {
    return _then(_value.copyWith(
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
    ) as $Val);
  }

  /// Create a copy of HomeStory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStoryImplCopyWith<$Res>
    implements $HomeStoryCopyWith<$Res> {
  factory _$$HomeStoryImplCopyWith(
          _$HomeStoryImpl value, $Res Function(_$HomeStoryImpl) then) =
      __$$HomeStoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'story') Story? story});

  @override
  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class __$$HomeStoryImplCopyWithImpl<$Res>
    extends _$HomeStoryCopyWithImpl<$Res, _$HomeStoryImpl>
    implements _$$HomeStoryImplCopyWith<$Res> {
  __$$HomeStoryImplCopyWithImpl(
      _$HomeStoryImpl _value, $Res Function(_$HomeStoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeStory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = freezed,
  }) {
    return _then(_$HomeStoryImpl(
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStoryImpl implements _HomeStory {
  const _$HomeStoryImpl({@JsonKey(name: 'story') required this.story});

  factory _$HomeStoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStoryImplFromJson(json);

  @override
  @JsonKey(name: 'story')
  final Story? story;

  @override
  String toString() {
    return 'HomeStory(story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStoryImpl &&
            (identical(other.story, story) || other.story == story));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, story);

  /// Create a copy of HomeStory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStoryImplCopyWith<_$HomeStoryImpl> get copyWith =>
      __$$HomeStoryImplCopyWithImpl<_$HomeStoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStoryImplToJson(
      this,
    );
  }
}

abstract class _HomeStory implements HomeStory {
  const factory _HomeStory(
      {@JsonKey(name: 'story') required final Story? story}) = _$HomeStoryImpl;

  factory _HomeStory.fromJson(Map<String, dynamic> json) =
      _$HomeStoryImpl.fromJson;

  @override
  @JsonKey(name: 'story')
  Story? get story;

  /// Create a copy of HomeStory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStoryImplCopyWith<_$HomeStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  @JsonKey(name: 'posts')
  List<Post>? get posts => throw _privateConstructorUsedError;

  /// Serializes this Story to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res, Story>;
  @useResult
  $Res call({@JsonKey(name: 'posts') List<Post>? posts});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res, $Val extends Story>
    implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryImplCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$StoryImplCopyWith(
          _$StoryImpl value, $Res Function(_$StoryImpl) then) =
      __$$StoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'posts') List<Post>? posts});
}

/// @nodoc
class __$$StoryImplCopyWithImpl<$Res>
    extends _$StoryCopyWithImpl<$Res, _$StoryImpl>
    implements _$$StoryImplCopyWith<$Res> {
  __$$StoryImplCopyWithImpl(
      _$StoryImpl _value, $Res Function(_$StoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$StoryImpl(
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryImpl implements _Story {
  const _$StoryImpl({@JsonKey(name: 'posts') required final List<Post>? posts})
      : _posts = posts;

  factory _$StoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryImplFromJson(json);

  final List<Post>? _posts;
  @override
  @JsonKey(name: 'posts')
  List<Post>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Story(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      __$$StoryImplCopyWithImpl<_$StoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryImplToJson(
      this,
    );
  }
}

abstract class _Story implements Story {
  const factory _Story(
      {@JsonKey(name: 'posts') required final List<Post>? posts}) = _$StoryImpl;

  factory _Story.fromJson(Map<String, dynamic> json) = _$StoryImpl.fromJson;

  @override
  @JsonKey(name: 'posts')
  List<Post>? get posts;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  @JsonKey(name: 'vendor_id')
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  int? get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'wow')
  String? get wow => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      String? id,
      String? title,
      String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      @JsonKey(name: 'discount_percentage') int? discountPercentage,
      @JsonKey(name: 'wow') String? wow});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? similarProductCount = freezed,
    Object? commentCount = freezed,
    Object? averageRating = freezed,
    Object? discountPercentage = freezed,
    Object? wow = freezed,
  }) {
    return _then(_value.copyWith(
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      String? id,
      String? title,
      String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      @JsonKey(name: 'discount_percentage') int? discountPercentage,
      @JsonKey(name: 'wow') String? wow});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? similarProductCount = freezed,
    Object? commentCount = freezed,
    Object? averageRating = freezed,
    Object? discountPercentage = freezed,
    Object? wow = freezed,
  }) {
    return _then(_$PostImpl(
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {@JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'vendor_name') required this.vendorName,
      @JsonKey(name: 'vendor_image') required this.vendorImage,
      @JsonKey(name: 'has_sponsored_gifts') required this.hasSponsoredGifts,
      required this.id,
      required this.title,
      required this.image,
      @JsonKey(name: 'similarproductcount') required this.similarProductCount,
      @JsonKey(name: 'comment_count') required this.commentCount,
      @JsonKey(name: 'average_rating') required this.averageRating,
      @JsonKey(name: 'discount_percentage') required this.discountPercentage,
      @JsonKey(name: 'wow') required this.wow});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final String? vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  final String? vendorImage;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  @JsonKey(name: 'similarproductcount')
  final int? similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  @JsonKey(name: 'average_rating')
  final double? averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  final int? discountPercentage;
  @override
  @JsonKey(name: 'wow')
  final String? wow;

  @override
  String toString() {
    return 'Post(vendorId: $vendorId, vendorName: $vendorName, vendorImage: $vendorImage, hasSponsoredGifts: $hasSponsoredGifts, id: $id, title: $title, image: $image, similarProductCount: $similarProductCount, commentCount: $commentCount, averageRating: $averageRating, discountPercentage: $discountPercentage, wow: $wow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.similarProductCount, similarProductCount) ||
                other.similarProductCount == similarProductCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.wow, wow) || other.wow == wow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorId,
      vendorName,
      vendorImage,
      hasSponsoredGifts,
      id,
      title,
      image,
      similarProductCount,
      commentCount,
      averageRating,
      discountPercentage,
      wow);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {@JsonKey(name: 'vendor_id') required final String? vendorId,
      @JsonKey(name: 'vendor_name') required final String? vendorName,
      @JsonKey(name: 'vendor_image') required final String? vendorImage,
      @JsonKey(name: 'has_sponsored_gifts')
      required final bool? hasSponsoredGifts,
      required final String? id,
      required final String? title,
      required final String? image,
      @JsonKey(name: 'similarproductcount')
      required final int? similarProductCount,
      @JsonKey(name: 'comment_count') required final int? commentCount,
      @JsonKey(name: 'average_rating') required final double? averageRating,
      @JsonKey(name: 'discount_percentage')
      required final int? discountPercentage,
      @JsonKey(name: 'wow') required final String? wow}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  String? get vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  String? get vendorImage;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  @JsonKey(name: 'average_rating')
  double? get averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  int? get discountPercentage;
  @override
  @JsonKey(name: 'wow')
  String? get wow;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
