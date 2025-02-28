// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorProductSearchResponse _$VendorProductSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _VendorProductSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorProductSearchResponse {
  Vdata? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProductSearchResponseCopyWith<VendorProductSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProductSearchResponseCopyWith<$Res> {
  factory $VendorProductSearchResponseCopyWith(
          VendorProductSearchResponse value,
          $Res Function(VendorProductSearchResponse) then) =
      _$VendorProductSearchResponseCopyWithImpl<$Res,
          VendorProductSearchResponse>;
  @useResult
  $Res call({Vdata? data});

  $VdataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendorProductSearchResponseCopyWithImpl<$Res,
        $Val extends VendorProductSearchResponse>
    implements $VendorProductSearchResponseCopyWith<$Res> {
  _$VendorProductSearchResponseCopyWithImpl(this._value, this._then);

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
              as Vdata?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VdataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VdataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorProductSearchResponseImplCopyWith<$Res>
    implements $VendorProductSearchResponseCopyWith<$Res> {
  factory _$$VendorProductSearchResponseImplCopyWith(
          _$VendorProductSearchResponseImpl value,
          $Res Function(_$VendorProductSearchResponseImpl) then) =
      __$$VendorProductSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Vdata? data});

  @override
  $VdataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendorProductSearchResponseImplCopyWithImpl<$Res>
    extends _$VendorProductSearchResponseCopyWithImpl<$Res,
        _$VendorProductSearchResponseImpl>
    implements _$$VendorProductSearchResponseImplCopyWith<$Res> {
  __$$VendorProductSearchResponseImplCopyWithImpl(
      _$VendorProductSearchResponseImpl _value,
      $Res Function(_$VendorProductSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$VendorProductSearchResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Vdata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProductSearchResponseImpl
    implements _VendorProductSearchResponse {
  _$VendorProductSearchResponseImpl({required this.data});

  factory _$VendorProductSearchResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VendorProductSearchResponseImplFromJson(json);

  @override
  final Vdata? data;

  @override
  String toString() {
    return 'VendorProductSearchResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProductSearchResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProductSearchResponseImplCopyWith<_$VendorProductSearchResponseImpl>
      get copyWith => __$$VendorProductSearchResponseImplCopyWithImpl<
          _$VendorProductSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProductSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _VendorProductSearchResponse
    implements VendorProductSearchResponse {
  factory _VendorProductSearchResponse({required final Vdata? data}) =
      _$VendorProductSearchResponseImpl;

  factory _VendorProductSearchResponse.fromJson(Map<String, dynamic> json) =
      _$VendorProductSearchResponseImpl.fromJson;

  @override
  Vdata? get data;
  @override
  @JsonKey(ignore: true)
  _$$VendorProductSearchResponseImplCopyWith<_$VendorProductSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Vdata _$VdataFromJson(Map<String, dynamic> json) {
  return _Vdata.fromJson(json);
}

/// @nodoc
mixin _$Vdata {
// required VVSearchpost? VSearchpost,
  VSearchpost? get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VdataCopyWith<Vdata> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VdataCopyWith<$Res> {
  factory $VdataCopyWith(Vdata value, $Res Function(Vdata) then) =
      _$VdataCopyWithImpl<$Res, Vdata>;
  @useResult
  $Res call({VSearchpost? posts});

  $VSearchpostCopyWith<$Res>? get posts;
}

/// @nodoc
class _$VdataCopyWithImpl<$Res, $Val extends Vdata>
    implements $VdataCopyWith<$Res> {
  _$VdataCopyWithImpl(this._value, this._then);

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
              as VSearchpost?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VSearchpostCopyWith<$Res>? get posts {
    if (_value.posts == null) {
      return null;
    }

    return $VSearchpostCopyWith<$Res>(_value.posts!, (value) {
      return _then(_value.copyWith(posts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VdataImplCopyWith<$Res> implements $VdataCopyWith<$Res> {
  factory _$$VdataImplCopyWith(
          _$VdataImpl value, $Res Function(_$VdataImpl) then) =
      __$$VdataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VSearchpost? posts});

  @override
  $VSearchpostCopyWith<$Res>? get posts;
}

/// @nodoc
class __$$VdataImplCopyWithImpl<$Res>
    extends _$VdataCopyWithImpl<$Res, _$VdataImpl>
    implements _$$VdataImplCopyWith<$Res> {
  __$$VdataImplCopyWithImpl(
      _$VdataImpl _value, $Res Function(_$VdataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$VdataImpl(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as VSearchpost?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VdataImpl implements _Vdata {
  const _$VdataImpl({required this.posts});

  factory _$VdataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VdataImplFromJson(json);

// required VVSearchpost? VSearchpost,
  @override
  final VSearchpost? posts;

  @override
  String toString() {
    return 'Vdata(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VdataImpl &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VdataImplCopyWith<_$VdataImpl> get copyWith =>
      __$$VdataImplCopyWithImpl<_$VdataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VdataImplToJson(
      this,
    );
  }
}

abstract class _Vdata implements Vdata {
  const factory _Vdata({required final VSearchpost? posts}) = _$VdataImpl;

  factory _Vdata.fromJson(Map<String, dynamic> json) = _$VdataImpl.fromJson;

  @override // required VVSearchpost? VSearchpost,
  VSearchpost? get posts;
  @override
  @JsonKey(ignore: true)
  _$$VdataImplCopyWith<_$VdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VSearchpost _$VSearchpostFromJson(Map<String, dynamic> json) {
  return _VSearchpost.fromJson(json);
}

/// @nodoc
mixin _$VSearchpost {
  int? get current_page => throw _privateConstructorUsedError;
  List<VendorSearchModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VSearchpostCopyWith<VSearchpost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VSearchpostCopyWith<$Res> {
  factory $VSearchpostCopyWith(
          VSearchpost value, $Res Function(VSearchpost) then) =
      _$VSearchpostCopyWithImpl<$Res, VSearchpost>;
  @useResult
  $Res call({int? current_page, List<VendorSearchModel>? data});
}

/// @nodoc
class _$VSearchpostCopyWithImpl<$Res, $Val extends VSearchpost>
    implements $VSearchpostCopyWith<$Res> {
  _$VSearchpostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VendorSearchModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VSearchpostImplCopyWith<$Res>
    implements $VSearchpostCopyWith<$Res> {
  factory _$$VSearchpostImplCopyWith(
          _$VSearchpostImpl value, $Res Function(_$VSearchpostImpl) then) =
      __$$VSearchpostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? current_page, List<VendorSearchModel>? data});
}

/// @nodoc
class __$$VSearchpostImplCopyWithImpl<$Res>
    extends _$VSearchpostCopyWithImpl<$Res, _$VSearchpostImpl>
    implements _$$VSearchpostImplCopyWith<$Res> {
  __$$VSearchpostImplCopyWithImpl(
      _$VSearchpostImpl _value, $Res Function(_$VSearchpostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VSearchpostImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VendorSearchModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VSearchpostImpl implements _VSearchpost {
  const _$VSearchpostImpl(
      {this.current_page, final List<VendorSearchModel>? data})
      : _data = data;

  factory _$VSearchpostImpl.fromJson(Map<String, dynamic> json) =>
      _$$VSearchpostImplFromJson(json);

  @override
  final int? current_page;
  final List<VendorSearchModel>? _data;
  @override
  List<VendorSearchModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VSearchpost(current_page: $current_page, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VSearchpostImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_page, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VSearchpostImplCopyWith<_$VSearchpostImpl> get copyWith =>
      __$$VSearchpostImplCopyWithImpl<_$VSearchpostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VSearchpostImplToJson(
      this,
    );
  }
}

abstract class _VSearchpost implements VSearchpost {
  const factory _VSearchpost(
      {final int? current_page,
      final List<VendorSearchModel>? data}) = _$VSearchpostImpl;

  factory _VSearchpost.fromJson(Map<String, dynamic> json) =
      _$VSearchpostImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<VendorSearchModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$VSearchpostImplCopyWith<_$VSearchpostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorSearchModel _$VendorSearchModelFromJson(Map<String, dynamic> json) {
  return _VendorSearchModel.fromJson(json);
}

/// @nodoc
mixin _$VendorSearchModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type_id')
  String? get postTypeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get negotiable => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_name')
  String? get contactName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_hidden')
  String? get phoneHidden => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  String? get cityId => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_addr')
  String? get ipAddr => throw _privateConstructorUsedError;
  String? get length => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'hyper_del')
  String? get hyperDel => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_del')
  String? get sellerDel => throw _privateConstructorUsedError;
  String? get visits => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_token')
  String? get emailToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_token')
  String? get phoneToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'tmp_token')
  String? get tmpToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_phone')
  String? get verifiedPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_permanent')
  String? get isPermanent => throw _privateConstructorUsedError;
  String? get reviewed => throw _privateConstructorUsedError;
  String? get featured => throw _privateConstructorUsedError;
  String? get archived => throw _privateConstructorUsedError;
  String? get archivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'archived_manually')
  String? get archivedManually => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletion_mail_sent_at')
  String? get deletionMailSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'fb_profile')
  String? get fbProfile => throw _privateConstructorUsedError;
  String? get partner => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounted_price')
  String? get discountedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'trending')
  String? get trending => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_order')
  String? get minOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'samp_price')
  String? get sampPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_one')
  String? get textOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_two')
  String? get textTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ava_to')
  String? get avaTo => throw _privateConstructorUsedError;
  String? get branded => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;
  String? get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_display_days')
  String? get storyDisplayDays => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'b2b_pricing')
  String? get b2bPricing => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  int? get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type')
  String? get postType => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarProductCount')
  int? get similarProductCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentcount')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_rating')
  double? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'userdetails')
  UserDetails? get userdetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorSearchModelCopyWith<VendorSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorSearchModelCopyWith<$Res> {
  factory $VendorSearchModelCopyWith(
          VendorSearchModel value, $Res Function(VendorSearchModel) then) =
      _$VendorSearchModelCopyWithImpl<$Res, VendorSearchModel>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'post_type_id') String? postTypeId,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      @JsonKey(name: 'contact_name') String? contactName,
      String? email,
      String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
      String? lon,
      String? lat,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      @JsonKey(name: 'hyper_del') String? hyperDel,
      @JsonKey(name: 'seller_del') String? sellerDel,
      String? visits,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') String? phoneToken,
      @JsonKey(name: 'tmp_token') String? tmpToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') String? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? archivedAt,
      @JsonKey(name: 'archived_manually') String? archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') String? fbProfile,
      String? partner,
      @JsonKey(name: 'discounted_price') String? discountedPrice,
      @JsonKey(name: 'trending') String? trending,
      String? stock,
      @JsonKey(name: 'min_order') String? minOrder,
      @JsonKey(name: 'samp_price') String? sampPrice,
      @JsonKey(name: 'text_one') String? textOne,
      @JsonKey(name: 'text_two') String? textTwo,
      @JsonKey(name: 'ava_to') String? avaTo,
      String? branded,
      String? wow,
      String? offers,
      @JsonKey(name: 'story_display_days') String? storyDisplayDays,
      String? barcode,
      @JsonKey(name: 'b2b_pricing') String? b2bPricing,
      String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? image,
      @JsonKey(name: 'discount_percentage') int? discountPercentage,
      @JsonKey(name: 'post_type') String? postType,
      String? username,
      String? city,
      @JsonKey(name: 'similarProductCount') int? similarProductCount,
      @JsonKey(name: 'commentcount') int? commentCount,
      @JsonKey(name: 'avg_rating') double? avgRating,
      @JsonKey(name: 'userdetails') UserDetails? userdetails});

  $UserDetailsCopyWith<$Res>? get userdetails;
}

/// @nodoc
class _$VendorSearchModelCopyWithImpl<$Res, $Val extends VendorSearchModel>
    implements $VendorSearchModelCopyWith<$Res> {
  _$VendorSearchModelCopyWithImpl(this._value, this._then);

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
    Object? categoryId = freezed,
    Object? postTypeId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? negotiable = freezed,
    Object? contactName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? ipAddr = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? pickup = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? hyperDel = freezed,
    Object? sellerDel = freezed,
    Object? visits = freezed,
    Object? emailToken = freezed,
    Object? phoneToken = freezed,
    Object? tmpToken = freezed,
    Object? verifiedEmail = freezed,
    Object? verifiedPhone = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? isPermanent = freezed,
    Object? reviewed = freezed,
    Object? featured = freezed,
    Object? archived = freezed,
    Object? archivedAt = freezed,
    Object? archivedManually = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? discountedPrice = freezed,
    Object? trending = freezed,
    Object? stock = freezed,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
    Object? branded = freezed,
    Object? wow = freezed,
    Object? offers = freezed,
    Object? storyDisplayDays = freezed,
    Object? barcode = freezed,
    Object? b2bPricing = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
    Object? discountPercentage = freezed,
    Object? postType = freezed,
    Object? username = freezed,
    Object? city = freezed,
    Object? similarProductCount = freezed,
    Object? commentCount = freezed,
    Object? avgRating = freezed,
    Object? userdetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiable: freezed == negotiable
          ? _value.negotiable
          : negotiable // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperDel: freezed == hyperDel
          ? _value.hyperDel
          : hyperDel // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDel: freezed == sellerDel
          ? _value.sellerDel
          : sellerDel // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      emailToken: freezed == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneToken: freezed == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tmpToken: freezed == tmpToken
          ? _value.tmpToken
          : tmpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      isPermanent: freezed == isPermanent
          ? _value.isPermanent
          : isPermanent // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewed: freezed == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedManually: freezed == archivedManually
          ? _value.archivedManually
          : archivedManually // ignore: cast_nullable_to_non_nullable
              as String?,
      deletionMailSentAt: freezed == deletionMailSentAt
          ? _value.deletionMailSentAt
          : deletionMailSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fbProfile: freezed == fbProfile
          ? _value.fbProfile
          : fbProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      minOrder: freezed == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      sampPrice: freezed == sampPrice
          ? _value.sampPrice
          : sampPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      textOne: freezed == textOne
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: freezed == textTwo
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      avaTo: freezed == avaTo
          ? _value.avaTo
          : avaTo // ignore: cast_nullable_to_non_nullable
              as String?,
      branded: freezed == branded
          ? _value.branded
          : branded // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      storyDisplayDays: freezed == storyDisplayDays
          ? _value.storyDisplayDays
          : storyDisplayDays // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      b2bPricing: freezed == b2bPricing
          ? _value.b2bPricing
          : b2bPricing // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      postType: freezed == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      userdetails: freezed == userdetails
          ? _value.userdetails
          : userdetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsCopyWith<$Res>? get userdetails {
    if (_value.userdetails == null) {
      return null;
    }

    return $UserDetailsCopyWith<$Res>(_value.userdetails!, (value) {
      return _then(_value.copyWith(userdetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorSearchModelImplCopyWith<$Res>
    implements $VendorSearchModelCopyWith<$Res> {
  factory _$$VendorSearchModelImplCopyWith(_$VendorSearchModelImpl value,
          $Res Function(_$VendorSearchModelImpl) then) =
      __$$VendorSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'post_type_id') String? postTypeId,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      @JsonKey(name: 'contact_name') String? contactName,
      String? email,
      String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
      String? lon,
      String? lat,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      @JsonKey(name: 'hyper_del') String? hyperDel,
      @JsonKey(name: 'seller_del') String? sellerDel,
      String? visits,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') String? phoneToken,
      @JsonKey(name: 'tmp_token') String? tmpToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') String? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? archivedAt,
      @JsonKey(name: 'archived_manually') String? archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') String? fbProfile,
      String? partner,
      @JsonKey(name: 'discounted_price') String? discountedPrice,
      @JsonKey(name: 'trending') String? trending,
      String? stock,
      @JsonKey(name: 'min_order') String? minOrder,
      @JsonKey(name: 'samp_price') String? sampPrice,
      @JsonKey(name: 'text_one') String? textOne,
      @JsonKey(name: 'text_two') String? textTwo,
      @JsonKey(name: 'ava_to') String? avaTo,
      String? branded,
      String? wow,
      String? offers,
      @JsonKey(name: 'story_display_days') String? storyDisplayDays,
      String? barcode,
      @JsonKey(name: 'b2b_pricing') String? b2bPricing,
      String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? image,
      @JsonKey(name: 'discount_percentage') int? discountPercentage,
      @JsonKey(name: 'post_type') String? postType,
      String? username,
      String? city,
      @JsonKey(name: 'similarProductCount') int? similarProductCount,
      @JsonKey(name: 'commentcount') int? commentCount,
      @JsonKey(name: 'avg_rating') double? avgRating,
      @JsonKey(name: 'userdetails') UserDetails? userdetails});

  @override
  $UserDetailsCopyWith<$Res>? get userdetails;
}

/// @nodoc
class __$$VendorSearchModelImplCopyWithImpl<$Res>
    extends _$VendorSearchModelCopyWithImpl<$Res, _$VendorSearchModelImpl>
    implements _$$VendorSearchModelImplCopyWith<$Res> {
  __$$VendorSearchModelImplCopyWithImpl(_$VendorSearchModelImpl _value,
      $Res Function(_$VendorSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? postTypeId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? negotiable = freezed,
    Object? contactName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? ipAddr = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? pickup = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? hyperDel = freezed,
    Object? sellerDel = freezed,
    Object? visits = freezed,
    Object? emailToken = freezed,
    Object? phoneToken = freezed,
    Object? tmpToken = freezed,
    Object? verifiedEmail = freezed,
    Object? verifiedPhone = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? isPermanent = freezed,
    Object? reviewed = freezed,
    Object? featured = freezed,
    Object? archived = freezed,
    Object? archivedAt = freezed,
    Object? archivedManually = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? discountedPrice = freezed,
    Object? trending = freezed,
    Object? stock = freezed,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
    Object? branded = freezed,
    Object? wow = freezed,
    Object? offers = freezed,
    Object? storyDisplayDays = freezed,
    Object? barcode = freezed,
    Object? b2bPricing = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
    Object? discountPercentage = freezed,
    Object? postType = freezed,
    Object? username = freezed,
    Object? city = freezed,
    Object? similarProductCount = freezed,
    Object? commentCount = freezed,
    Object? avgRating = freezed,
    Object? userdetails = freezed,
  }) {
    return _then(_$VendorSearchModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiable: freezed == negotiable
          ? _value.negotiable
          : negotiable // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperDel: freezed == hyperDel
          ? _value.hyperDel
          : hyperDel // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDel: freezed == sellerDel
          ? _value.sellerDel
          : sellerDel // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      emailToken: freezed == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneToken: freezed == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tmpToken: freezed == tmpToken
          ? _value.tmpToken
          : tmpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      isPermanent: freezed == isPermanent
          ? _value.isPermanent
          : isPermanent // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewed: freezed == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedManually: freezed == archivedManually
          ? _value.archivedManually
          : archivedManually // ignore: cast_nullable_to_non_nullable
              as String?,
      deletionMailSentAt: freezed == deletionMailSentAt
          ? _value.deletionMailSentAt
          : deletionMailSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fbProfile: freezed == fbProfile
          ? _value.fbProfile
          : fbProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      minOrder: freezed == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      sampPrice: freezed == sampPrice
          ? _value.sampPrice
          : sampPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      textOne: freezed == textOne
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: freezed == textTwo
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      avaTo: freezed == avaTo
          ? _value.avaTo
          : avaTo // ignore: cast_nullable_to_non_nullable
              as String?,
      branded: freezed == branded
          ? _value.branded
          : branded // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      storyDisplayDays: freezed == storyDisplayDays
          ? _value.storyDisplayDays
          : storyDisplayDays // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      b2bPricing: freezed == b2bPricing
          ? _value.b2bPricing
          : b2bPricing // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      postType: freezed == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      similarProductCount: freezed == similarProductCount
          ? _value.similarProductCount
          : similarProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      userdetails: freezed == userdetails
          ? _value.userdetails
          : userdetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorSearchModelImpl implements _VendorSearchModel {
  const _$VendorSearchModelImpl(
      {this.id,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'post_type_id') this.postTypeId,
      this.title,
      this.description,
      this.tags,
      this.price,
      this.negotiable,
      @JsonKey(name: 'contact_name') this.contactName,
      this.email,
      this.phone,
      @JsonKey(name: 'phone_hidden') this.phoneHidden,
      this.address,
      @JsonKey(name: 'city_id') this.cityId,
      this.lon,
      this.lat,
      @JsonKey(name: 'ip_addr') this.ipAddr,
      this.length,
      this.width,
      this.weight,
      this.height,
      this.pickup,
      this.longitude,
      this.latitude,
      @JsonKey(name: 'hyper_del') this.hyperDel,
      @JsonKey(name: 'seller_del') this.sellerDel,
      this.visits,
      @JsonKey(name: 'email_token') this.emailToken,
      @JsonKey(name: 'phone_token') this.phoneToken,
      @JsonKey(name: 'tmp_token') this.tmpToken,
      @JsonKey(name: 'verified_email') this.verifiedEmail,
      @JsonKey(name: 'verified_phone') this.verifiedPhone,
      @JsonKey(name: 'accept_terms') this.acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') this.acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') this.isPermanent,
      this.reviewed,
      this.featured,
      this.archived,
      this.archivedAt,
      @JsonKey(name: 'archived_manually') this.archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') this.deletionMailSentAt,
      @JsonKey(name: 'fb_profile') this.fbProfile,
      this.partner,
      @JsonKey(name: 'discounted_price') this.discountedPrice,
      @JsonKey(name: 'trending') this.trending,
      this.stock,
      @JsonKey(name: 'min_order') this.minOrder,
      @JsonKey(name: 'samp_price') this.sampPrice,
      @JsonKey(name: 'text_one') this.textOne,
      @JsonKey(name: 'text_two') this.textTwo,
      @JsonKey(name: 'ava_to') this.avaTo,
      this.branded,
      this.wow,
      this.offers,
      @JsonKey(name: 'story_display_days') this.storyDisplayDays,
      this.barcode,
      @JsonKey(name: 'b2b_pricing') this.b2bPricing,
      this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.image,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      @JsonKey(name: 'post_type') this.postType,
      this.username,
      this.city,
      @JsonKey(name: 'similarProductCount') this.similarProductCount,
      @JsonKey(name: 'commentcount') this.commentCount,
      @JsonKey(name: 'avg_rating') this.avgRating,
      @JsonKey(name: 'userdetails') this.userdetails});

  factory _$VendorSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorSearchModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'post_type_id')
  final String? postTypeId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? tags;
  @override
  final String? price;
  @override
  final String? negotiable;
  @override
  @JsonKey(name: 'contact_name')
  final String? contactName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'phone_hidden')
  final String? phoneHidden;
  @override
  final String? address;
  @override
  @JsonKey(name: 'city_id')
  final String? cityId;
  @override
  final String? lon;
  @override
  final String? lat;
  @override
  @JsonKey(name: 'ip_addr')
  final String? ipAddr;
  @override
  final String? length;
  @override
  final String? width;
  @override
  final String? weight;
  @override
  final String? height;
  @override
  final String? pickup;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  @JsonKey(name: 'hyper_del')
  final String? hyperDel;
  @override
  @JsonKey(name: 'seller_del')
  final String? sellerDel;
  @override
  final String? visits;
  @override
  @JsonKey(name: 'email_token')
  final String? emailToken;
  @override
  @JsonKey(name: 'phone_token')
  final String? phoneToken;
  @override
  @JsonKey(name: 'tmp_token')
  final String? tmpToken;
  @override
  @JsonKey(name: 'verified_email')
  final String? verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  final String? verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  final String? acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  final String? acceptMarketingOffers;
  @override
  @JsonKey(name: 'is_permanent')
  final String? isPermanent;
  @override
  final String? reviewed;
  @override
  final String? featured;
  @override
  final String? archived;
  @override
  final String? archivedAt;
  @override
  @JsonKey(name: 'archived_manually')
  final String? archivedManually;
  @override
  @JsonKey(name: 'deletion_mail_sent_at')
  final String? deletionMailSentAt;
  @override
  @JsonKey(name: 'fb_profile')
  final String? fbProfile;
  @override
  final String? partner;
  @override
  @JsonKey(name: 'discounted_price')
  final String? discountedPrice;
  @override
  @JsonKey(name: 'trending')
  final String? trending;
  @override
  final String? stock;
  @override
  @JsonKey(name: 'min_order')
  final String? minOrder;
  @override
  @JsonKey(name: 'samp_price')
  final String? sampPrice;
  @override
  @JsonKey(name: 'text_one')
  final String? textOne;
  @override
  @JsonKey(name: 'text_two')
  final String? textTwo;
  @override
  @JsonKey(name: 'ava_to')
  final String? avaTo;
  @override
  final String? branded;
  @override
  final String? wow;
  @override
  final String? offers;
  @override
  @JsonKey(name: 'story_display_days')
  final String? storyDisplayDays;
  @override
  final String? barcode;
  @override
  @JsonKey(name: 'b2b_pricing')
  final String? b2bPricing;
  @override
  final String? deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final String? image;
  @override
  @JsonKey(name: 'discount_percentage')
  final int? discountPercentage;
  @override
  @JsonKey(name: 'post_type')
  final String? postType;
  @override
  final String? username;
  @override
  final String? city;
  @override
  @JsonKey(name: 'similarProductCount')
  final int? similarProductCount;
  @override
  @JsonKey(name: 'commentcount')
  final int? commentCount;
  @override
  @JsonKey(name: 'avg_rating')
  final double? avgRating;
  @override
  @JsonKey(name: 'userdetails')
  final UserDetails? userdetails;

  @override
  String toString() {
    return 'VendorSearchModel(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, tags: $tags, price: $price, negotiable: $negotiable, contactName: $contactName, email: $email, phone: $phone, phoneHidden: $phoneHidden, address: $address, cityId: $cityId, lon: $lon, lat: $lat, ipAddr: $ipAddr, length: $length, width: $width, weight: $weight, height: $height, pickup: $pickup, longitude: $longitude, latitude: $latitude, hyperDel: $hyperDel, sellerDel: $sellerDel, visits: $visits, emailToken: $emailToken, phoneToken: $phoneToken, tmpToken: $tmpToken, verifiedEmail: $verifiedEmail, verifiedPhone: $verifiedPhone, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, isPermanent: $isPermanent, reviewed: $reviewed, featured: $featured, archived: $archived, archivedAt: $archivedAt, archivedManually: $archivedManually, deletionMailSentAt: $deletionMailSentAt, fbProfile: $fbProfile, partner: $partner, discountedPrice: $discountedPrice, trending: $trending, stock: $stock, minOrder: $minOrder, sampPrice: $sampPrice, textOne: $textOne, textTwo: $textTwo, avaTo: $avaTo, branded: $branded, wow: $wow, offers: $offers, storyDisplayDays: $storyDisplayDays, barcode: $barcode, b2bPricing: $b2bPricing, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, image: $image, discountPercentage: $discountPercentage, postType: $postType, username: $username, city: $city, similarProductCount: $similarProductCount, commentCount: $commentCount, avgRating: $avgRating, userdetails: $userdetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorSearchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.postTypeId, postTypeId) ||
                other.postTypeId == postTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.negotiable, negotiable) ||
                other.negotiable == negotiable) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneHidden, phoneHidden) ||
                other.phoneHidden == phoneHidden) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.hyperDel, hyperDel) ||
                other.hyperDel == hyperDel) &&
            (identical(other.sellerDel, sellerDel) ||
                other.sellerDel == sellerDel) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.emailToken, emailToken) ||
                other.emailToken == emailToken) &&
            (identical(other.phoneToken, phoneToken) ||
                other.phoneToken == phoneToken) &&
            (identical(other.tmpToken, tmpToken) ||
                other.tmpToken == tmpToken) &&
            (identical(other.verifiedEmail, verifiedEmail) ||
                other.verifiedEmail == verifiedEmail) &&
            (identical(other.verifiedPhone, verifiedPhone) ||
                other.verifiedPhone == verifiedPhone) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms) &&
            (identical(other.acceptMarketingOffers, acceptMarketingOffers) ||
                other.acceptMarketingOffers == acceptMarketingOffers) &&
            (identical(other.isPermanent, isPermanent) ||
                other.isPermanent == isPermanent) &&
            (identical(other.reviewed, reviewed) ||
                other.reviewed == reviewed) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.archivedManually, archivedManually) ||
                other.archivedManually == archivedManually) &&
            (identical(other.deletionMailSentAt, deletionMailSentAt) ||
                other.deletionMailSentAt == deletionMailSentAt) &&
            (identical(other.fbProfile, fbProfile) ||
                other.fbProfile == fbProfile) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.trending, trending) ||
                other.trending == trending) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.minOrder, minOrder) ||
                other.minOrder == minOrder) &&
            (identical(other.sampPrice, sampPrice) ||
                other.sampPrice == sampPrice) &&
            (identical(other.textOne, textOne) || other.textOne == textOne) &&
            (identical(other.textTwo, textTwo) || other.textTwo == textTwo) &&
            (identical(other.avaTo, avaTo) || other.avaTo == avaTo) &&
            (identical(other.branded, branded) || other.branded == branded) &&
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.storyDisplayDays, storyDisplayDays) ||
                other.storyDisplayDays == storyDisplayDays) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.b2bPricing, b2bPricing) ||
                other.b2bPricing == b2bPricing) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.similarProductCount, similarProductCount) ||
                other.similarProductCount == similarProductCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.userdetails, userdetails) ||
                other.userdetails == userdetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        countryCode,
        userId,
        categoryId,
        postTypeId,
        title,
        description,
        tags,
        price,
        negotiable,
        contactName,
        email,
        phone,
        phoneHidden,
        address,
        cityId,
        lon,
        lat,
        ipAddr,
        length,
        width,
        weight,
        height,
        pickup,
        longitude,
        latitude,
        hyperDel,
        sellerDel,
        visits,
        emailToken,
        phoneToken,
        tmpToken,
        verifiedEmail,
        verifiedPhone,
        acceptTerms,
        acceptMarketingOffers,
        isPermanent,
        reviewed,
        featured,
        archived,
        archivedAt,
        archivedManually,
        deletionMailSentAt,
        fbProfile,
        partner,
        discountedPrice,
        trending,
        stock,
        minOrder,
        sampPrice,
        textOne,
        textTwo,
        avaTo,
        branded,
        wow,
        offers,
        storyDisplayDays,
        barcode,
        b2bPricing,
        deletedAt,
        createdAt,
        updatedAt,
        image,
        discountPercentage,
        postType,
        username,
        city,
        similarProductCount,
        commentCount,
        avgRating,
        userdetails
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorSearchModelImplCopyWith<_$VendorSearchModelImpl> get copyWith =>
      __$$VendorSearchModelImplCopyWithImpl<_$VendorSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorSearchModelImplToJson(
      this,
    );
  }
}

abstract class _VendorSearchModel implements VendorSearchModel {
  const factory _VendorSearchModel(
      {final String? id,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'category_id') final String? categoryId,
      @JsonKey(name: 'post_type_id') final String? postTypeId,
      final String? title,
      final String? description,
      final String? tags,
      final String? price,
      final String? negotiable,
      @JsonKey(name: 'contact_name') final String? contactName,
      final String? email,
      final String? phone,
      @JsonKey(name: 'phone_hidden') final String? phoneHidden,
      final String? address,
      @JsonKey(name: 'city_id') final String? cityId,
      final String? lon,
      final String? lat,
      @JsonKey(name: 'ip_addr') final String? ipAddr,
      final String? length,
      final String? width,
      final String? weight,
      final String? height,
      final String? pickup,
      final String? longitude,
      final String? latitude,
      @JsonKey(name: 'hyper_del') final String? hyperDel,
      @JsonKey(name: 'seller_del') final String? sellerDel,
      final String? visits,
      @JsonKey(name: 'email_token') final String? emailToken,
      @JsonKey(name: 'phone_token') final String? phoneToken,
      @JsonKey(name: 'tmp_token') final String? tmpToken,
      @JsonKey(name: 'verified_email') final String? verifiedEmail,
      @JsonKey(name: 'verified_phone') final String? verifiedPhone,
      @JsonKey(name: 'accept_terms') final String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers')
      final String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') final String? isPermanent,
      final String? reviewed,
      final String? featured,
      final String? archived,
      final String? archivedAt,
      @JsonKey(name: 'archived_manually') final String? archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') final String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') final String? fbProfile,
      final String? partner,
      @JsonKey(name: 'discounted_price') final String? discountedPrice,
      @JsonKey(name: 'trending') final String? trending,
      final String? stock,
      @JsonKey(name: 'min_order') final String? minOrder,
      @JsonKey(name: 'samp_price') final String? sampPrice,
      @JsonKey(name: 'text_one') final String? textOne,
      @JsonKey(name: 'text_two') final String? textTwo,
      @JsonKey(name: 'ava_to') final String? avaTo,
      final String? branded,
      final String? wow,
      final String? offers,
      @JsonKey(name: 'story_display_days') final String? storyDisplayDays,
      final String? barcode,
      @JsonKey(name: 'b2b_pricing') final String? b2bPricing,
      final String? deletedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final String? image,
      @JsonKey(name: 'discount_percentage') final int? discountPercentage,
      @JsonKey(name: 'post_type') final String? postType,
      final String? username,
      final String? city,
      @JsonKey(name: 'similarProductCount') final int? similarProductCount,
      @JsonKey(name: 'commentcount') final int? commentCount,
      @JsonKey(name: 'avg_rating') final double? avgRating,
      @JsonKey(name: 'userdetails')
      final UserDetails? userdetails}) = _$VendorSearchModelImpl;

  factory _VendorSearchModel.fromJson(Map<String, dynamic> json) =
      _$VendorSearchModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'post_type_id')
  String? get postTypeId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get tags;
  @override
  String? get price;
  @override
  String? get negotiable;
  @override
  @JsonKey(name: 'contact_name')
  String? get contactName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'phone_hidden')
  String? get phoneHidden;
  @override
  String? get address;
  @override
  @JsonKey(name: 'city_id')
  String? get cityId;
  @override
  String? get lon;
  @override
  String? get lat;
  @override
  @JsonKey(name: 'ip_addr')
  String? get ipAddr;
  @override
  String? get length;
  @override
  String? get width;
  @override
  String? get weight;
  @override
  String? get height;
  @override
  String? get pickup;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  @JsonKey(name: 'hyper_del')
  String? get hyperDel;
  @override
  @JsonKey(name: 'seller_del')
  String? get sellerDel;
  @override
  String? get visits;
  @override
  @JsonKey(name: 'email_token')
  String? get emailToken;
  @override
  @JsonKey(name: 'phone_token')
  String? get phoneToken;
  @override
  @JsonKey(name: 'tmp_token')
  String? get tmpToken;
  @override
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  String? get verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers;
  @override
  @JsonKey(name: 'is_permanent')
  String? get isPermanent;
  @override
  String? get reviewed;
  @override
  String? get featured;
  @override
  String? get archived;
  @override
  String? get archivedAt;
  @override
  @JsonKey(name: 'archived_manually')
  String? get archivedManually;
  @override
  @JsonKey(name: 'deletion_mail_sent_at')
  String? get deletionMailSentAt;
  @override
  @JsonKey(name: 'fb_profile')
  String? get fbProfile;
  @override
  String? get partner;
  @override
  @JsonKey(name: 'discounted_price')
  String? get discountedPrice;
  @override
  @JsonKey(name: 'trending')
  String? get trending;
  @override
  String? get stock;
  @override
  @JsonKey(name: 'min_order')
  String? get minOrder;
  @override
  @JsonKey(name: 'samp_price')
  String? get sampPrice;
  @override
  @JsonKey(name: 'text_one')
  String? get textOne;
  @override
  @JsonKey(name: 'text_two')
  String? get textTwo;
  @override
  @JsonKey(name: 'ava_to')
  String? get avaTo;
  @override
  String? get branded;
  @override
  String? get wow;
  @override
  String? get offers;
  @override
  @JsonKey(name: 'story_display_days')
  String? get storyDisplayDays;
  @override
  String? get barcode;
  @override
  @JsonKey(name: 'b2b_pricing')
  String? get b2bPricing;
  @override
  String? get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String? get image;
  @override
  @JsonKey(name: 'discount_percentage')
  int? get discountPercentage;
  @override
  @JsonKey(name: 'post_type')
  String? get postType;
  @override
  String? get username;
  @override
  String? get city;
  @override
  @JsonKey(name: 'similarProductCount')
  int? get similarProductCount;
  @override
  @JsonKey(name: 'commentcount')
  int? get commentCount;
  @override
  @JsonKey(name: 'avg_rating')
  double? get avgRating;
  @override
  @JsonKey(name: 'userdetails')
  UserDetails? get userdetails;
  @override
  @JsonKey(ignore: true)
  _$$VendorSearchModelImplCopyWith<_$VendorSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
mixin _$UserDetails {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_status')
  String? get membershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_id')
  String? get membershipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_title')
  String? get membershipTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_color')
  String? get membershipColor => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'storyCount')
  int? get storyCount => throw _privateConstructorUsedError;
  bool? get sponsored => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortestDistance')
  double? get shortestDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'nearestBranch')
  String? get nearestBranch => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res, UserDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor,
      String? photo,
      String? name,
      @JsonKey(name: 'storyCount') int? storyCount,
      bool? sponsored,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'shortestDistance') double? shortestDistance,
      @JsonKey(name: 'nearestBranch') String? nearestBranch,
      String? longitude,
      String? latitude});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res, $Val extends UserDetails>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? storyCount = freezed,
    Object? sponsored = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? shortestDistance = freezed,
    Object? nearestBranch = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipId: freezed == membershipId
          ? _value.membershipId
          : membershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipTitle: freezed == membershipTitle
          ? _value.membershipTitle
          : membershipTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipColor: freezed == membershipColor
          ? _value.membershipColor
          : membershipColor // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsImplCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$UserDetailsImplCopyWith(
          _$UserDetailsImpl value, $Res Function(_$UserDetailsImpl) then) =
      __$$UserDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor,
      String? photo,
      String? name,
      @JsonKey(name: 'storyCount') int? storyCount,
      bool? sponsored,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      @JsonKey(name: 'shortestDistance') double? shortestDistance,
      @JsonKey(name: 'nearestBranch') String? nearestBranch,
      String? longitude,
      String? latitude});
}

/// @nodoc
class __$$UserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$UserDetailsImpl>
    implements _$$UserDetailsImplCopyWith<$Res> {
  __$$UserDetailsImplCopyWithImpl(
      _$UserDetailsImpl _value, $Res Function(_$UserDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? storyCount = freezed,
    Object? sponsored = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? shortestDistance = freezed,
    Object? nearestBranch = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$UserDetailsImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipId: freezed == membershipId
          ? _value.membershipId
          : membershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipTitle: freezed == membershipTitle
          ? _value.membershipTitle
          : membershipTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipColor: freezed == membershipColor
          ? _value.membershipColor
          : membershipColor // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sponsored: freezed == sponsored
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsImpl implements _UserDetails {
  const _$UserDetailsImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'membership_plan_id') this.membershipPlanId,
      @JsonKey(name: 'membership_status') this.membershipStatus,
      @JsonKey(name: 'membership_id') this.membershipId,
      @JsonKey(name: 'membership_title') this.membershipTitle,
      @JsonKey(name: 'membership_color') this.membershipColor,
      this.photo,
      this.name,
      @JsonKey(name: 'storyCount') this.storyCount,
      this.sponsored,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      @JsonKey(name: 'shortestDistance') this.shortestDistance,
      @JsonKey(name: 'nearestBranch') this.nearestBranch,
      this.longitude,
      this.latitude});

  factory _$UserDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'membership_plan_id')
  final String? membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  final String? membershipStatus;
  @override
  @JsonKey(name: 'membership_id')
  final String? membershipId;
  @override
  @JsonKey(name: 'membership_title')
  final String? membershipTitle;
  @override
  @JsonKey(name: 'membership_color')
  final String? membershipColor;
  @override
  final String? photo;
  @override
  final String? name;
  @override
  @JsonKey(name: 'storyCount')
  final int? storyCount;
  @override
  final bool? sponsored;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  @JsonKey(name: 'shortestDistance')
  final double? shortestDistance;
  @override
  @JsonKey(name: 'nearestBranch')
  final String? nearestBranch;
  @override
  final String? longitude;
  @override
  final String? latitude;

  @override
  String toString() {
    return 'UserDetails(userId: $userId, membershipPlanId: $membershipPlanId, membershipStatus: $membershipStatus, membershipId: $membershipId, membershipTitle: $membershipTitle, membershipColor: $membershipColor, photo: $photo, name: $name, storyCount: $storyCount, sponsored: $sponsored, hasSponsoredGifts: $hasSponsoredGifts, shortestDistance: $shortestDistance, nearestBranch: $nearestBranch, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.membershipPlanId, membershipPlanId) ||
                other.membershipPlanId == membershipPlanId) &&
            (identical(other.membershipStatus, membershipStatus) ||
                other.membershipStatus == membershipStatus) &&
            (identical(other.membershipId, membershipId) ||
                other.membershipId == membershipId) &&
            (identical(other.membershipTitle, membershipTitle) ||
                other.membershipTitle == membershipTitle) &&
            (identical(other.membershipColor, membershipColor) ||
                other.membershipColor == membershipColor) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.sponsored, sponsored) ||
                other.sponsored == sponsored) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.shortestDistance, shortestDistance) ||
                other.shortestDistance == shortestDistance) &&
            (identical(other.nearestBranch, nearestBranch) ||
                other.nearestBranch == nearestBranch) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      membershipPlanId,
      membershipStatus,
      membershipId,
      membershipTitle,
      membershipColor,
      photo,
      name,
      storyCount,
      sponsored,
      hasSponsoredGifts,
      shortestDistance,
      nearestBranch,
      longitude,
      latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      __$$UserDetailsImplCopyWithImpl<_$UserDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsImplToJson(
      this,
    );
  }
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
      {@JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'membership_plan_id') final String? membershipPlanId,
      @JsonKey(name: 'membership_status') final String? membershipStatus,
      @JsonKey(name: 'membership_id') final String? membershipId,
      @JsonKey(name: 'membership_title') final String? membershipTitle,
      @JsonKey(name: 'membership_color') final String? membershipColor,
      final String? photo,
      final String? name,
      @JsonKey(name: 'storyCount') final int? storyCount,
      final bool? sponsored,
      @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
      @JsonKey(name: 'shortestDistance') final double? shortestDistance,
      @JsonKey(name: 'nearestBranch') final String? nearestBranch,
      final String? longitude,
      final String? latitude}) = _$UserDetailsImpl;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$UserDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  String? get membershipStatus;
  @override
  @JsonKey(name: 'membership_id')
  String? get membershipId;
  @override
  @JsonKey(name: 'membership_title')
  String? get membershipTitle;
  @override
  @JsonKey(name: 'membership_color')
  String? get membershipColor;
  @override
  String? get photo;
  @override
  String? get name;
  @override
  @JsonKey(name: 'storyCount')
  int? get storyCount;
  @override
  bool? get sponsored;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  @JsonKey(name: 'shortestDistance')
  double? get shortestDistance;
  @override
  @JsonKey(name: 'nearestBranch')
  String? get nearestBranch;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
