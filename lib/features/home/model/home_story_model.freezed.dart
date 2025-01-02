// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeStoryModel _$HomeStoryModelFromJson(Map<String, dynamic> json) {
  return _HomeStoryModel.fromJson(json);
}

/// @nodoc
mixin _$HomeStoryModel {
  @JsonKey(name: 'home_story')
  HomeStoryData? get homeStory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStoryModelCopyWith<HomeStoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStoryModelCopyWith<$Res> {
  factory $HomeStoryModelCopyWith(
          HomeStoryModel value, $Res Function(HomeStoryModel) then) =
      _$HomeStoryModelCopyWithImpl<$Res, HomeStoryModel>;
  @useResult
  $Res call({@JsonKey(name: 'home_story') HomeStoryData? homeStory});

  $HomeStoryDataCopyWith<$Res>? get homeStory;
}

/// @nodoc
class _$HomeStoryModelCopyWithImpl<$Res, $Val extends HomeStoryModel>
    implements $HomeStoryModelCopyWith<$Res> {
  _$HomeStoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeStory = freezed,
  }) {
    return _then(_value.copyWith(
      homeStory: freezed == homeStory
          ? _value.homeStory
          : homeStory // ignore: cast_nullable_to_non_nullable
              as HomeStoryData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStoryDataCopyWith<$Res>? get homeStory {
    if (_value.homeStory == null) {
      return null;
    }

    return $HomeStoryDataCopyWith<$Res>(_value.homeStory!, (value) {
      return _then(_value.copyWith(homeStory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStoryModelImplCopyWith<$Res>
    implements $HomeStoryModelCopyWith<$Res> {
  factory _$$HomeStoryModelImplCopyWith(_$HomeStoryModelImpl value,
          $Res Function(_$HomeStoryModelImpl) then) =
      __$$HomeStoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'home_story') HomeStoryData? homeStory});

  @override
  $HomeStoryDataCopyWith<$Res>? get homeStory;
}

/// @nodoc
class __$$HomeStoryModelImplCopyWithImpl<$Res>
    extends _$HomeStoryModelCopyWithImpl<$Res, _$HomeStoryModelImpl>
    implements _$$HomeStoryModelImplCopyWith<$Res> {
  __$$HomeStoryModelImplCopyWithImpl(
      _$HomeStoryModelImpl _value, $Res Function(_$HomeStoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeStory = freezed,
  }) {
    return _then(_$HomeStoryModelImpl(
      homeStory: freezed == homeStory
          ? _value.homeStory
          : homeStory // ignore: cast_nullable_to_non_nullable
              as HomeStoryData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStoryModelImpl implements _HomeStoryModel {
  const _$HomeStoryModelImpl({@JsonKey(name: 'home_story') this.homeStory});

  factory _$HomeStoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'home_story')
  final HomeStoryData? homeStory;

  @override
  String toString() {
    return 'HomeStoryModel(homeStory: $homeStory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStoryModelImpl &&
            (identical(other.homeStory, homeStory) ||
                other.homeStory == homeStory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, homeStory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStoryModelImplCopyWith<_$HomeStoryModelImpl> get copyWith =>
      __$$HomeStoryModelImplCopyWithImpl<_$HomeStoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStoryModelImplToJson(
      this,
    );
  }
}

abstract class _HomeStoryModel implements HomeStoryModel {
  const factory _HomeStoryModel(
          {@JsonKey(name: 'home_story') final HomeStoryData? homeStory}) =
      _$HomeStoryModelImpl;

  factory _HomeStoryModel.fromJson(Map<String, dynamic> json) =
      _$HomeStoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'home_story')
  HomeStoryData? get homeStory;
  @override
  @JsonKey(ignore: true)
  _$$HomeStoryModelImplCopyWith<_$HomeStoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeStoryData _$HomeStoryDataFromJson(Map<String, dynamic> json) {
  return _HomeStoryData.fromJson(json);
}

/// @nodoc
mixin _$HomeStoryData {
  @JsonKey(name: 'story')
  Story? get story => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStoryDataCopyWith<HomeStoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStoryDataCopyWith<$Res> {
  factory $HomeStoryDataCopyWith(
          HomeStoryData value, $Res Function(HomeStoryData) then) =
      _$HomeStoryDataCopyWithImpl<$Res, HomeStoryData>;
  @useResult
  $Res call({@JsonKey(name: 'story') Story? story});

  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class _$HomeStoryDataCopyWithImpl<$Res, $Val extends HomeStoryData>
    implements $HomeStoryDataCopyWith<$Res> {
  _$HomeStoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$HomeStoryDataImplCopyWith<$Res>
    implements $HomeStoryDataCopyWith<$Res> {
  factory _$$HomeStoryDataImplCopyWith(
          _$HomeStoryDataImpl value, $Res Function(_$HomeStoryDataImpl) then) =
      __$$HomeStoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'story') Story? story});

  @override
  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class __$$HomeStoryDataImplCopyWithImpl<$Res>
    extends _$HomeStoryDataCopyWithImpl<$Res, _$HomeStoryDataImpl>
    implements _$$HomeStoryDataImplCopyWith<$Res> {
  __$$HomeStoryDataImplCopyWithImpl(
      _$HomeStoryDataImpl _value, $Res Function(_$HomeStoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = freezed,
  }) {
    return _then(_$HomeStoryDataImpl(
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStoryDataImpl implements _HomeStoryData {
  const _$HomeStoryDataImpl({@JsonKey(name: 'story') this.story});

  factory _$HomeStoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStoryDataImplFromJson(json);

  @override
  @JsonKey(name: 'story')
  final Story? story;

  @override
  String toString() {
    return 'HomeStoryData(story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStoryDataImpl &&
            (identical(other.story, story) || other.story == story));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStoryDataImplCopyWith<_$HomeStoryDataImpl> get copyWith =>
      __$$HomeStoryDataImplCopyWithImpl<_$HomeStoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStoryDataImplToJson(
      this,
    );
  }
}

abstract class _HomeStoryData implements HomeStoryData {
  const factory _HomeStoryData({@JsonKey(name: 'story') final Story? story}) =
      _$HomeStoryDataImpl;

  factory _HomeStoryData.fromJson(Map<String, dynamic> json) =
      _$HomeStoryDataImpl.fromJson;

  @override
  @JsonKey(name: 'story')
  Story? get story;
  @override
  @JsonKey(ignore: true)
  _$$HomeStoryDataImplCopyWith<_$HomeStoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  @JsonKey(name: 'posts')
  List<Post>? get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  const _$StoryImpl({@JsonKey(name: 'posts') final List<Post>? posts})
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

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
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
  const factory _Story({@JsonKey(name: 'posts') final List<Post>? posts}) =
      _$StoryImpl;

  factory _Story.fromJson(Map<String, dynamic> json) = _$StoryImpl.fromJson;

  @override
  @JsonKey(name: 'posts')
  List<Post>? get posts;
  @override
  @JsonKey(ignore: true)
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
  @JsonKey(name: 'story_count')
  int? get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  String? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  dynamic get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'wow')
  String? get wow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(name: 'story_count') int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') dynamic averageRating,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? storyCount = freezed,
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
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
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
      @JsonKey(name: 'story_count') int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'similarproductcount') int? similarProductCount,
      @JsonKey(name: 'comment_count') String? commentCount,
      @JsonKey(name: 'average_rating') dynamic averageRating,
      @JsonKey(name: 'discount_percentage') double? discountPercentage,
      @JsonKey(name: 'wow') String? wow});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
    Object? storyCount = freezed,
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
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
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
      {@JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'story_count') this.storyCount,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'similarproductcount') this.similarProductCount,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'average_rating') this.averageRating,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      @JsonKey(name: 'wow') this.wow});

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
  @JsonKey(name: 'story_count')
  final int? storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'similarproductcount')
  final int? similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  final String? commentCount;
  @override
  @JsonKey(name: 'average_rating')
  final dynamic averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;
  @override
  @JsonKey(name: 'wow')
  final String? wow;

  @override
  String toString() {
    return 'Post(vendorId: $vendorId, vendorName: $vendorName, vendorImage: $vendorImage, storyCount: $storyCount, hasSponsoredGifts: $hasSponsoredGifts, id: $id, title: $title, image: $image, similarProductCount: $similarProductCount, commentCount: $commentCount, averageRating: $averageRating, discountPercentage: $discountPercentage, wow: $wow)';
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
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.similarProductCount, similarProductCount) ||
                other.similarProductCount == similarProductCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            const DeepCollectionEquality()
                .equals(other.averageRating, averageRating) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.wow, wow) || other.wow == wow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorId,
      vendorName,
      vendorImage,
      storyCount,
      hasSponsoredGifts,
      id,
      title,
      image,
      similarProductCount,
      commentCount,
      const DeepCollectionEquality().hash(averageRating),
      discountPercentage,
      wow);

  @JsonKey(ignore: true)
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
      {@JsonKey(name: 'vendor_id') final String? vendorId,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_image') final String? vendorImage,
      @JsonKey(name: 'story_count') final int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'similarproductcount') final int? similarProductCount,
      @JsonKey(name: 'comment_count') final String? commentCount,
      @JsonKey(name: 'average_rating') final dynamic averageRating,
      @JsonKey(name: 'discount_percentage') final double? discountPercentage,
      @JsonKey(name: 'wow') final String? wow}) = _$PostImpl;

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
  @JsonKey(name: 'story_count')
  int? get storyCount;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'similarproductcount')
  int? get similarProductCount;
  @override
  @JsonKey(name: 'comment_count')
  String? get commentCount;
  @override
  @JsonKey(name: 'average_rating')
  dynamic get averageRating;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;
  @override
  @JsonKey(name: 'wow')
  String? get wow;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
