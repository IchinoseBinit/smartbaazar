// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_subscribe_and_win_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MySubscribeAndWinModel _$MySubscribeAndWinModelFromJson(
    Map<String, dynamic> json) {
  return _MySubscribeAndWinModel.fromJson(json);
}

/// @nodoc
mixin _$MySubscribeAndWinModel {
  @JsonKey(name: 'content3')
  List<Content3>? get content3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'content4')
  List<Content4>? get content4 => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'gifts')
  List<Gift>? get gifts => throw _privateConstructorUsedError;
  @JsonKey(name: 'sponsor_vendors')
  List<SponsorVendor>? get sponsorVendors => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_woth')
  int? get totalWorth => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_count')
  int? get giftCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'winners')
  List<Winner>? get winners => throw _privateConstructorUsedError;
  @JsonKey(name: 'scratchs')
  List<Scratch>? get scratches => throw _privateConstructorUsedError;

  /// Serializes this MySubscribeAndWinModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MySubscribeAndWinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MySubscribeAndWinModelCopyWith<MySubscribeAndWinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySubscribeAndWinModelCopyWith<$Res> {
  factory $MySubscribeAndWinModelCopyWith(MySubscribeAndWinModel value,
          $Res Function(MySubscribeAndWinModel) then) =
      _$MySubscribeAndWinModelCopyWithImpl<$Res, MySubscribeAndWinModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content3') List<Content3>? content3,
      @JsonKey(name: 'content4') List<Content4>? content4,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'gifts') List<Gift>? gifts,
      @JsonKey(name: 'sponsor_vendors') List<SponsorVendor>? sponsorVendors,
      @JsonKey(name: 'total_woth') int? totalWorth,
      @JsonKey(name: 'gift_count') int? giftCount,
      @JsonKey(name: 'winners') List<Winner>? winners,
      @JsonKey(name: 'scratchs') List<Scratch>? scratches});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MySubscribeAndWinModelCopyWithImpl<$Res,
        $Val extends MySubscribeAndWinModel>
    implements $MySubscribeAndWinModelCopyWith<$Res> {
  _$MySubscribeAndWinModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MySubscribeAndWinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content3 = freezed,
    Object? content4 = freezed,
    Object? user = freezed,
    Object? gifts = freezed,
    Object? sponsorVendors = freezed,
    Object? totalWorth = freezed,
    Object? giftCount = freezed,
    Object? winners = freezed,
    Object? scratches = freezed,
  }) {
    return _then(_value.copyWith(
      content3: freezed == content3
          ? _value.content3
          : content3 // ignore: cast_nullable_to_non_nullable
              as List<Content3>?,
      content4: freezed == content4
          ? _value.content4
          : content4 // ignore: cast_nullable_to_non_nullable
              as List<Content4>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      gifts: freezed == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>?,
      sponsorVendors: freezed == sponsorVendors
          ? _value.sponsorVendors
          : sponsorVendors // ignore: cast_nullable_to_non_nullable
              as List<SponsorVendor>?,
      totalWorth: freezed == totalWorth
          ? _value.totalWorth
          : totalWorth // ignore: cast_nullable_to_non_nullable
              as int?,
      giftCount: freezed == giftCount
          ? _value.giftCount
          : giftCount // ignore: cast_nullable_to_non_nullable
              as int?,
      winners: freezed == winners
          ? _value.winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<Winner>?,
      scratches: freezed == scratches
          ? _value.scratches
          : scratches // ignore: cast_nullable_to_non_nullable
              as List<Scratch>?,
    ) as $Val);
  }

  /// Create a copy of MySubscribeAndWinModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MySubscribeAndWinModelImplCopyWith<$Res>
    implements $MySubscribeAndWinModelCopyWith<$Res> {
  factory _$$MySubscribeAndWinModelImplCopyWith(
          _$MySubscribeAndWinModelImpl value,
          $Res Function(_$MySubscribeAndWinModelImpl) then) =
      __$$MySubscribeAndWinModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content3') List<Content3>? content3,
      @JsonKey(name: 'content4') List<Content4>? content4,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'gifts') List<Gift>? gifts,
      @JsonKey(name: 'sponsor_vendors') List<SponsorVendor>? sponsorVendors,
      @JsonKey(name: 'total_woth') int? totalWorth,
      @JsonKey(name: 'gift_count') int? giftCount,
      @JsonKey(name: 'winners') List<Winner>? winners,
      @JsonKey(name: 'scratchs') List<Scratch>? scratches});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MySubscribeAndWinModelImplCopyWithImpl<$Res>
    extends _$MySubscribeAndWinModelCopyWithImpl<$Res,
        _$MySubscribeAndWinModelImpl>
    implements _$$MySubscribeAndWinModelImplCopyWith<$Res> {
  __$$MySubscribeAndWinModelImplCopyWithImpl(
      _$MySubscribeAndWinModelImpl _value,
      $Res Function(_$MySubscribeAndWinModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MySubscribeAndWinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content3 = freezed,
    Object? content4 = freezed,
    Object? user = freezed,
    Object? gifts = freezed,
    Object? sponsorVendors = freezed,
    Object? totalWorth = freezed,
    Object? giftCount = freezed,
    Object? winners = freezed,
    Object? scratches = freezed,
  }) {
    return _then(_$MySubscribeAndWinModelImpl(
      content3: freezed == content3
          ? _value._content3
          : content3 // ignore: cast_nullable_to_non_nullable
              as List<Content3>?,
      content4: freezed == content4
          ? _value._content4
          : content4 // ignore: cast_nullable_to_non_nullable
              as List<Content4>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      gifts: freezed == gifts
          ? _value._gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>?,
      sponsorVendors: freezed == sponsorVendors
          ? _value._sponsorVendors
          : sponsorVendors // ignore: cast_nullable_to_non_nullable
              as List<SponsorVendor>?,
      totalWorth: freezed == totalWorth
          ? _value.totalWorth
          : totalWorth // ignore: cast_nullable_to_non_nullable
              as int?,
      giftCount: freezed == giftCount
          ? _value.giftCount
          : giftCount // ignore: cast_nullable_to_non_nullable
              as int?,
      winners: freezed == winners
          ? _value._winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<Winner>?,
      scratches: freezed == scratches
          ? _value._scratches
          : scratches // ignore: cast_nullable_to_non_nullable
              as List<Scratch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MySubscribeAndWinModelImpl implements _MySubscribeAndWinModel {
  _$MySubscribeAndWinModelImpl(
      {@JsonKey(name: 'content3') final List<Content3>? content3,
      @JsonKey(name: 'content4') final List<Content4>? content4,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'gifts') final List<Gift>? gifts,
      @JsonKey(name: 'sponsor_vendors')
      final List<SponsorVendor>? sponsorVendors,
      @JsonKey(name: 'total_woth') this.totalWorth,
      @JsonKey(name: 'gift_count') this.giftCount,
      @JsonKey(name: 'winners') final List<Winner>? winners,
      @JsonKey(name: 'scratchs') final List<Scratch>? scratches})
      : _content3 = content3,
        _content4 = content4,
        _gifts = gifts,
        _sponsorVendors = sponsorVendors,
        _winners = winners,
        _scratches = scratches;

  factory _$MySubscribeAndWinModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MySubscribeAndWinModelImplFromJson(json);

  final List<Content3>? _content3;
  @override
  @JsonKey(name: 'content3')
  List<Content3>? get content3 {
    final value = _content3;
    if (value == null) return null;
    if (_content3 is EqualUnmodifiableListView) return _content3;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Content4>? _content4;
  @override
  @JsonKey(name: 'content4')
  List<Content4>? get content4 {
    final value = _content4;
    if (value == null) return null;
    if (_content4 is EqualUnmodifiableListView) return _content4;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user')
  final User? user;
  final List<Gift>? _gifts;
  @override
  @JsonKey(name: 'gifts')
  List<Gift>? get gifts {
    final value = _gifts;
    if (value == null) return null;
    if (_gifts is EqualUnmodifiableListView) return _gifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SponsorVendor>? _sponsorVendors;
  @override
  @JsonKey(name: 'sponsor_vendors')
  List<SponsorVendor>? get sponsorVendors {
    final value = _sponsorVendors;
    if (value == null) return null;
    if (_sponsorVendors is EqualUnmodifiableListView) return _sponsorVendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_woth')
  final int? totalWorth;
  @override
  @JsonKey(name: 'gift_count')
  final int? giftCount;
  final List<Winner>? _winners;
  @override
  @JsonKey(name: 'winners')
  List<Winner>? get winners {
    final value = _winners;
    if (value == null) return null;
    if (_winners is EqualUnmodifiableListView) return _winners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Scratch>? _scratches;
  @override
  @JsonKey(name: 'scratchs')
  List<Scratch>? get scratches {
    final value = _scratches;
    if (value == null) return null;
    if (_scratches is EqualUnmodifiableListView) return _scratches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MySubscribeAndWinModel(content3: $content3, content4: $content4, user: $user, gifts: $gifts, sponsorVendors: $sponsorVendors, totalWorth: $totalWorth, giftCount: $giftCount, winners: $winners, scratches: $scratches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MySubscribeAndWinModelImpl &&
            const DeepCollectionEquality().equals(other._content3, _content3) &&
            const DeepCollectionEquality().equals(other._content4, _content4) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._gifts, _gifts) &&
            const DeepCollectionEquality()
                .equals(other._sponsorVendors, _sponsorVendors) &&
            (identical(other.totalWorth, totalWorth) ||
                other.totalWorth == totalWorth) &&
            (identical(other.giftCount, giftCount) ||
                other.giftCount == giftCount) &&
            const DeepCollectionEquality().equals(other._winners, _winners) &&
            const DeepCollectionEquality()
                .equals(other._scratches, _scratches));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content3),
      const DeepCollectionEquality().hash(_content4),
      user,
      const DeepCollectionEquality().hash(_gifts),
      const DeepCollectionEquality().hash(_sponsorVendors),
      totalWorth,
      giftCount,
      const DeepCollectionEquality().hash(_winners),
      const DeepCollectionEquality().hash(_scratches));

  /// Create a copy of MySubscribeAndWinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MySubscribeAndWinModelImplCopyWith<_$MySubscribeAndWinModelImpl>
      get copyWith => __$$MySubscribeAndWinModelImplCopyWithImpl<
          _$MySubscribeAndWinModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MySubscribeAndWinModelImplToJson(
      this,
    );
  }
}

abstract class _MySubscribeAndWinModel implements MySubscribeAndWinModel {
  factory _MySubscribeAndWinModel(
          {@JsonKey(name: 'content3') final List<Content3>? content3,
          @JsonKey(name: 'content4') final List<Content4>? content4,
          @JsonKey(name: 'user') final User? user,
          @JsonKey(name: 'gifts') final List<Gift>? gifts,
          @JsonKey(name: 'sponsor_vendors')
          final List<SponsorVendor>? sponsorVendors,
          @JsonKey(name: 'total_woth') final int? totalWorth,
          @JsonKey(name: 'gift_count') final int? giftCount,
          @JsonKey(name: 'winners') final List<Winner>? winners,
          @JsonKey(name: 'scratchs') final List<Scratch>? scratches}) =
      _$MySubscribeAndWinModelImpl;

  factory _MySubscribeAndWinModel.fromJson(Map<String, dynamic> json) =
      _$MySubscribeAndWinModelImpl.fromJson;

  @override
  @JsonKey(name: 'content3')
  List<Content3>? get content3;
  @override
  @JsonKey(name: 'content4')
  List<Content4>? get content4;
  @override
  @JsonKey(name: 'user')
  User? get user;
  @override
  @JsonKey(name: 'gifts')
  List<Gift>? get gifts;
  @override
  @JsonKey(name: 'sponsor_vendors')
  List<SponsorVendor>? get sponsorVendors;
  @override
  @JsonKey(name: 'total_woth')
  int? get totalWorth;
  @override
  @JsonKey(name: 'gift_count')
  int? get giftCount;
  @override
  @JsonKey(name: 'winners')
  List<Winner>? get winners;
  @override
  @JsonKey(name: 'scratchs')
  List<Scratch>? get scratches;

  /// Create a copy of MySubscribeAndWinModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MySubscribeAndWinModelImplCopyWith<_$MySubscribeAndWinModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Content3 _$Content3FromJson(Map<String, dynamic> json) {
  return _Content3.fromJson(json);
}

/// @nodoc
mixin _$Content3 {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this Content3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Content3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Content3CopyWith<Content3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Content3CopyWith<$Res> {
  factory $Content3CopyWith(Content3 value, $Res Function(Content3) then) =
      _$Content3CopyWithImpl<$Res, Content3>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class _$Content3CopyWithImpl<$Res, $Val extends Content3>
    implements $Content3CopyWith<$Res> {
  _$Content3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Content3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Content3ImplCopyWith<$Res>
    implements $Content3CopyWith<$Res> {
  factory _$$Content3ImplCopyWith(
          _$Content3Impl value, $Res Function(_$Content3Impl) then) =
      __$$Content3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class __$$Content3ImplCopyWithImpl<$Res>
    extends _$Content3CopyWithImpl<$Res, _$Content3Impl>
    implements _$$Content3ImplCopyWith<$Res> {
  __$$Content3ImplCopyWithImpl(
      _$Content3Impl _value, $Res Function(_$Content3Impl) _then)
      : super(_value, _then);

  /// Create a copy of Content3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_$Content3Impl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Content3Impl implements _Content3 {
  _$Content3Impl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'content') this.content});

  factory _$Content3Impl.fromJson(Map<String, dynamic> json) =>
      _$$Content3ImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'content')
  final String? content;

  @override
  String toString() {
    return 'Content3(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Content3Impl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of Content3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Content3ImplCopyWith<_$Content3Impl> get copyWith =>
      __$$Content3ImplCopyWithImpl<_$Content3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Content3ImplToJson(
      this,
    );
  }
}

abstract class _Content3 implements Content3 {
  factory _Content3(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'content') final String? content}) = _$Content3Impl;

  factory _Content3.fromJson(Map<String, dynamic> json) =
      _$Content3Impl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'content')
  String? get content;

  /// Create a copy of Content3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Content3ImplCopyWith<_$Content3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Content4 _$Content4FromJson(Map<String, dynamic> json) {
  return _Content4.fromJson(json);
}

/// @nodoc
mixin _$Content4 {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this Content4 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Content4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Content4CopyWith<Content4> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Content4CopyWith<$Res> {
  factory $Content4CopyWith(Content4 value, $Res Function(Content4) then) =
      _$Content4CopyWithImpl<$Res, Content4>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class _$Content4CopyWithImpl<$Res, $Val extends Content4>
    implements $Content4CopyWith<$Res> {
  _$Content4CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Content4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Content4ImplCopyWith<$Res>
    implements $Content4CopyWith<$Res> {
  factory _$$Content4ImplCopyWith(
          _$Content4Impl value, $Res Function(_$Content4Impl) then) =
      __$$Content4ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class __$$Content4ImplCopyWithImpl<$Res>
    extends _$Content4CopyWithImpl<$Res, _$Content4Impl>
    implements _$$Content4ImplCopyWith<$Res> {
  __$$Content4ImplCopyWithImpl(
      _$Content4Impl _value, $Res Function(_$Content4Impl) _then)
      : super(_value, _then);

  /// Create a copy of Content4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_$Content4Impl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Content4Impl implements _Content4 {
  _$Content4Impl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'content') this.content});

  factory _$Content4Impl.fromJson(Map<String, dynamic> json) =>
      _$$Content4ImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'content')
  final String? content;

  @override
  String toString() {
    return 'Content4(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Content4Impl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of Content4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Content4ImplCopyWith<_$Content4Impl> get copyWith =>
      __$$Content4ImplCopyWithImpl<_$Content4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Content4ImplToJson(
      this,
    );
  }
}

abstract class _Content4 implements Content4 {
  factory _Content4(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'content') final String? content}) = _$Content4Impl;

  factory _Content4.fromJson(Map<String, dynamic> json) =
      _$Content4Impl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'content')
  String? get content;

  /// Create a copy of Content4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Content4ImplCopyWith<_$Content4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? name = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? name = freezed,
    Object? username = freezed,
  }) {
    return _then(_$UserImpl(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {@JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;

  @override
  String toString() {
    return 'User(photo: $photo, name: $name, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photo, name, username);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gift _$GiftFromJson(Map<String, dynamic> json) {
  return _Gift.fromJson(json);
}

/// @nodoc
mixin _$Gift {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_id')
  String? get giftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'gifts')
  GiftDetails? get giftDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendors')
  Vendor? get vendor => throw _privateConstructorUsedError;

  /// Serializes this Gift to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftCopyWith<Gift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) then) =
      _$GiftCopyWithImpl<$Res, Gift>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'gift_id') String? giftId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'gifts') GiftDetails? giftDetails,
      @JsonKey(name: 'vendors') Vendor? vendor});

  $GiftDetailsCopyWith<$Res>? get giftDetails;
  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class _$GiftCopyWithImpl<$Res, $Val extends Gift>
    implements $GiftCopyWith<$Res> {
  _$GiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? giftId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? giftDetails = freezed,
    Object? vendor = freezed,
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
      giftId: freezed == giftId
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      giftDetails: freezed == giftDetails
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as GiftDetails?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
    ) as $Val);
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftDetailsCopyWith<$Res>? get giftDetails {
    if (_value.giftDetails == null) {
      return null;
    }

    return $GiftDetailsCopyWith<$Res>(_value.giftDetails!, (value) {
      return _then(_value.copyWith(giftDetails: value) as $Val);
    });
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GiftImplCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$$GiftImplCopyWith(
          _$GiftImpl value, $Res Function(_$GiftImpl) then) =
      __$$GiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'gift_id') String? giftId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'gifts') GiftDetails? giftDetails,
      @JsonKey(name: 'vendors') Vendor? vendor});

  @override
  $GiftDetailsCopyWith<$Res>? get giftDetails;
  @override
  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class __$$GiftImplCopyWithImpl<$Res>
    extends _$GiftCopyWithImpl<$Res, _$GiftImpl>
    implements _$$GiftImplCopyWith<$Res> {
  __$$GiftImplCopyWithImpl(_$GiftImpl _value, $Res Function(_$GiftImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? giftId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? giftDetails = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_$GiftImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      giftId: freezed == giftId
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      giftDetails: freezed == giftDetails
          ? _value.giftDetails
          : giftDetails // ignore: cast_nullable_to_non_nullable
              as GiftDetails?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftImpl implements _Gift {
  _$GiftImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'gift_id') this.giftId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'gifts') this.giftDetails,
      @JsonKey(name: 'vendors') this.vendor});

  factory _$GiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'gift_id')
  final String? giftId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'gifts')
  final GiftDetails? giftDetails;
  @override
  @JsonKey(name: 'vendors')
  final Vendor? vendor;

  @override
  String toString() {
    return 'Gift(id: $id, userId: $userId, giftId: $giftId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, giftDetails: $giftDetails, vendor: $vendor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.giftId, giftId) || other.giftId == giftId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.giftDetails, giftDetails) ||
                other.giftDetails == giftDetails) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, giftId, status,
      createdAt, updatedAt, giftDetails, vendor);

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftImplCopyWith<_$GiftImpl> get copyWith =>
      __$$GiftImplCopyWithImpl<_$GiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftImplToJson(
      this,
    );
  }
}

abstract class _Gift implements Gift {
  factory _Gift(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'gift_id') final String? giftId,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'gifts') final GiftDetails? giftDetails,
      @JsonKey(name: 'vendors') final Vendor? vendor}) = _$GiftImpl;

  factory _Gift.fromJson(Map<String, dynamic> json) = _$GiftImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'gift_id')
  String? get giftId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'gifts')
  GiftDetails? get giftDetails;
  @override
  @JsonKey(name: 'vendors')
  Vendor? get vendor;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftImplCopyWith<_$GiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftDetails _$GiftDetailsFromJson(Map<String, dynamic> json) {
  return _GiftDetails.fromJson(json);
}

/// @nodoc
mixin _$GiftDetails {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'worth')
  String? get worth => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this GiftDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiftDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftDetailsCopyWith<GiftDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftDetailsCopyWith<$Res> {
  factory $GiftDetailsCopyWith(
          GiftDetails value, $Res Function(GiftDetails) then) =
      _$GiftDetailsCopyWithImpl<$Res, GiftDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'worth') String? worth,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$GiftDetailsCopyWithImpl<$Res, $Val extends GiftDetails>
    implements $GiftDetailsCopyWith<$Res> {
  _$GiftDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? createdAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftDetailsImplCopyWith<$Res>
    implements $GiftDetailsCopyWith<$Res> {
  factory _$$GiftDetailsImplCopyWith(
          _$GiftDetailsImpl value, $Res Function(_$GiftDetailsImpl) then) =
      __$$GiftDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'worth') String? worth,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$GiftDetailsImplCopyWithImpl<$Res>
    extends _$GiftDetailsCopyWithImpl<$Res, _$GiftDetailsImpl>
    implements _$$GiftDetailsImplCopyWith<$Res> {
  __$$GiftDetailsImplCopyWithImpl(
      _$GiftDetailsImpl _value, $Res Function(_$GiftDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? createdAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$GiftDetailsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftDetailsImpl implements _GiftDetails {
  _$GiftDetailsImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'worth') this.worth,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'image_url') this.imageUrl});

  factory _$GiftDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'worth')
  final String? worth;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'GiftDetails(name: $name, image: $image, worth: $worth, createdAt: $createdAt, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftDetailsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.worth, worth) || other.worth == worth) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, image, worth, createdAt, imageUrl);

  /// Create a copy of GiftDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftDetailsImplCopyWith<_$GiftDetailsImpl> get copyWith =>
      __$$GiftDetailsImplCopyWithImpl<_$GiftDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftDetailsImplToJson(
      this,
    );
  }
}

abstract class _GiftDetails implements GiftDetails {
  factory _GiftDetails(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'worth') final String? worth,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$GiftDetailsImpl;

  factory _GiftDetails.fromJson(Map<String, dynamic> json) =
      _$GiftDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'worth')
  String? get worth;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of GiftDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftDetailsImplCopyWith<_$GiftDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;

  /// Serializes this Vendor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? name = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorImplCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$VendorImplCopyWith(
          _$VendorImpl value, $Res Function(_$VendorImpl) then) =
      __$$VendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? name = freezed,
    Object? username = freezed,
  }) {
    return _then(_$VendorImpl(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  _$VendorImpl(
      {@JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username});

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;

  @override
  String toString() {
    return 'Vendor(photo: $photo, name: $name, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photo, name, username);

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      __$$VendorImplCopyWithImpl<_$VendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorImplToJson(
      this,
    );
  }
}

abstract class _Vendor implements Vendor {
  factory _Vendor(
      {@JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SponsorVendor _$SponsorVendorFromJson(Map<String, dynamic> json) {
  return _SponsorVendor.fromJson(json);
}

/// @nodoc
mixin _$SponsorVendor {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;

  /// Serializes this SponsorVendor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorVendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorVendorCopyWith<SponsorVendor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorVendorCopyWith<$Res> {
  factory $SponsorVendorCopyWith(
          SponsorVendor value, $Res Function(SponsorVendor) then) =
      _$SponsorVendorCopyWithImpl<$Res, SponsorVendor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class _$SponsorVendorCopyWithImpl<$Res, $Val extends SponsorVendor>
    implements $SponsorVendorCopyWith<$Res> {
  _$SponsorVendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorVendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorVendorImplCopyWith<$Res>
    implements $SponsorVendorCopyWith<$Res> {
  factory _$$SponsorVendorImplCopyWith(
          _$SponsorVendorImpl value, $Res Function(_$SponsorVendorImpl) then) =
      __$$SponsorVendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'username') String? username});
}

/// @nodoc
class __$$SponsorVendorImplCopyWithImpl<$Res>
    extends _$SponsorVendorCopyWithImpl<$Res, _$SponsorVendorImpl>
    implements _$$SponsorVendorImplCopyWith<$Res> {
  __$$SponsorVendorImplCopyWithImpl(
      _$SponsorVendorImpl _value, $Res Function(_$SponsorVendorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorVendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? username = freezed,
  }) {
    return _then(_$SponsorVendorImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorVendorImpl implements _SponsorVendor {
  _$SponsorVendorImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'username') this.username});

  factory _$SponsorVendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorVendorImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'username')
  final String? username;

  @override
  String toString() {
    return 'SponsorVendor(name: $name, photo: $photo, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorVendorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, photo, username);

  /// Create a copy of SponsorVendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorVendorImplCopyWith<_$SponsorVendorImpl> get copyWith =>
      __$$SponsorVendorImplCopyWithImpl<_$SponsorVendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorVendorImplToJson(
      this,
    );
  }
}

abstract class _SponsorVendor implements SponsorVendor {
  factory _SponsorVendor(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'username') final String? username}) = _$SponsorVendorImpl;

  factory _SponsorVendor.fromJson(Map<String, dynamic> json) =
      _$SponsorVendorImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'username')
  String? get username;

  /// Create a copy of SponsorVendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorVendorImplCopyWith<_$SponsorVendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Winner _$WinnerFromJson(Map<String, dynamic> json) {
  return _Winner.fromJson(json);
}

/// @nodoc
mixin _$Winner {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_id')
  String? get giftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_worth')
  GiftWorth? get giftWorth => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  WinnerName? get name => throw _privateConstructorUsedError;

  /// Serializes this Winner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Winner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WinnerCopyWith<Winner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinnerCopyWith<$Res> {
  factory $WinnerCopyWith(Winner value, $Res Function(Winner) then) =
      _$WinnerCopyWithImpl<$Res, Winner>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'gift_id') String? giftId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'gift_worth') GiftWorth? giftWorth,
      @JsonKey(name: 'name') WinnerName? name});

  $GiftWorthCopyWith<$Res>? get giftWorth;
  $WinnerNameCopyWith<$Res>? get name;
}

/// @nodoc
class _$WinnerCopyWithImpl<$Res, $Val extends Winner>
    implements $WinnerCopyWith<$Res> {
  _$WinnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Winner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? giftId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? giftWorth = freezed,
    Object? name = freezed,
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
      giftId: freezed == giftId
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      giftWorth: freezed == giftWorth
          ? _value.giftWorth
          : giftWorth // ignore: cast_nullable_to_non_nullable
              as GiftWorth?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as WinnerName?,
    ) as $Val);
  }

  /// Create a copy of Winner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftWorthCopyWith<$Res>? get giftWorth {
    if (_value.giftWorth == null) {
      return null;
    }

    return $GiftWorthCopyWith<$Res>(_value.giftWorth!, (value) {
      return _then(_value.copyWith(giftWorth: value) as $Val);
    });
  }

  /// Create a copy of Winner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WinnerNameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $WinnerNameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WinnerImplCopyWith<$Res> implements $WinnerCopyWith<$Res> {
  factory _$$WinnerImplCopyWith(
          _$WinnerImpl value, $Res Function(_$WinnerImpl) then) =
      __$$WinnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'gift_id') String? giftId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'gift_worth') GiftWorth? giftWorth,
      @JsonKey(name: 'name') WinnerName? name});

  @override
  $GiftWorthCopyWith<$Res>? get giftWorth;
  @override
  $WinnerNameCopyWith<$Res>? get name;
}

/// @nodoc
class __$$WinnerImplCopyWithImpl<$Res>
    extends _$WinnerCopyWithImpl<$Res, _$WinnerImpl>
    implements _$$WinnerImplCopyWith<$Res> {
  __$$WinnerImplCopyWithImpl(
      _$WinnerImpl _value, $Res Function(_$WinnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Winner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? giftId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? giftWorth = freezed,
    Object? name = freezed,
  }) {
    return _then(_$WinnerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      giftId: freezed == giftId
          ? _value.giftId
          : giftId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      giftWorth: freezed == giftWorth
          ? _value.giftWorth
          : giftWorth // ignore: cast_nullable_to_non_nullable
              as GiftWorth?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as WinnerName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WinnerImpl implements _Winner {
  _$WinnerImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'gift_id') this.giftId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'gift_worth') this.giftWorth,
      @JsonKey(name: 'name') this.name});

  factory _$WinnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$WinnerImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'gift_id')
  final String? giftId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'gift_worth')
  final GiftWorth? giftWorth;
  @override
  @JsonKey(name: 'name')
  final WinnerName? name;

  @override
  String toString() {
    return 'Winner(id: $id, userId: $userId, giftId: $giftId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, giftWorth: $giftWorth, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.giftId, giftId) || other.giftId == giftId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.giftWorth, giftWorth) ||
                other.giftWorth == giftWorth) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, giftId, status,
      createdAt, updatedAt, giftWorth, name);

  /// Create a copy of Winner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WinnerImplCopyWith<_$WinnerImpl> get copyWith =>
      __$$WinnerImplCopyWithImpl<_$WinnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WinnerImplToJson(
      this,
    );
  }
}

abstract class _Winner implements Winner {
  factory _Winner(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'gift_id') final String? giftId,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'gift_worth') final GiftWorth? giftWorth,
      @JsonKey(name: 'name') final WinnerName? name}) = _$WinnerImpl;

  factory _Winner.fromJson(Map<String, dynamic> json) = _$WinnerImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'gift_id')
  String? get giftId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'gift_worth')
  GiftWorth? get giftWorth;
  @override
  @JsonKey(name: 'name')
  WinnerName? get name;

  /// Create a copy of Winner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WinnerImplCopyWith<_$WinnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftWorth _$GiftWorthFromJson(Map<String, dynamic> json) {
  return _GiftWorth.fromJson(json);
}

/// @nodoc
mixin _$GiftWorth {
  @JsonKey(name: 'worth')
  String? get worth => throw _privateConstructorUsedError;

  /// Serializes this GiftWorth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiftWorth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftWorthCopyWith<GiftWorth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftWorthCopyWith<$Res> {
  factory $GiftWorthCopyWith(GiftWorth value, $Res Function(GiftWorth) then) =
      _$GiftWorthCopyWithImpl<$Res, GiftWorth>;
  @useResult
  $Res call({@JsonKey(name: 'worth') String? worth});
}

/// @nodoc
class _$GiftWorthCopyWithImpl<$Res, $Val extends GiftWorth>
    implements $GiftWorthCopyWith<$Res> {
  _$GiftWorthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftWorth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? worth = freezed,
  }) {
    return _then(_value.copyWith(
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftWorthImplCopyWith<$Res>
    implements $GiftWorthCopyWith<$Res> {
  factory _$$GiftWorthImplCopyWith(
          _$GiftWorthImpl value, $Res Function(_$GiftWorthImpl) then) =
      __$$GiftWorthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'worth') String? worth});
}

/// @nodoc
class __$$GiftWorthImplCopyWithImpl<$Res>
    extends _$GiftWorthCopyWithImpl<$Res, _$GiftWorthImpl>
    implements _$$GiftWorthImplCopyWith<$Res> {
  __$$GiftWorthImplCopyWithImpl(
      _$GiftWorthImpl _value, $Res Function(_$GiftWorthImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftWorth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? worth = freezed,
  }) {
    return _then(_$GiftWorthImpl(
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftWorthImpl implements _GiftWorth {
  _$GiftWorthImpl({@JsonKey(name: 'worth') this.worth});

  factory _$GiftWorthImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftWorthImplFromJson(json);

  @override
  @JsonKey(name: 'worth')
  final String? worth;

  @override
  String toString() {
    return 'GiftWorth(worth: $worth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftWorthImpl &&
            (identical(other.worth, worth) || other.worth == worth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, worth);

  /// Create a copy of GiftWorth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftWorthImplCopyWith<_$GiftWorthImpl> get copyWith =>
      __$$GiftWorthImplCopyWithImpl<_$GiftWorthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftWorthImplToJson(
      this,
    );
  }
}

abstract class _GiftWorth implements GiftWorth {
  factory _GiftWorth({@JsonKey(name: 'worth') final String? worth}) =
      _$GiftWorthImpl;

  factory _GiftWorth.fromJson(Map<String, dynamic> json) =
      _$GiftWorthImpl.fromJson;

  @override
  @JsonKey(name: 'worth')
  String? get worth;

  /// Create a copy of GiftWorth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftWorthImplCopyWith<_$GiftWorthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WinnerName _$WinnerNameFromJson(Map<String, dynamic> json) {
  return _WinnerName.fromJson(json);
}

/// @nodoc
mixin _$WinnerName {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this WinnerName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WinnerName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WinnerNameCopyWith<WinnerName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinnerNameCopyWith<$Res> {
  factory $WinnerNameCopyWith(
          WinnerName value, $Res Function(WinnerName) then) =
      _$WinnerNameCopyWithImpl<$Res, WinnerName>;
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$WinnerNameCopyWithImpl<$Res, $Val extends WinnerName>
    implements $WinnerNameCopyWith<$Res> {
  _$WinnerNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WinnerName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WinnerNameImplCopyWith<$Res>
    implements $WinnerNameCopyWith<$Res> {
  factory _$$WinnerNameImplCopyWith(
          _$WinnerNameImpl value, $Res Function(_$WinnerNameImpl) then) =
      __$$WinnerNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$WinnerNameImplCopyWithImpl<$Res>
    extends _$WinnerNameCopyWithImpl<$Res, _$WinnerNameImpl>
    implements _$$WinnerNameImplCopyWith<$Res> {
  __$$WinnerNameImplCopyWithImpl(
      _$WinnerNameImpl _value, $Res Function(_$WinnerNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of WinnerName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$WinnerNameImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WinnerNameImpl implements _WinnerName {
  _$WinnerNameImpl({@JsonKey(name: 'name') this.name});

  factory _$WinnerNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$WinnerNameImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'WinnerName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinnerNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of WinnerName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WinnerNameImplCopyWith<_$WinnerNameImpl> get copyWith =>
      __$$WinnerNameImplCopyWithImpl<_$WinnerNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WinnerNameImplToJson(
      this,
    );
  }
}

abstract class _WinnerName implements WinnerName {
  factory _WinnerName({@JsonKey(name: 'name') final String? name}) =
      _$WinnerNameImpl;

  factory _WinnerName.fromJson(Map<String, dynamic> json) =
      _$WinnerNameImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of WinnerName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WinnerNameImplCopyWith<_$WinnerNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Scratch _$ScratchFromJson(Map<String, dynamic> json) {
  return _Scratch.fromJson(json);
}

/// @nodoc
mixin _$Scratch {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bazar')
  String? get bazar => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this Scratch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Scratch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScratchCopyWith<Scratch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScratchCopyWith<$Res> {
  factory $ScratchCopyWith(Scratch value, $Res Function(Scratch) then) =
      _$ScratchCopyWithImpl<$Res, Scratch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'bazar') String? bazar,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$ScratchCopyWithImpl<$Res, $Val extends Scratch>
    implements $ScratchCopyWith<$Res> {
  _$ScratchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Scratch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bazar = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bazar: freezed == bazar
          ? _value.bazar
          : bazar // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScratchImplCopyWith<$Res> implements $ScratchCopyWith<$Res> {
  factory _$$ScratchImplCopyWith(
          _$ScratchImpl value, $Res Function(_$ScratchImpl) then) =
      __$$ScratchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'bazar') String? bazar,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$ScratchImplCopyWithImpl<$Res>
    extends _$ScratchCopyWithImpl<$Res, _$ScratchImpl>
    implements _$$ScratchImplCopyWith<$Res> {
  __$$ScratchImplCopyWithImpl(
      _$ScratchImpl _value, $Res Function(_$ScratchImpl) _then)
      : super(_value, _then);

  /// Create a copy of Scratch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bazar = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ScratchImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bazar: freezed == bazar
          ? _value.bazar
          : bazar // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScratchImpl implements _Scratch {
  _$ScratchImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'bazar') this.bazar,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'image_url') this.imageUrl});

  factory _$ScratchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScratchImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'bazar')
  final String? bazar;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'Scratch(id: $id, bazar: $bazar, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScratchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bazar, bazar) || other.bazar == bazar) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, bazar, image, createdAt, updatedAt, imageUrl);

  /// Create a copy of Scratch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScratchImplCopyWith<_$ScratchImpl> get copyWith =>
      __$$ScratchImplCopyWithImpl<_$ScratchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScratchImplToJson(
      this,
    );
  }
}

abstract class _Scratch implements Scratch {
  factory _Scratch(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'bazar') final String? bazar,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$ScratchImpl;

  factory _Scratch.fromJson(Map<String, dynamic> json) = _$ScratchImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'bazar')
  String? get bazar;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of Scratch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScratchImplCopyWith<_$ScratchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
