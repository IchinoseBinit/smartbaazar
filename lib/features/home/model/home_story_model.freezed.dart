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

  /// Serializes this HomeStoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeStoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of HomeStoryModel
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
              as HomeStoryData?,
    ) as $Val);
  }

  /// Create a copy of HomeStoryModel
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of HomeStoryModel
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, homeStory);

  /// Create a copy of HomeStoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of HomeStoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this HomeStoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeStoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of HomeStoryData
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

  /// Create a copy of HomeStoryData
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

  /// Create a copy of HomeStoryData
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, story);

  /// Create a copy of HomeStoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of HomeStoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStoryDataImplCopyWith<_$HomeStoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  @JsonKey(name: 'HomeStoryAllPosts')
  List<HomeStoryAllPost>? get HomeStoryAllPosts =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'HomeStoryAllPosts')
      List<HomeStoryAllPost>? HomeStoryAllPosts});
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
    Object? HomeStoryAllPosts = freezed,
  }) {
    return _then(_value.copyWith(
      HomeStoryAllPosts: freezed == HomeStoryAllPosts
          ? _value.HomeStoryAllPosts
          : HomeStoryAllPosts // ignore: cast_nullable_to_non_nullable
              as List<HomeStoryAllPost>?,
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
  $Res call(
      {@JsonKey(name: 'HomeStoryAllPosts')
      List<HomeStoryAllPost>? HomeStoryAllPosts});
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
    Object? HomeStoryAllPosts = freezed,
  }) {
    return _then(_$StoryImpl(
      HomeStoryAllPosts: freezed == HomeStoryAllPosts
          ? _value._HomeStoryAllPosts
          : HomeStoryAllPosts // ignore: cast_nullable_to_non_nullable
              as List<HomeStoryAllPost>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryImpl implements _Story {
  const _$StoryImpl(
      {@JsonKey(name: 'HomeStoryAllPosts')
      final List<HomeStoryAllPost>? HomeStoryAllPosts})
      : _HomeStoryAllPosts = HomeStoryAllPosts;

  factory _$StoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryImplFromJson(json);

  final List<HomeStoryAllPost>? _HomeStoryAllPosts;
  @override
  @JsonKey(name: 'HomeStoryAllPosts')
  List<HomeStoryAllPost>? get HomeStoryAllPosts {
    final value = _HomeStoryAllPosts;
    if (value == null) return null;
    if (_HomeStoryAllPosts is EqualUnmodifiableListView)
      return _HomeStoryAllPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Story(HomeStoryAllPosts: $HomeStoryAllPosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryImpl &&
            const DeepCollectionEquality()
                .equals(other._HomeStoryAllPosts, _HomeStoryAllPosts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_HomeStoryAllPosts));

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
      {@JsonKey(name: 'HomeStoryAllPosts')
      final List<HomeStoryAllPost>? HomeStoryAllPosts}) = _$StoryImpl;

  factory _Story.fromJson(Map<String, dynamic> json) = _$StoryImpl.fromJson;

  @override
  @JsonKey(name: 'HomeStoryAllPosts')
  List<HomeStoryAllPost>? get HomeStoryAllPosts;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeStoryAllPost _$HomeStoryAllPostFromJson(Map<String, dynamic> json) {
  return _HomeStoryAllPost.fromJson(json);
}

/// @nodoc
mixin _$HomeStoryAllPost {
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

  /// Serializes this HomeStoryAllPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeStoryAllPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStoryAllPostCopyWith<HomeStoryAllPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStoryAllPostCopyWith<$Res> {
  factory $HomeStoryAllPostCopyWith(
          HomeStoryAllPost value, $Res Function(HomeStoryAllPost) then) =
      _$HomeStoryAllPostCopyWithImpl<$Res, HomeStoryAllPost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'story_count') int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$HomeStoryAllPostCopyWithImpl<$Res, $Val extends HomeStoryAllPost>
    implements $HomeStoryAllPostCopyWith<$Res> {
  _$HomeStoryAllPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeStoryAllPost
  /// with the given fields replaced by the non-null parameter values.
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStoryAllPostImplCopyWith<$Res>
    implements $HomeStoryAllPostCopyWith<$Res> {
  factory _$$HomeStoryAllPostImplCopyWith(_$HomeStoryAllPostImpl value,
          $Res Function(_$HomeStoryAllPostImpl) then) =
      __$$HomeStoryAllPostImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$HomeStoryAllPostImplCopyWithImpl<$Res>
    extends _$HomeStoryAllPostCopyWithImpl<$Res, _$HomeStoryAllPostImpl>
    implements _$$HomeStoryAllPostImplCopyWith<$Res> {
  __$$HomeStoryAllPostImplCopyWithImpl(_$HomeStoryAllPostImpl _value,
      $Res Function(_$HomeStoryAllPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeStoryAllPost
  /// with the given fields replaced by the non-null parameter values.
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
  }) {
    return _then(_$HomeStoryAllPostImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStoryAllPostImpl implements _HomeStoryAllPost {
  const _$HomeStoryAllPostImpl(
      {@JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'story_count') this.storyCount,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image});

  factory _$HomeStoryAllPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStoryAllPostImplFromJson(json);

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
  String toString() {
    return 'HomeStoryAllPost(vendorId: $vendorId, vendorName: $vendorName, vendorImage: $vendorImage, storyCount: $storyCount, hasSponsoredGifts: $hasSponsoredGifts, id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStoryAllPostImpl &&
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
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vendorId, vendorName,
      vendorImage, storyCount, hasSponsoredGifts, id, title, image);

  /// Create a copy of HomeStoryAllPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStoryAllPostImplCopyWith<_$HomeStoryAllPostImpl> get copyWith =>
      __$$HomeStoryAllPostImplCopyWithImpl<_$HomeStoryAllPostImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStoryAllPostImplToJson(
      this,
    );
  }
}

abstract class _HomeStoryAllPost implements HomeStoryAllPost {
  const factory _HomeStoryAllPost(
      {@JsonKey(name: 'vendor_id') final String? vendorId,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_image') final String? vendorImage,
      @JsonKey(name: 'story_count') final int? storyCount,
      @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'image') final String? image}) = _$HomeStoryAllPostImpl;

  factory _HomeStoryAllPost.fromJson(Map<String, dynamic> json) =
      _$HomeStoryAllPostImpl.fromJson;

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

  /// Create a copy of HomeStoryAllPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStoryAllPostImplCopyWith<_$HomeStoryAllPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
