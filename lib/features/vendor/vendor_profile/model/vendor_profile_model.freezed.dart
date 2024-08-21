// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorProfileModel _$VendorProfileModelFromJson(Map<String, dynamic> json) {
  return _VendorProfileModel.fromJson(json);
}

/// @nodoc
mixin _$VendorProfileModel {
  Vendor get vendor => throw _privateConstructorUsedError;
  @JsonKey(name: "hot_products")
  List<dynamic> get hotProducts => throw _privateConstructorUsedError;
  @JsonKey(name: "scratch_banner")
  String get scratchBanner => throw _privateConstructorUsedError;
  List<Advertisement> get advertisements => throw _privateConstructorUsedError;
  Posts get posts => throw _privateConstructorUsedError;
  List<PostType> get postTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "post_arr")
  List<PostArr> get postArr => throw _privateConstructorUsedError;
  bool get follow => throw _privateConstructorUsedError;
  @JsonKey(name: "follower_count")
  int get followerCount => throw _privateConstructorUsedError;
  List<dynamic> get qrs => throw _privateConstructorUsedError;
  List<Gift> get gifts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProfileModelCopyWith<VendorProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProfileModelCopyWith<$Res> {
  factory $VendorProfileModelCopyWith(
          VendorProfileModel value, $Res Function(VendorProfileModel) then) =
      _$VendorProfileModelCopyWithImpl<$Res, VendorProfileModel>;
  @useResult
  $Res call(
      {Vendor vendor,
      @JsonKey(name: "hot_products") List<dynamic> hotProducts,
      @JsonKey(name: "scratch_banner") String scratchBanner,
      List<Advertisement> advertisements,
      Posts posts,
      List<PostType> postTypes,
      @JsonKey(name: "post_arr") List<PostArr> postArr,
      bool follow,
      @JsonKey(name: "follower_count") int followerCount,
      List<dynamic> qrs,
      List<Gift> gifts});

  $VendorCopyWith<$Res> get vendor;
  $PostsCopyWith<$Res> get posts;
}

/// @nodoc
class _$VendorProfileModelCopyWithImpl<$Res, $Val extends VendorProfileModel>
    implements $VendorProfileModelCopyWith<$Res> {
  _$VendorProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = null,
    Object? hotProducts = null,
    Object? scratchBanner = null,
    Object? advertisements = null,
    Object? posts = null,
    Object? postTypes = null,
    Object? postArr = null,
    Object? follow = null,
    Object? followerCount = null,
    Object? qrs = null,
    Object? gifts = null,
  }) {
    return _then(_value.copyWith(
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      hotProducts: null == hotProducts
          ? _value.hotProducts
          : hotProducts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      scratchBanner: null == scratchBanner
          ? _value.scratchBanner
          : scratchBanner // ignore: cast_nullable_to_non_nullable
              as String,
      advertisements: null == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts,
      postTypes: null == postTypes
          ? _value.postTypes
          : postTypes // ignore: cast_nullable_to_non_nullable
              as List<PostType>,
      postArr: null == postArr
          ? _value.postArr
          : postArr // ignore: cast_nullable_to_non_nullable
              as List<PostArr>,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      qrs: null == qrs
          ? _value.qrs
          : qrs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      gifts: null == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res> get vendor {
    return $VendorCopyWith<$Res>(_value.vendor, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostsCopyWith<$Res> get posts {
    return $PostsCopyWith<$Res>(_value.posts, (value) {
      return _then(_value.copyWith(posts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorProfileModelImplCopyWith<$Res>
    implements $VendorProfileModelCopyWith<$Res> {
  factory _$$VendorProfileModelImplCopyWith(_$VendorProfileModelImpl value,
          $Res Function(_$VendorProfileModelImpl) then) =
      __$$VendorProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Vendor vendor,
      @JsonKey(name: "hot_products") List<dynamic> hotProducts,
      @JsonKey(name: "scratch_banner") String scratchBanner,
      List<Advertisement> advertisements,
      Posts posts,
      List<PostType> postTypes,
      @JsonKey(name: "post_arr") List<PostArr> postArr,
      bool follow,
      @JsonKey(name: "follower_count") int followerCount,
      List<dynamic> qrs,
      List<Gift> gifts});

  @override
  $VendorCopyWith<$Res> get vendor;
  @override
  $PostsCopyWith<$Res> get posts;
}

/// @nodoc
class __$$VendorProfileModelImplCopyWithImpl<$Res>
    extends _$VendorProfileModelCopyWithImpl<$Res, _$VendorProfileModelImpl>
    implements _$$VendorProfileModelImplCopyWith<$Res> {
  __$$VendorProfileModelImplCopyWithImpl(_$VendorProfileModelImpl _value,
      $Res Function(_$VendorProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = null,
    Object? hotProducts = null,
    Object? scratchBanner = null,
    Object? advertisements = null,
    Object? posts = null,
    Object? postTypes = null,
    Object? postArr = null,
    Object? follow = null,
    Object? followerCount = null,
    Object? qrs = null,
    Object? gifts = null,
  }) {
    return _then(_$VendorProfileModelImpl(
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      hotProducts: null == hotProducts
          ? _value._hotProducts
          : hotProducts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      scratchBanner: null == scratchBanner
          ? _value.scratchBanner
          : scratchBanner // ignore: cast_nullable_to_non_nullable
              as String,
      advertisements: null == advertisements
          ? _value._advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts,
      postTypes: null == postTypes
          ? _value._postTypes
          : postTypes // ignore: cast_nullable_to_non_nullable
              as List<PostType>,
      postArr: null == postArr
          ? _value._postArr
          : postArr // ignore: cast_nullable_to_non_nullable
              as List<PostArr>,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      qrs: null == qrs
          ? _value._qrs
          : qrs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      gifts: null == gifts
          ? _value._gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProfileModelImpl
    with DiagnosticableTreeMixin
    implements _VendorProfileModel {
  const _$VendorProfileModelImpl(
      {required this.vendor,
      @JsonKey(name: "hot_products") required final List<dynamic> hotProducts,
      @JsonKey(name: "scratch_banner") required this.scratchBanner,
      required final List<Advertisement> advertisements,
      required this.posts,
      required final List<PostType> postTypes,
      @JsonKey(name: "post_arr") required final List<PostArr> postArr,
      required this.follow,
      @JsonKey(name: "follower_count") required this.followerCount,
      required final List<dynamic> qrs,
      required final List<Gift> gifts})
      : _hotProducts = hotProducts,
        _advertisements = advertisements,
        _postTypes = postTypes,
        _postArr = postArr,
        _qrs = qrs,
        _gifts = gifts;

  factory _$VendorProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorProfileModelImplFromJson(json);

  @override
  final Vendor vendor;
  final List<dynamic> _hotProducts;
  @override
  @JsonKey(name: "hot_products")
  List<dynamic> get hotProducts {
    if (_hotProducts is EqualUnmodifiableListView) return _hotProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotProducts);
  }

  @override
  @JsonKey(name: "scratch_banner")
  final String scratchBanner;
  final List<Advertisement> _advertisements;
  @override
  List<Advertisement> get advertisements {
    if (_advertisements is EqualUnmodifiableListView) return _advertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertisements);
  }

  @override
  final Posts posts;
  final List<PostType> _postTypes;
  @override
  List<PostType> get postTypes {
    if (_postTypes is EqualUnmodifiableListView) return _postTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postTypes);
  }

  final List<PostArr> _postArr;
  @override
  @JsonKey(name: "post_arr")
  List<PostArr> get postArr {
    if (_postArr is EqualUnmodifiableListView) return _postArr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postArr);
  }

  @override
  final bool follow;
  @override
  @JsonKey(name: "follower_count")
  final int followerCount;
  final List<dynamic> _qrs;
  @override
  List<dynamic> get qrs {
    if (_qrs is EqualUnmodifiableListView) return _qrs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qrs);
  }

  final List<Gift> _gifts;
  @override
  List<Gift> get gifts {
    if (_gifts is EqualUnmodifiableListView) return _gifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gifts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VendorProfileModel(vendor: $vendor, hotProducts: $hotProducts, scratchBanner: $scratchBanner, advertisements: $advertisements, posts: $posts, postTypes: $postTypes, postArr: $postArr, follow: $follow, followerCount: $followerCount, qrs: $qrs, gifts: $gifts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VendorProfileModel'))
      ..add(DiagnosticsProperty('vendor', vendor))
      ..add(DiagnosticsProperty('hotProducts', hotProducts))
      ..add(DiagnosticsProperty('scratchBanner', scratchBanner))
      ..add(DiagnosticsProperty('advertisements', advertisements))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('postTypes', postTypes))
      ..add(DiagnosticsProperty('postArr', postArr))
      ..add(DiagnosticsProperty('follow', follow))
      ..add(DiagnosticsProperty('followerCount', followerCount))
      ..add(DiagnosticsProperty('qrs', qrs))
      ..add(DiagnosticsProperty('gifts', gifts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProfileModelImpl &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            const DeepCollectionEquality()
                .equals(other._hotProducts, _hotProducts) &&
            (identical(other.scratchBanner, scratchBanner) ||
                other.scratchBanner == scratchBanner) &&
            const DeepCollectionEquality()
                .equals(other._advertisements, _advertisements) &&
            (identical(other.posts, posts) || other.posts == posts) &&
            const DeepCollectionEquality()
                .equals(other._postTypes, _postTypes) &&
            const DeepCollectionEquality().equals(other._postArr, _postArr) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            const DeepCollectionEquality().equals(other._qrs, _qrs) &&
            const DeepCollectionEquality().equals(other._gifts, _gifts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendor,
      const DeepCollectionEquality().hash(_hotProducts),
      scratchBanner,
      const DeepCollectionEquality().hash(_advertisements),
      posts,
      const DeepCollectionEquality().hash(_postTypes),
      const DeepCollectionEquality().hash(_postArr),
      follow,
      followerCount,
      const DeepCollectionEquality().hash(_qrs),
      const DeepCollectionEquality().hash(_gifts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProfileModelImplCopyWith<_$VendorProfileModelImpl> get copyWith =>
      __$$VendorProfileModelImplCopyWithImpl<_$VendorProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProfileModelImplToJson(
      this,
    );
  }
}

abstract class _VendorProfileModel implements VendorProfileModel {
  const factory _VendorProfileModel(
      {required final Vendor vendor,
      @JsonKey(name: "hot_products") required final List<dynamic> hotProducts,
      @JsonKey(name: "scratch_banner") required final String scratchBanner,
      required final List<Advertisement> advertisements,
      required final Posts posts,
      required final List<PostType> postTypes,
      @JsonKey(name: "post_arr") required final List<PostArr> postArr,
      required final bool follow,
      @JsonKey(name: "follower_count") required final int followerCount,
      required final List<dynamic> qrs,
      required final List<Gift> gifts}) = _$VendorProfileModelImpl;

  factory _VendorProfileModel.fromJson(Map<String, dynamic> json) =
      _$VendorProfileModelImpl.fromJson;

  @override
  Vendor get vendor;
  @override
  @JsonKey(name: "hot_products")
  List<dynamic> get hotProducts;
  @override
  @JsonKey(name: "scratch_banner")
  String get scratchBanner;
  @override
  List<Advertisement> get advertisements;
  @override
  Posts get posts;
  @override
  List<PostType> get postTypes;
  @override
  @JsonKey(name: "post_arr")
  List<PostArr> get postArr;
  @override
  bool get follow;
  @override
  @JsonKey(name: "follower_count")
  int get followerCount;
  @override
  List<dynamic> get qrs;
  @override
  List<Gift> get gifts;
  @override
  @JsonKey(ignore: true)
  _$$VendorProfileModelImplCopyWith<_$VendorProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "language_code")
  String get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: "user_type_id")
  String get userTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "gender_id")
  String get genderId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_hidden")
  String get phoneHidden => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "remember_token")
  String? get rememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin")
  String get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: "can_be_impersonated")
  String get canBeImpersonated => throw _privateConstructorUsedError;
  @JsonKey(name: "disable_comments")
  String get disableComments => throw _privateConstructorUsedError;
  @JsonKey(name: "ip_addr")
  String get ipAddr => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: "provider_id")
  String get providerId => throw _privateConstructorUsedError;
  @JsonKey(name: "email_token")
  String get emailToken => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_token")
  String get phoneToken => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_email")
  String get verifiedEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_phone")
  String get verifiedPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "accept_terms")
  String get acceptTerms => throw _privateConstructorUsedError;
  @JsonKey(name: "accept_marketing_offers")
  String? get acceptMarketingOffers => throw _privateConstructorUsedError;
  @JsonKey(name: "time_zone")
  String get timeZone => throw _privateConstructorUsedError;
  String get blocked => throw _privateConstructorUsedError;
  String get closed => throw _privateConstructorUsedError;
  @JsonKey(name: "last_activity")
  String? get lastActivity => throw _privateConstructorUsedError;
  @JsonKey(name: "last_login_at")
  String? get lastLoginAt => throw _privateConstructorUsedError;
  String? get ims => throw _privateConstructorUsedError;
  String? get brandbazar => throw _privateConstructorUsedError;
  @JsonKey(name: "brandbazar_verify")
  String? get brandbazarVerify => throw _privateConstructorUsedError;
  @JsonKey(name: "brandbazar_status")
  String? get brandbazarStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "brandbazar_payment_status")
  String? get brandbazarPaymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_qr")
  String? get paymentQr => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_name")
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_branch")
  String? get bankBranch => throw _privateConstructorUsedError;
  @JsonKey(name: "ac_holder")
  String? get acHolder => throw _privateConstructorUsedError;
  @JsonKey(name: "ac_number")
  String? get acNumber => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "pan_vat")
  String? get panVat => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_certificate")
  String? get taxCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: "register_certificate")
  String? get registerCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: "user_verify")
  String get userVerify => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "language_code") String languageCode,
      @JsonKey(name: "user_type_id") String userTypeId,
      @JsonKey(name: "gender_id") String genderId,
      String name,
      String photo,
      String? about,
      String? phone,
      @JsonKey(name: "phone_hidden") String phoneHidden,
      String username,
      String email,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      String password,
      @JsonKey(name: "remember_token") String? rememberToken,
      @JsonKey(name: "is_admin") String isAdmin,
      @JsonKey(name: "can_be_impersonated") String canBeImpersonated,
      @JsonKey(name: "disable_comments") String disableComments,
      @JsonKey(name: "ip_addr") String ipAddr,
      String provider,
      @JsonKey(name: "provider_id") String providerId,
      @JsonKey(name: "email_token") String emailToken,
      @JsonKey(name: "phone_token") String phoneToken,
      @JsonKey(name: "verified_email") String verifiedEmail,
      @JsonKey(name: "verified_phone") String verifiedPhone,
      @JsonKey(name: "accept_terms") String acceptTerms,
      @JsonKey(name: "accept_marketing_offers") String? acceptMarketingOffers,
      @JsonKey(name: "time_zone") String timeZone,
      String blocked,
      String closed,
      @JsonKey(name: "last_activity") String? lastActivity,
      @JsonKey(name: "last_login_at") String? lastLoginAt,
      String? ims,
      String? brandbazar,
      @JsonKey(name: "brandbazar_verify") String? brandbazarVerify,
      @JsonKey(name: "brandbazar_status") String? brandbazarStatus,
      @JsonKey(name: "brandbazar_payment_status")
      String? brandbazarPaymentStatus,
      @JsonKey(name: "payment_qr") String? paymentQr,
      @JsonKey(name: "bank_name") String? bankName,
      @JsonKey(name: "bank_branch") String? bankBranch,
      @JsonKey(name: "ac_holder") String? acHolder,
      @JsonKey(name: "ac_number") String? acNumber,
      String? banner,
      String? description,
      @JsonKey(name: "pan_vat") String? panVat,
      @JsonKey(name: "tax_certificate") String? taxCertificate,
      @JsonKey(name: "register_certificate") String? registerCertificate,
      @JsonKey(name: "user_verify") String userVerify,
      String? gender,
      String? dob,
      @JsonKey(name: "deleted_at") String? deletedAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? languageCode = null,
    Object? userTypeId = null,
    Object? genderId = null,
    Object? name = null,
    Object? photo = null,
    Object? about = freezed,
    Object? phone = freezed,
    Object? phoneHidden = null,
    Object? username = null,
    Object? email = null,
    Object? emailVerifiedAt = freezed,
    Object? password = null,
    Object? rememberToken = freezed,
    Object? isAdmin = null,
    Object? canBeImpersonated = null,
    Object? disableComments = null,
    Object? ipAddr = null,
    Object? provider = null,
    Object? providerId = null,
    Object? emailToken = null,
    Object? phoneToken = null,
    Object? verifiedEmail = null,
    Object? verifiedPhone = null,
    Object? acceptTerms = null,
    Object? acceptMarketingOffers = freezed,
    Object? timeZone = null,
    Object? blocked = null,
    Object? closed = null,
    Object? lastActivity = freezed,
    Object? lastLoginAt = freezed,
    Object? ims = freezed,
    Object? brandbazar = freezed,
    Object? brandbazarVerify = freezed,
    Object? brandbazarStatus = freezed,
    Object? brandbazarPaymentStatus = freezed,
    Object? paymentQr = freezed,
    Object? bankName = freezed,
    Object? bankBranch = freezed,
    Object? acHolder = freezed,
    Object? acNumber = freezed,
    Object? banner = freezed,
    Object? description = freezed,
    Object? panVat = freezed,
    Object? taxCertificate = freezed,
    Object? registerCertificate = freezed,
    Object? userVerify = null,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeId: null == userTypeId
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      genderId: null == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: null == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as String,
      canBeImpersonated: null == canBeImpersonated
          ? _value.canBeImpersonated
          : canBeImpersonated // ignore: cast_nullable_to_non_nullable
              as String,
      disableComments: null == disableComments
          ? _value.disableComments
          : disableComments // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddr: null == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      emailToken: null == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String,
      phoneToken: null == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedEmail: null == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedPhone: null == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as String,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      ims: freezed == ims
          ? _value.ims
          : ims // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazar: freezed == brandbazar
          ? _value.brandbazar
          : brandbazar // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarVerify: freezed == brandbazarVerify
          ? _value.brandbazarVerify
          : brandbazarVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarStatus: freezed == brandbazarStatus
          ? _value.brandbazarStatus
          : brandbazarStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarPaymentStatus: freezed == brandbazarPaymentStatus
          ? _value.brandbazarPaymentStatus
          : brandbazarPaymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      acHolder: freezed == acHolder
          ? _value.acHolder
          : acHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      acNumber: freezed == acNumber
          ? _value.acNumber
          : acNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      panVat: freezed == panVat
          ? _value.panVat
          : panVat // ignore: cast_nullable_to_non_nullable
              as String?,
      taxCertificate: freezed == taxCertificate
          ? _value.taxCertificate
          : taxCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      registerCertificate: freezed == registerCertificate
          ? _value.registerCertificate
          : registerCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      userVerify: null == userVerify
          ? _value.userVerify
          : userVerify // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String id,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "language_code") String languageCode,
      @JsonKey(name: "user_type_id") String userTypeId,
      @JsonKey(name: "gender_id") String genderId,
      String name,
      String photo,
      String? about,
      String? phone,
      @JsonKey(name: "phone_hidden") String phoneHidden,
      String username,
      String email,
      @JsonKey(name: "email_verified_at") String? emailVerifiedAt,
      String password,
      @JsonKey(name: "remember_token") String? rememberToken,
      @JsonKey(name: "is_admin") String isAdmin,
      @JsonKey(name: "can_be_impersonated") String canBeImpersonated,
      @JsonKey(name: "disable_comments") String disableComments,
      @JsonKey(name: "ip_addr") String ipAddr,
      String provider,
      @JsonKey(name: "provider_id") String providerId,
      @JsonKey(name: "email_token") String emailToken,
      @JsonKey(name: "phone_token") String phoneToken,
      @JsonKey(name: "verified_email") String verifiedEmail,
      @JsonKey(name: "verified_phone") String verifiedPhone,
      @JsonKey(name: "accept_terms") String acceptTerms,
      @JsonKey(name: "accept_marketing_offers") String? acceptMarketingOffers,
      @JsonKey(name: "time_zone") String timeZone,
      String blocked,
      String closed,
      @JsonKey(name: "last_activity") String? lastActivity,
      @JsonKey(name: "last_login_at") String? lastLoginAt,
      String? ims,
      String? brandbazar,
      @JsonKey(name: "brandbazar_verify") String? brandbazarVerify,
      @JsonKey(name: "brandbazar_status") String? brandbazarStatus,
      @JsonKey(name: "brandbazar_payment_status")
      String? brandbazarPaymentStatus,
      @JsonKey(name: "payment_qr") String? paymentQr,
      @JsonKey(name: "bank_name") String? bankName,
      @JsonKey(name: "bank_branch") String? bankBranch,
      @JsonKey(name: "ac_holder") String? acHolder,
      @JsonKey(name: "ac_number") String? acNumber,
      String? banner,
      String? description,
      @JsonKey(name: "pan_vat") String? panVat,
      @JsonKey(name: "tax_certificate") String? taxCertificate,
      @JsonKey(name: "register_certificate") String? registerCertificate,
      @JsonKey(name: "user_verify") String userVerify,
      String? gender,
      String? dob,
      @JsonKey(name: "deleted_at") String? deletedAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? languageCode = null,
    Object? userTypeId = null,
    Object? genderId = null,
    Object? name = null,
    Object? photo = null,
    Object? about = freezed,
    Object? phone = freezed,
    Object? phoneHidden = null,
    Object? username = null,
    Object? email = null,
    Object? emailVerifiedAt = freezed,
    Object? password = null,
    Object? rememberToken = freezed,
    Object? isAdmin = null,
    Object? canBeImpersonated = null,
    Object? disableComments = null,
    Object? ipAddr = null,
    Object? provider = null,
    Object? providerId = null,
    Object? emailToken = null,
    Object? phoneToken = null,
    Object? verifiedEmail = null,
    Object? verifiedPhone = null,
    Object? acceptTerms = null,
    Object? acceptMarketingOffers = freezed,
    Object? timeZone = null,
    Object? blocked = null,
    Object? closed = null,
    Object? lastActivity = freezed,
    Object? lastLoginAt = freezed,
    Object? ims = freezed,
    Object? brandbazar = freezed,
    Object? brandbazarVerify = freezed,
    Object? brandbazarStatus = freezed,
    Object? brandbazarPaymentStatus = freezed,
    Object? paymentQr = freezed,
    Object? bankName = freezed,
    Object? bankBranch = freezed,
    Object? acHolder = freezed,
    Object? acNumber = freezed,
    Object? banner = freezed,
    Object? description = freezed,
    Object? panVat = freezed,
    Object? taxCertificate = freezed,
    Object? registerCertificate = freezed,
    Object? userVerify = null,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$VendorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeId: null == userTypeId
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      genderId: null == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: null == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as String,
      canBeImpersonated: null == canBeImpersonated
          ? _value.canBeImpersonated
          : canBeImpersonated // ignore: cast_nullable_to_non_nullable
              as String,
      disableComments: null == disableComments
          ? _value.disableComments
          : disableComments // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddr: null == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      emailToken: null == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String,
      phoneToken: null == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedEmail: null == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedPhone: null == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String,
      closed: null == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as String,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      ims: freezed == ims
          ? _value.ims
          : ims // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazar: freezed == brandbazar
          ? _value.brandbazar
          : brandbazar // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarVerify: freezed == brandbazarVerify
          ? _value.brandbazarVerify
          : brandbazarVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarStatus: freezed == brandbazarStatus
          ? _value.brandbazarStatus
          : brandbazarStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarPaymentStatus: freezed == brandbazarPaymentStatus
          ? _value.brandbazarPaymentStatus
          : brandbazarPaymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      acHolder: freezed == acHolder
          ? _value.acHolder
          : acHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      acNumber: freezed == acNumber
          ? _value.acNumber
          : acNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      panVat: freezed == panVat
          ? _value.panVat
          : panVat // ignore: cast_nullable_to_non_nullable
              as String?,
      taxCertificate: freezed == taxCertificate
          ? _value.taxCertificate
          : taxCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      registerCertificate: freezed == registerCertificate
          ? _value.registerCertificate
          : registerCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      userVerify: null == userVerify
          ? _value.userVerify
          : userVerify // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl with DiagnosticableTreeMixin implements _Vendor {
  const _$VendorImpl(
      {required this.id,
      @JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "language_code") required this.languageCode,
      @JsonKey(name: "user_type_id") required this.userTypeId,
      @JsonKey(name: "gender_id") required this.genderId,
      required this.name,
      required this.photo,
      this.about,
      this.phone,
      @JsonKey(name: "phone_hidden") required this.phoneHidden,
      required this.username,
      required this.email,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt,
      required this.password,
      @JsonKey(name: "remember_token") this.rememberToken,
      @JsonKey(name: "is_admin") required this.isAdmin,
      @JsonKey(name: "can_be_impersonated") required this.canBeImpersonated,
      @JsonKey(name: "disable_comments") required this.disableComments,
      @JsonKey(name: "ip_addr") required this.ipAddr,
      required this.provider,
      @JsonKey(name: "provider_id") required this.providerId,
      @JsonKey(name: "email_token") required this.emailToken,
      @JsonKey(name: "phone_token") required this.phoneToken,
      @JsonKey(name: "verified_email") required this.verifiedEmail,
      @JsonKey(name: "verified_phone") required this.verifiedPhone,
      @JsonKey(name: "accept_terms") required this.acceptTerms,
      @JsonKey(name: "accept_marketing_offers") this.acceptMarketingOffers,
      @JsonKey(name: "time_zone") required this.timeZone,
      required this.blocked,
      required this.closed,
      @JsonKey(name: "last_activity") this.lastActivity,
      @JsonKey(name: "last_login_at") this.lastLoginAt,
      this.ims,
      this.brandbazar,
      @JsonKey(name: "brandbazar_verify") this.brandbazarVerify,
      @JsonKey(name: "brandbazar_status") this.brandbazarStatus,
      @JsonKey(name: "brandbazar_payment_status") this.brandbazarPaymentStatus,
      @JsonKey(name: "payment_qr") this.paymentQr,
      @JsonKey(name: "bank_name") this.bankName,
      @JsonKey(name: "bank_branch") this.bankBranch,
      @JsonKey(name: "ac_holder") this.acHolder,
      @JsonKey(name: "ac_number") this.acNumber,
      this.banner,
      this.description,
      @JsonKey(name: "pan_vat") this.panVat,
      @JsonKey(name: "tax_certificate") this.taxCertificate,
      @JsonKey(name: "register_certificate") this.registerCertificate,
      @JsonKey(name: "user_verify") required this.userVerify,
      this.gender,
      this.dob,
      @JsonKey(name: "deleted_at") this.deletedAt,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "language_code")
  final String languageCode;
  @override
  @JsonKey(name: "user_type_id")
  final String userTypeId;
  @override
  @JsonKey(name: "gender_id")
  final String genderId;
  @override
  final String name;
  @override
  final String photo;
  @override
  final String? about;
  @override
  final String? phone;
  @override
  @JsonKey(name: "phone_hidden")
  final String phoneHidden;
  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey(name: "email_verified_at")
  final String? emailVerifiedAt;
  @override
  final String password;
  @override
  @JsonKey(name: "remember_token")
  final String? rememberToken;
  @override
  @JsonKey(name: "is_admin")
  final String isAdmin;
  @override
  @JsonKey(name: "can_be_impersonated")
  final String canBeImpersonated;
  @override
  @JsonKey(name: "disable_comments")
  final String disableComments;
  @override
  @JsonKey(name: "ip_addr")
  final String ipAddr;
  @override
  final String provider;
  @override
  @JsonKey(name: "provider_id")
  final String providerId;
  @override
  @JsonKey(name: "email_token")
  final String emailToken;
  @override
  @JsonKey(name: "phone_token")
  final String phoneToken;
  @override
  @JsonKey(name: "verified_email")
  final String verifiedEmail;
  @override
  @JsonKey(name: "verified_phone")
  final String verifiedPhone;
  @override
  @JsonKey(name: "accept_terms")
  final String acceptTerms;
  @override
  @JsonKey(name: "accept_marketing_offers")
  final String? acceptMarketingOffers;
  @override
  @JsonKey(name: "time_zone")
  final String timeZone;
  @override
  final String blocked;
  @override
  final String closed;
  @override
  @JsonKey(name: "last_activity")
  final String? lastActivity;
  @override
  @JsonKey(name: "last_login_at")
  final String? lastLoginAt;
  @override
  final String? ims;
  @override
  final String? brandbazar;
  @override
  @JsonKey(name: "brandbazar_verify")
  final String? brandbazarVerify;
  @override
  @JsonKey(name: "brandbazar_status")
  final String? brandbazarStatus;
  @override
  @JsonKey(name: "brandbazar_payment_status")
  final String? brandbazarPaymentStatus;
  @override
  @JsonKey(name: "payment_qr")
  final String? paymentQr;
  @override
  @JsonKey(name: "bank_name")
  final String? bankName;
  @override
  @JsonKey(name: "bank_branch")
  final String? bankBranch;
  @override
  @JsonKey(name: "ac_holder")
  final String? acHolder;
  @override
  @JsonKey(name: "ac_number")
  final String? acNumber;
  @override
  final String? banner;
  @override
  final String? description;
  @override
  @JsonKey(name: "pan_vat")
  final String? panVat;
  @override
  @JsonKey(name: "tax_certificate")
  final String? taxCertificate;
  @override
  @JsonKey(name: "register_certificate")
  final String? registerCertificate;
  @override
  @JsonKey(name: "user_verify")
  final String userVerify;
  @override
  final String? gender;
  @override
  final String? dob;
  @override
  @JsonKey(name: "deleted_at")
  final String? deletedAt;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Vendor(id: $id, countryCode: $countryCode, languageCode: $languageCode, userTypeId: $userTypeId, genderId: $genderId, name: $name, photo: $photo, about: $about, phone: $phone, phoneHidden: $phoneHidden, username: $username, email: $email, emailVerifiedAt: $emailVerifiedAt, password: $password, rememberToken: $rememberToken, isAdmin: $isAdmin, canBeImpersonated: $canBeImpersonated, disableComments: $disableComments, ipAddr: $ipAddr, provider: $provider, providerId: $providerId, emailToken: $emailToken, phoneToken: $phoneToken, verifiedEmail: $verifiedEmail, verifiedPhone: $verifiedPhone, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, timeZone: $timeZone, blocked: $blocked, closed: $closed, lastActivity: $lastActivity, lastLoginAt: $lastLoginAt, ims: $ims, brandbazar: $brandbazar, brandbazarVerify: $brandbazarVerify, brandbazarStatus: $brandbazarStatus, brandbazarPaymentStatus: $brandbazarPaymentStatus, paymentQr: $paymentQr, bankName: $bankName, bankBranch: $bankBranch, acHolder: $acHolder, acNumber: $acNumber, banner: $banner, description: $description, panVat: $panVat, taxCertificate: $taxCertificate, registerCertificate: $registerCertificate, userVerify: $userVerify, gender: $gender, dob: $dob, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Vendor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('languageCode', languageCode))
      ..add(DiagnosticsProperty('userTypeId', userTypeId))
      ..add(DiagnosticsProperty('genderId', genderId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('phoneHidden', phoneHidden))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailVerifiedAt', emailVerifiedAt))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('rememberToken', rememberToken))
      ..add(DiagnosticsProperty('isAdmin', isAdmin))
      ..add(DiagnosticsProperty('canBeImpersonated', canBeImpersonated))
      ..add(DiagnosticsProperty('disableComments', disableComments))
      ..add(DiagnosticsProperty('ipAddr', ipAddr))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('providerId', providerId))
      ..add(DiagnosticsProperty('emailToken', emailToken))
      ..add(DiagnosticsProperty('phoneToken', phoneToken))
      ..add(DiagnosticsProperty('verifiedEmail', verifiedEmail))
      ..add(DiagnosticsProperty('verifiedPhone', verifiedPhone))
      ..add(DiagnosticsProperty('acceptTerms', acceptTerms))
      ..add(DiagnosticsProperty('acceptMarketingOffers', acceptMarketingOffers))
      ..add(DiagnosticsProperty('timeZone', timeZone))
      ..add(DiagnosticsProperty('blocked', blocked))
      ..add(DiagnosticsProperty('closed', closed))
      ..add(DiagnosticsProperty('lastActivity', lastActivity))
      ..add(DiagnosticsProperty('lastLoginAt', lastLoginAt))
      ..add(DiagnosticsProperty('ims', ims))
      ..add(DiagnosticsProperty('brandbazar', brandbazar))
      ..add(DiagnosticsProperty('brandbazarVerify', brandbazarVerify))
      ..add(DiagnosticsProperty('brandbazarStatus', brandbazarStatus))
      ..add(DiagnosticsProperty(
          'brandbazarPaymentStatus', brandbazarPaymentStatus))
      ..add(DiagnosticsProperty('paymentQr', paymentQr))
      ..add(DiagnosticsProperty('bankName', bankName))
      ..add(DiagnosticsProperty('bankBranch', bankBranch))
      ..add(DiagnosticsProperty('acHolder', acHolder))
      ..add(DiagnosticsProperty('acNumber', acNumber))
      ..add(DiagnosticsProperty('banner', banner))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('panVat', panVat))
      ..add(DiagnosticsProperty('taxCertificate', taxCertificate))
      ..add(DiagnosticsProperty('registerCertificate', registerCertificate))
      ..add(DiagnosticsProperty('userVerify', userVerify))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('dob', dob))
      ..add(DiagnosticsProperty('deletedAt', deletedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.userTypeId, userTypeId) ||
                other.userTypeId == userTypeId) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneHidden, phoneHidden) ||
                other.phoneHidden == phoneHidden) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberToken, rememberToken) ||
                other.rememberToken == rememberToken) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.canBeImpersonated, canBeImpersonated) ||
                other.canBeImpersonated == canBeImpersonated) &&
            (identical(other.disableComments, disableComments) ||
                other.disableComments == disableComments) &&
            (identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.emailToken, emailToken) ||
                other.emailToken == emailToken) &&
            (identical(other.phoneToken, phoneToken) ||
                other.phoneToken == phoneToken) &&
            (identical(other.verifiedEmail, verifiedEmail) ||
                other.verifiedEmail == verifiedEmail) &&
            (identical(other.verifiedPhone, verifiedPhone) ||
                other.verifiedPhone == verifiedPhone) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms) &&
            (identical(other.acceptMarketingOffers, acceptMarketingOffers) ||
                other.acceptMarketingOffers == acceptMarketingOffers) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.ims, ims) || other.ims == ims) &&
            (identical(other.brandbazar, brandbazar) ||
                other.brandbazar == brandbazar) &&
            (identical(other.brandbazarVerify, brandbazarVerify) ||
                other.brandbazarVerify == brandbazarVerify) &&
            (identical(other.brandbazarStatus, brandbazarStatus) ||
                other.brandbazarStatus == brandbazarStatus) &&
            (identical(
                    other.brandbazarPaymentStatus, brandbazarPaymentStatus) ||
                other.brandbazarPaymentStatus == brandbazarPaymentStatus) &&
            (identical(other.paymentQr, paymentQr) ||
                other.paymentQr == paymentQr) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.acHolder, acHolder) ||
                other.acHolder == acHolder) &&
            (identical(other.acNumber, acNumber) ||
                other.acNumber == acNumber) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.panVat, panVat) || other.panVat == panVat) &&
            (identical(other.taxCertificate, taxCertificate) ||
                other.taxCertificate == taxCertificate) &&
            (identical(other.registerCertificate, registerCertificate) ||
                other.registerCertificate == registerCertificate) &&
            (identical(other.userVerify, userVerify) ||
                other.userVerify == userVerify) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        countryCode,
        languageCode,
        userTypeId,
        genderId,
        name,
        photo,
        about,
        phone,
        phoneHidden,
        username,
        email,
        emailVerifiedAt,
        password,
        rememberToken,
        isAdmin,
        canBeImpersonated,
        disableComments,
        ipAddr,
        provider,
        providerId,
        emailToken,
        phoneToken,
        verifiedEmail,
        verifiedPhone,
        acceptTerms,
        acceptMarketingOffers,
        timeZone,
        blocked,
        closed,
        lastActivity,
        lastLoginAt,
        ims,
        brandbazar,
        brandbazarVerify,
        brandbazarStatus,
        brandbazarPaymentStatus,
        paymentQr,
        bankName,
        bankBranch,
        acHolder,
        acNumber,
        banner,
        description,
        panVat,
        taxCertificate,
        registerCertificate,
        userVerify,
        gender,
        dob,
        deletedAt,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
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
      {required final String id,
      @JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "language_code") required final String languageCode,
      @JsonKey(name: "user_type_id") required final String userTypeId,
      @JsonKey(name: "gender_id") required final String genderId,
      required final String name,
      required final String photo,
      final String? about,
      final String? phone,
      @JsonKey(name: "phone_hidden") required final String phoneHidden,
      required final String username,
      required final String email,
      @JsonKey(name: "email_verified_at") final String? emailVerifiedAt,
      required final String password,
      @JsonKey(name: "remember_token") final String? rememberToken,
      @JsonKey(name: "is_admin") required final String isAdmin,
      @JsonKey(name: "can_be_impersonated")
      required final String canBeImpersonated,
      @JsonKey(name: "disable_comments") required final String disableComments,
      @JsonKey(name: "ip_addr") required final String ipAddr,
      required final String provider,
      @JsonKey(name: "provider_id") required final String providerId,
      @JsonKey(name: "email_token") required final String emailToken,
      @JsonKey(name: "phone_token") required final String phoneToken,
      @JsonKey(name: "verified_email") required final String verifiedEmail,
      @JsonKey(name: "verified_phone") required final String verifiedPhone,
      @JsonKey(name: "accept_terms") required final String acceptTerms,
      @JsonKey(name: "accept_marketing_offers")
      final String? acceptMarketingOffers,
      @JsonKey(name: "time_zone") required final String timeZone,
      required final String blocked,
      required final String closed,
      @JsonKey(name: "last_activity") final String? lastActivity,
      @JsonKey(name: "last_login_at") final String? lastLoginAt,
      final String? ims,
      final String? brandbazar,
      @JsonKey(name: "brandbazar_verify") final String? brandbazarVerify,
      @JsonKey(name: "brandbazar_status") final String? brandbazarStatus,
      @JsonKey(name: "brandbazar_payment_status")
      final String? brandbazarPaymentStatus,
      @JsonKey(name: "payment_qr") final String? paymentQr,
      @JsonKey(name: "bank_name") final String? bankName,
      @JsonKey(name: "bank_branch") final String? bankBranch,
      @JsonKey(name: "ac_holder") final String? acHolder,
      @JsonKey(name: "ac_number") final String? acNumber,
      final String? banner,
      final String? description,
      @JsonKey(name: "pan_vat") final String? panVat,
      @JsonKey(name: "tax_certificate") final String? taxCertificate,
      @JsonKey(name: "register_certificate") final String? registerCertificate,
      @JsonKey(name: "user_verify") required final String userVerify,
      final String? gender,
      final String? dob,
      @JsonKey(name: "deleted_at") final String? deletedAt,
      @JsonKey(name: "created_at") required final String createdAt,
      @JsonKey(name: "updated_at")
      required final String updatedAt}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "language_code")
  String get languageCode;
  @override
  @JsonKey(name: "user_type_id")
  String get userTypeId;
  @override
  @JsonKey(name: "gender_id")
  String get genderId;
  @override
  String get name;
  @override
  String get photo;
  @override
  String? get about;
  @override
  String? get phone;
  @override
  @JsonKey(name: "phone_hidden")
  String get phoneHidden;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(name: "email_verified_at")
  String? get emailVerifiedAt;
  @override
  String get password;
  @override
  @JsonKey(name: "remember_token")
  String? get rememberToken;
  @override
  @JsonKey(name: "is_admin")
  String get isAdmin;
  @override
  @JsonKey(name: "can_be_impersonated")
  String get canBeImpersonated;
  @override
  @JsonKey(name: "disable_comments")
  String get disableComments;
  @override
  @JsonKey(name: "ip_addr")
  String get ipAddr;
  @override
  String get provider;
  @override
  @JsonKey(name: "provider_id")
  String get providerId;
  @override
  @JsonKey(name: "email_token")
  String get emailToken;
  @override
  @JsonKey(name: "phone_token")
  String get phoneToken;
  @override
  @JsonKey(name: "verified_email")
  String get verifiedEmail;
  @override
  @JsonKey(name: "verified_phone")
  String get verifiedPhone;
  @override
  @JsonKey(name: "accept_terms")
  String get acceptTerms;
  @override
  @JsonKey(name: "accept_marketing_offers")
  String? get acceptMarketingOffers;
  @override
  @JsonKey(name: "time_zone")
  String get timeZone;
  @override
  String get blocked;
  @override
  String get closed;
  @override
  @JsonKey(name: "last_activity")
  String? get lastActivity;
  @override
  @JsonKey(name: "last_login_at")
  String? get lastLoginAt;
  @override
  String? get ims;
  @override
  String? get brandbazar;
  @override
  @JsonKey(name: "brandbazar_verify")
  String? get brandbazarVerify;
  @override
  @JsonKey(name: "brandbazar_status")
  String? get brandbazarStatus;
  @override
  @JsonKey(name: "brandbazar_payment_status")
  String? get brandbazarPaymentStatus;
  @override
  @JsonKey(name: "payment_qr")
  String? get paymentQr;
  @override
  @JsonKey(name: "bank_name")
  String? get bankName;
  @override
  @JsonKey(name: "bank_branch")
  String? get bankBranch;
  @override
  @JsonKey(name: "ac_holder")
  String? get acHolder;
  @override
  @JsonKey(name: "ac_number")
  String? get acNumber;
  @override
  String? get banner;
  @override
  String? get description;
  @override
  @JsonKey(name: "pan_vat")
  String? get panVat;
  @override
  @JsonKey(name: "tax_certificate")
  String? get taxCertificate;
  @override
  @JsonKey(name: "register_certificate")
  String? get registerCertificate;
  @override
  @JsonKey(name: "user_verify")
  String get userVerify;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  @JsonKey(name: "deleted_at")
  String? get deletedAt;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Advertisement _$AdvertisementFromJson(Map<String, dynamic> json) {
  return _Advertisement.fromJson(json);
}

/// @nodoc
mixin _$Advertisement {
  String get id => throw _privateConstructorUsedError;
  String get order => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementCopyWith<Advertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementCopyWith<$Res> {
  factory $AdvertisementCopyWith(
          Advertisement value, $Res Function(Advertisement) then) =
      _$AdvertisementCopyWithImpl<$Res, Advertisement>;
  @useResult
  $Res call(
      {String id,
      String order,
      String status,
      String image,
      String link,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class _$AdvertisementCopyWithImpl<$Res, $Val extends Advertisement>
    implements $AdvertisementCopyWith<$Res> {
  _$AdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? status = null,
    Object? image = null,
    Object? link = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {String id,
      String order,
      String status,
      String image,
      String link,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class __$$AdvertisementImplCopyWithImpl<$Res>
    extends _$AdvertisementCopyWithImpl<$Res, _$AdvertisementImpl>
    implements _$$AdvertisementImplCopyWith<$Res> {
  __$$AdvertisementImplCopyWithImpl(
      _$AdvertisementImpl _value, $Res Function(_$AdvertisementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? status = null,
    Object? image = null,
    Object? link = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AdvertisementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementImpl
    with DiagnosticableTreeMixin
    implements _Advertisement {
  const _$AdvertisementImpl(
      {required this.id,
      required this.order,
      required this.status,
      required this.image,
      required this.link,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});

  factory _$AdvertisementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementImplFromJson(json);

  @override
  final String id;
  @override
  final String order;
  @override
  final String status;
  @override
  final String image;
  @override
  final String link;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Advertisement(id: $id, order: $order, status: $status, image: $image, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Advertisement'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, order, status, image, link, createdAt, updatedAt);

  @JsonKey(ignore: true)
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
          {required final String id,
          required final String order,
          required final String status,
          required final String image,
          required final String link,
          @JsonKey(name: "created_at") required final String createdAt,
          @JsonKey(name: "updated_at") required final String updatedAt}) =
      _$AdvertisementImpl;

  factory _Advertisement.fromJson(Map<String, dynamic> json) =
      _$AdvertisementImpl.fromJson;

  @override
  String get id;
  @override
  String get order;
  @override
  String get status;
  @override
  String get image;
  @override
  String get link;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Posts {
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String get lastPageUrl => throw _privateConstructorUsedError;
  List<Link> get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res, Posts>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      List<dynamic> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int total});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res, $Val extends Posts>
    implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      List<dynamic> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int total});
}

/// @nodoc
class __$$PostsImplCopyWithImpl<$Res>
    extends _$PostsCopyWithImpl<$Res, _$PostsImpl>
    implements _$$PostsImplCopyWith<$Res> {
  __$$PostsImplCopyWithImpl(
      _$PostsImpl _value, $Res Function(_$PostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_$PostsImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsImpl with DiagnosticableTreeMixin implements _Posts {
  const _$PostsImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      required final List<dynamic> data,
      @JsonKey(name: "first_page_url") required this.firstPageUrl,
      required this.from,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "last_page_url") required this.lastPageUrl,
      required final List<Link> links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      required this.path,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to,
      required this.total})
      : _data = data,
        _links = links;

  factory _$PostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int currentPage;
  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String lastPageUrl;
  final List<Link> _links;
  @override
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  final String path;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Posts(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Posts'))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('firstPageUrl', firstPageUrl))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('lastPage', lastPage))
      ..add(DiagnosticsProperty('lastPageUrl', lastPageUrl))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('nextPageUrl', nextPageUrl))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('prevPageUrl', prevPageUrl))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
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
  const factory _Posts(
      {@JsonKey(name: "current_page") required final int currentPage,
      required final List<dynamic> data,
      @JsonKey(name: "first_page_url") required final String firstPageUrl,
      required final int? from,
      @JsonKey(name: "last_page") required final int lastPage,
      @JsonKey(name: "last_page_url") required final String lastPageUrl,
      required final List<Link> links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      required final String path,
      @JsonKey(name: "per_page") required final int perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      required final int total}) = _$PostsImpl;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$PostsImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  List<dynamic> get data;
  @override
  @JsonKey(name: "first_page_url")
  String get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String get lastPageUrl;
  @override
  List<Link> get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  String get path;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String label, bool active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl with DiagnosticableTreeMixin implements _Link {
  const _$LinkImpl({this.url, required this.label, required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String label;
  @override
  final bool active;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Link'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('active', active));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
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
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String? url,
      required final String label,
      required final bool active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String get label;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostType _$PostTypeFromJson(Map<String, dynamic> json) {
  return _PostType.fromJson(json);
}

/// @nodoc
mixin _$PostType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get lft => throw _privateConstructorUsedError;
  int? get rgt => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTypeCopyWith<PostType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTypeCopyWith<$Res> {
  factory $PostTypeCopyWith(PostType value, $Res Function(PostType) then) =
      _$PostTypeCopyWithImpl<$Res, PostType>;
  @useResult
  $Res call(
      {int id, String name, int? lft, int? rgt, int? depth, String active});
}

/// @nodoc
class _$PostTypeCopyWithImpl<$Res, $Val extends PostType>
    implements $PostTypeCopyWith<$Res> {
  _$PostTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lft = freezed,
    Object? rgt = freezed,
    Object? depth = freezed,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lft: freezed == lft
          ? _value.lft
          : lft // ignore: cast_nullable_to_non_nullable
              as int?,
      rgt: freezed == rgt
          ? _value.rgt
          : rgt // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostTypeImplCopyWith<$Res>
    implements $PostTypeCopyWith<$Res> {
  factory _$$PostTypeImplCopyWith(
          _$PostTypeImpl value, $Res Function(_$PostTypeImpl) then) =
      __$$PostTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int? lft, int? rgt, int? depth, String active});
}

/// @nodoc
class __$$PostTypeImplCopyWithImpl<$Res>
    extends _$PostTypeCopyWithImpl<$Res, _$PostTypeImpl>
    implements _$$PostTypeImplCopyWith<$Res> {
  __$$PostTypeImplCopyWithImpl(
      _$PostTypeImpl _value, $Res Function(_$PostTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lft = freezed,
    Object? rgt = freezed,
    Object? depth = freezed,
    Object? active = null,
  }) {
    return _then(_$PostTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lft: freezed == lft
          ? _value.lft
          : lft // ignore: cast_nullable_to_non_nullable
              as int?,
      rgt: freezed == rgt
          ? _value.rgt
          : rgt // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostTypeImpl with DiagnosticableTreeMixin implements _PostType {
  const _$PostTypeImpl(
      {required this.id,
      required this.name,
      this.lft,
      this.rgt,
      this.depth,
      required this.active});

  factory _$PostTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int? lft;
  @override
  final int? rgt;
  @override
  final int? depth;
  @override
  final String active;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostType(id: $id, name: $name, lft: $lft, rgt: $rgt, depth: $depth, active: $active)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('lft', lft))
      ..add(DiagnosticsProperty('rgt', rgt))
      ..add(DiagnosticsProperty('depth', depth))
      ..add(DiagnosticsProperty('active', active));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lft, lft) || other.lft == lft) &&
            (identical(other.rgt, rgt) || other.rgt == rgt) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, lft, rgt, depth, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostTypeImplCopyWith<_$PostTypeImpl> get copyWith =>
      __$$PostTypeImplCopyWithImpl<_$PostTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostTypeImplToJson(
      this,
    );
  }
}

abstract class _PostType implements PostType {
  const factory _PostType(
      {required final int id,
      required final String name,
      final int? lft,
      final int? rgt,
      final int? depth,
      required final String active}) = _$PostTypeImpl;

  factory _PostType.fromJson(Map<String, dynamic> json) =
      _$PostTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int? get lft;
  @override
  int? get rgt;
  @override
  int? get depth;
  @override
  String get active;
  @override
  @JsonKey(ignore: true)
  _$$PostTypeImplCopyWith<_$PostTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostArr _$PostArrFromJson(Map<String, dynamic> json) {
  return _PostArr.fromJson(json);
}

/// @nodoc
mixin _$PostArr {
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String get lastPageUrl => throw _privateConstructorUsedError;
  List<Link> get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostArrCopyWith<PostArr> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostArrCopyWith<$Res> {
  factory $PostArrCopyWith(PostArr value, $Res Function(PostArr) then) =
      _$PostArrCopyWithImpl<$Res, PostArr>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      List<dynamic> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int total});
}

/// @nodoc
class _$PostArrCopyWithImpl<$Res, $Val extends PostArr>
    implements $PostArrCopyWith<$Res> {
  _$PostArrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostArrImplCopyWith<$Res> implements $PostArrCopyWith<$Res> {
  factory _$$PostArrImplCopyWith(
          _$PostArrImpl value, $Res Function(_$PostArrImpl) then) =
      __$$PostArrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      List<dynamic> data,
      @JsonKey(name: "first_page_url") String firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "last_page_url") String lastPageUrl,
      List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int total});
}

/// @nodoc
class __$$PostArrImplCopyWithImpl<$Res>
    extends _$PostArrCopyWithImpl<$Res, _$PostArrImpl>
    implements _$$PostArrImplCopyWith<$Res> {
  __$$PostArrImplCopyWithImpl(
      _$PostArrImpl _value, $Res Function(_$PostArrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_$PostArrImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostArrImpl with DiagnosticableTreeMixin implements _PostArr {
  const _$PostArrImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      required final List<dynamic> data,
      @JsonKey(name: "first_page_url") required this.firstPageUrl,
      required this.from,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "last_page_url") required this.lastPageUrl,
      required final List<Link> links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      required this.path,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to,
      required this.total})
      : _data = data,
        _links = links;

  factory _$PostArrImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostArrImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int currentPage;
  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String lastPageUrl;
  final List<Link> _links;
  @override
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  final String path;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostArr(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostArr'))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('firstPageUrl', firstPageUrl))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('lastPage', lastPage))
      ..add(DiagnosticsProperty('lastPageUrl', lastPageUrl))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('nextPageUrl', nextPageUrl))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('prevPageUrl', prevPageUrl))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostArrImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostArrImplCopyWith<_$PostArrImpl> get copyWith =>
      __$$PostArrImplCopyWithImpl<_$PostArrImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostArrImplToJson(
      this,
    );
  }
}

abstract class _PostArr implements PostArr {
  const factory _PostArr(
      {@JsonKey(name: "current_page") required final int currentPage,
      required final List<dynamic> data,
      @JsonKey(name: "first_page_url") required final String firstPageUrl,
      required final int? from,
      @JsonKey(name: "last_page") required final int lastPage,
      @JsonKey(name: "last_page_url") required final String lastPageUrl,
      required final List<Link> links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      required final String path,
      @JsonKey(name: "per_page") required final int perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      required final int total}) = _$PostArrImpl;

  factory _PostArr.fromJson(Map<String, dynamic> json) = _$PostArrImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  List<dynamic> get data;
  @override
  @JsonKey(name: "first_page_url")
  String get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String get lastPageUrl;
  @override
  List<Link> get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  String get path;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$PostArrImplCopyWith<_$PostArrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gift _$GiftFromJson(Map<String, dynamic> json) {
  return _Gift.fromJson(json);
}

/// @nodoc
mixin _$Gift {
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftCopyWith<Gift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) then) =
      _$GiftCopyWithImpl<$Res, Gift>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$GiftCopyWithImpl<$Res, $Val extends Gift>
    implements $GiftCopyWith<$Res> {
  _$GiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftImplCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$$GiftImplCopyWith(
          _$GiftImpl value, $Res Function(_$GiftImpl) then) =
      __$$GiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$GiftImplCopyWithImpl<$Res>
    extends _$GiftCopyWithImpl<$Res, _$GiftImpl>
    implements _$$GiftImplCopyWith<$Res> {
  __$$GiftImplCopyWithImpl(_$GiftImpl _value, $Res Function(_$GiftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$GiftImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftImpl with DiagnosticableTreeMixin implements _Gift {
  const _$GiftImpl({required this.image});

  factory _$GiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftImplFromJson(json);

  @override
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Gift(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Gift'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
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
  const factory _Gift({required final String image}) = _$GiftImpl;

  factory _Gift.fromJson(Map<String, dynamic> json) = _$GiftImpl.fromJson;

  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$GiftImplCopyWith<_$GiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
