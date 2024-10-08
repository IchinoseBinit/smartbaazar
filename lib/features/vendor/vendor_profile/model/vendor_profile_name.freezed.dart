// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_profile_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorData _$VendorDataFromJson(Map<String, dynamic> json) {
  return _VendorData.fromJson(json);
}

/// @nodoc
mixin _$VendorData {
  Vendor? get vendor => throw _privateConstructorUsedError;
  List<Advertisement>? get advertisements => throw _privateConstructorUsedError;
  Posts? get posts => throw _privateConstructorUsedError;

  /// Serializes this VendorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorDataCopyWith<VendorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDataCopyWith<$Res> {
  factory $VendorDataCopyWith(
          VendorData value, $Res Function(VendorData) then) =
      _$VendorDataCopyWithImpl<$Res, VendorData>;
  @useResult
  $Res call(
      {Vendor? vendor, List<Advertisement>? advertisements, Posts? posts});

  $VendorCopyWith<$Res>? get vendor;
  $PostsCopyWith<$Res>? get posts;
}

/// @nodoc
class _$VendorDataCopyWithImpl<$Res, $Val extends VendorData>
    implements $VendorDataCopyWith<$Res> {
  _$VendorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = freezed,
    Object? advertisements = freezed,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      advertisements: freezed == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts?,
    ) as $Val);
  }

  /// Create a copy of VendorData
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

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostsCopyWith<$Res>? get posts {
    if (_value.posts == null) {
      return null;
    }

    return $PostsCopyWith<$Res>(_value.posts!, (value) {
      return _then(_value.copyWith(posts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorDataImplCopyWith<$Res>
    implements $VendorDataCopyWith<$Res> {
  factory _$$VendorDataImplCopyWith(
          _$VendorDataImpl value, $Res Function(_$VendorDataImpl) then) =
      __$$VendorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Vendor? vendor, List<Advertisement>? advertisements, Posts? posts});

  @override
  $VendorCopyWith<$Res>? get vendor;
  @override
  $PostsCopyWith<$Res>? get posts;
}

/// @nodoc
class __$$VendorDataImplCopyWithImpl<$Res>
    extends _$VendorDataCopyWithImpl<$Res, _$VendorDataImpl>
    implements _$$VendorDataImplCopyWith<$Res> {
  __$$VendorDataImplCopyWithImpl(
      _$VendorDataImpl _value, $Res Function(_$VendorDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = freezed,
    Object? advertisements = freezed,
    Object? posts = freezed,
  }) {
    return _then(_$VendorDataImpl(
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      advertisements: freezed == advertisements
          ? _value._advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorDataImpl implements _VendorData {
  const _$VendorDataImpl(
      {this.vendor, final List<Advertisement>? advertisements, this.posts})
      : _advertisements = advertisements;

  factory _$VendorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorDataImplFromJson(json);

  @override
  final Vendor? vendor;
  final List<Advertisement>? _advertisements;
  @override
  List<Advertisement>? get advertisements {
    final value = _advertisements;
    if (value == null) return null;
    if (_advertisements is EqualUnmodifiableListView) return _advertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Posts? posts;

  @override
  String toString() {
    return 'VendorData(vendor: $vendor, advertisements: $advertisements, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorDataImpl &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            const DeepCollectionEquality()
                .equals(other._advertisements, _advertisements) &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vendor,
      const DeepCollectionEquality().hash(_advertisements), posts);

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorDataImplCopyWith<_$VendorDataImpl> get copyWith =>
      __$$VendorDataImplCopyWithImpl<_$VendorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorDataImplToJson(
      this,
    );
  }
}

abstract class _VendorData implements VendorData {
  const factory _VendorData(
      {final Vendor? vendor,
      final List<Advertisement>? advertisements,
      final Posts? posts}) = _$VendorDataImpl;

  factory _VendorData.fromJson(Map<String, dynamic> json) =
      _$VendorDataImpl.fromJson;

  @override
  Vendor? get vendor;
  @override
  List<Advertisement>? get advertisements;
  @override
  Posts? get posts;

  /// Create a copy of VendorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorDataImplCopyWith<_$VendorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get contact_name => throw _privateConstructorUsedError;
  String? get visits => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;

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
      {String? id,
      String? name,
      String? photo,
      String? username,
      String? phone,
      String? contact_name,
      String? visits,
      String? city});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? contact_name = freezed,
    Object? visits = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String? name,
      String? photo,
      String? username,
      String? phone,
      String? contact_name,
      String? visits,
      String? city});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? contact_name = freezed,
    Object? visits = freezed,
    Object? city = freezed,
  }) {
    return _then(_$VendorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  const _$VendorImpl(
      {this.id,
      this.name,
      this.photo,
      this.username,
      this.phone,
      this.contact_name,
      this.visits,
      this.city});

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? username;
  @override
  final String? phone;
  @override
  final String? contact_name;
  @override
  final String? visits;
  @override
  final String? city;

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, photo: $photo, username: $username, phone: $phone, contact_name: $contact_name, visits: $visits, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.contact_name, contact_name) ||
                other.contact_name == contact_name) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, photo, username, phone,
      contact_name, visits, city);

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
  const factory _Vendor(
      {final String? id,
      final String? name,
      final String? photo,
      final String? username,
      final String? phone,
      final String? contact_name,
      final String? visits,
      final String? city}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get username;
  @override
  String? get phone;
  @override
  String? get contact_name;
  @override
  String? get visits;
  @override
  String? get city;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Advertisement _$AdvertisementFromJson(Map<String, dynamic> json) {
  return _Advertisement.fromJson(json);
}

/// @nodoc
mixin _$Advertisement {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this Advertisement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertisementCopyWith<Advertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementCopyWith<$Res> {
  factory $AdvertisementCopyWith(
          Advertisement value, $Res Function(Advertisement) then) =
      _$AdvertisementCopyWithImpl<$Res, Advertisement>;
  @useResult
  $Res call({String? id, String? image, String? link});
}

/// @nodoc
class _$AdvertisementCopyWithImpl<$Res, $Val extends Advertisement>
    implements $AdvertisementCopyWith<$Res> {
  _$AdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementImplCopyWith<$Res>
    implements $AdvertisementCopyWith<$Res> {
  factory _$$AdvertisementImplCopyWith(
          _$AdvertisementImpl value, $Res Function(_$AdvertisementImpl) then) =
      __$$AdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? image, String? link});
}

/// @nodoc
class __$$AdvertisementImplCopyWithImpl<$Res>
    extends _$AdvertisementCopyWithImpl<$Res, _$AdvertisementImpl>
    implements _$$AdvertisementImplCopyWith<$Res> {
  __$$AdvertisementImplCopyWithImpl(
      _$AdvertisementImpl _value, $Res Function(_$AdvertisementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_$AdvertisementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementImpl implements _Advertisement {
  const _$AdvertisementImpl({this.id, this.image, this.link});

  factory _$AdvertisementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementImplFromJson(json);

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? link;

  @override
  String toString() {
    return 'Advertisement(id: $id, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, link);

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      __$$AdvertisementImplCopyWithImpl<_$AdvertisementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementImplToJson(
      this,
    );
  }
}

abstract class _Advertisement implements Advertisement {
  const factory _Advertisement(
      {final String? id,
      final String? image,
      final String? link}) = _$AdvertisementImpl;

  factory _Advertisement.fromJson(Map<String, dynamic> json) =
      _$AdvertisementImpl.fromJson;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get link;

  /// Create a copy of Advertisement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Posts {
  List<Post>? get data => throw _privateConstructorUsedError;

  /// Serializes this Posts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res, Posts>;
  @useResult
  $Res call({List<Post>? data});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res, $Val extends Posts>
    implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsImplCopyWith<$Res> implements $PostsCopyWith<$Res> {
  factory _$$PostsImplCopyWith(
          _$PostsImpl value, $Res Function(_$PostsImpl) then) =
      __$$PostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Post>? data});
}

/// @nodoc
class __$$PostsImplCopyWithImpl<$Res>
    extends _$PostsCopyWithImpl<$Res, _$PostsImpl>
    implements _$$PostsImplCopyWith<$Res> {
  __$$PostsImplCopyWithImpl(
      _$PostsImpl _value, $Res Function(_$PostsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PostsImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsImpl implements _Posts {
  const _$PostsImpl({final List<Post>? data}) : _data = data;

  factory _$PostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsImplFromJson(json);

  final List<Post>? _data;
  @override
  List<Post>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Posts(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      __$$PostsImplCopyWithImpl<_$PostsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsImplToJson(
      this,
    );
  }
}

abstract class _Posts implements Posts {
  const factory _Posts({final List<Post>? data}) = _$PostsImpl;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$PostsImpl.fromJson;

  @override
  List<Post>? get data;

  /// Create a copy of Posts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  int? get avg_rating => throw _privateConstructorUsedError;
  String? get visits => throw _privateConstructorUsedError;

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
      {String? id,
      String? title,
      String? price,
      String? image,
      String? pickup,
      String? username,
      String? city,
      int? avg_rating,
      String? visits});
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
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? pickup = freezed,
    Object? username = freezed,
    Object? city = freezed,
    Object? avg_rating = freezed,
    Object? visits = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String? title,
      String? price,
      String? image,
      String? pickup,
      String? username,
      String? city,
      int? avg_rating,
      String? visits});
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
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? pickup = freezed,
    Object? username = freezed,
    Object? city = freezed,
    Object? avg_rating = freezed,
    Object? visits = freezed,
  }) {
    return _then(_$PostImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {this.id,
      this.title,
      this.price,
      this.image,
      this.pickup,
      this.username,
      this.city,
      this.avg_rating,
      this.visits});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? price;
  @override
  final String? image;
  @override
  final String? pickup;
  @override
  final String? username;
  @override
  final String? city;
  @override
  final int? avg_rating;
  @override
  final String? visits;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, price: $price, image: $image, pickup: $pickup, username: $username, city: $city, avg_rating: $avg_rating, visits: $visits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.avg_rating, avg_rating) ||
                other.avg_rating == avg_rating) &&
            (identical(other.visits, visits) || other.visits == visits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, image, pickup,
      username, city, avg_rating, visits);

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
      {final String? id,
      final String? title,
      final String? price,
      final String? image,
      final String? pickup,
      final String? username,
      final String? city,
      final int? avg_rating,
      final String? visits}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get price;
  @override
  String? get image;
  @override
  String? get pickup;
  @override
  String? get username;
  @override
  String? get city;
  @override
  int? get avg_rating;
  @override
  String? get visits;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
