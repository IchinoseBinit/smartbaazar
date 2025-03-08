// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_all_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorAllProductsResponse _$VendorAllProductsResponseFromJson(
    Map<String, dynamic> json) {
  return _VendorAllProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorAllProductsResponse {
  VendorProfileAllProductsData? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorAllProductsResponseCopyWith<VendorAllProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorAllProductsResponseCopyWith<$Res> {
  factory $VendorAllProductsResponseCopyWith(VendorAllProductsResponse value,
          $Res Function(VendorAllProductsResponse) then) =
      _$VendorAllProductsResponseCopyWithImpl<$Res, VendorAllProductsResponse>;
  @useResult
  $Res call({VendorProfileAllProductsData? data, String? msg});

  $VendorProfileAllProductsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendorAllProductsResponseCopyWithImpl<$Res,
        $Val extends VendorAllProductsResponse>
    implements $VendorAllProductsResponseCopyWith<$Res> {
  _$VendorAllProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as VendorProfileAllProductsData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorProfileAllProductsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendorProfileAllProductsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorAllProductsResponseImplCopyWith<$Res>
    implements $VendorAllProductsResponseCopyWith<$Res> {
  factory _$$VendorAllProductsResponseImplCopyWith(
          _$VendorAllProductsResponseImpl value,
          $Res Function(_$VendorAllProductsResponseImpl) then) =
      __$$VendorAllProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VendorProfileAllProductsData? data, String? msg});

  @override
  $VendorProfileAllProductsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendorAllProductsResponseImplCopyWithImpl<$Res>
    extends _$VendorAllProductsResponseCopyWithImpl<$Res,
        _$VendorAllProductsResponseImpl>
    implements _$$VendorAllProductsResponseImplCopyWith<$Res> {
  __$$VendorAllProductsResponseImplCopyWithImpl(
      _$VendorAllProductsResponseImpl _value,
      $Res Function(_$VendorAllProductsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$VendorAllProductsResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorProfileAllProductsData?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorAllProductsResponseImpl implements _VendorAllProductsResponse {
  const _$VendorAllProductsResponseImpl(
      {required this.data, required this.msg});

  factory _$VendorAllProductsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorAllProductsResponseImplFromJson(json);

  @override
  final VendorProfileAllProductsData? data;
  @override
  final String? msg;

  @override
  String toString() {
    return 'VendorAllProductsResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorAllProductsResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorAllProductsResponseImplCopyWith<_$VendorAllProductsResponseImpl>
      get copyWith => __$$VendorAllProductsResponseImplCopyWithImpl<
          _$VendorAllProductsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorAllProductsResponseImplToJson(
      this,
    );
  }
}

abstract class _VendorAllProductsResponse implements VendorAllProductsResponse {
  const factory _VendorAllProductsResponse(
      {required final VendorProfileAllProductsData? data,
      required final String? msg}) = _$VendorAllProductsResponseImpl;

  factory _VendorAllProductsResponse.fromJson(Map<String, dynamic> json) =
      _$VendorAllProductsResponseImpl.fromJson;

  @override
  VendorProfileAllProductsData? get data;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$VendorAllProductsResponseImplCopyWith<_$VendorAllProductsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VendorProfileAllProductsData _$VendorProfileAllProductsDataFromJson(
    Map<String, dynamic> json) {
  return _VendorProfileAllProductsData.fromJson(json);
}

/// @nodoc
mixin _$VendorProfileAllProductsData {
  AllProductsWrapper? get all_products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProfileAllProductsDataCopyWith<VendorProfileAllProductsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProfileAllProductsDataCopyWith<$Res> {
  factory $VendorProfileAllProductsDataCopyWith(
          VendorProfileAllProductsData value,
          $Res Function(VendorProfileAllProductsData) then) =
      _$VendorProfileAllProductsDataCopyWithImpl<$Res,
          VendorProfileAllProductsData>;
  @useResult
  $Res call({AllProductsWrapper? all_products});

  $AllProductsWrapperCopyWith<$Res>? get all_products;
}

/// @nodoc
class _$VendorProfileAllProductsDataCopyWithImpl<$Res,
        $Val extends VendorProfileAllProductsData>
    implements $VendorProfileAllProductsDataCopyWith<$Res> {
  _$VendorProfileAllProductsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all_products = freezed,
  }) {
    return _then(_value.copyWith(
      all_products: freezed == all_products
          ? _value.all_products
          : all_products // ignore: cast_nullable_to_non_nullable
              as AllProductsWrapper?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllProductsWrapperCopyWith<$Res>? get all_products {
    if (_value.all_products == null) {
      return null;
    }

    return $AllProductsWrapperCopyWith<$Res>(_value.all_products!, (value) {
      return _then(_value.copyWith(all_products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorProfileAllProductsDataImplCopyWith<$Res>
    implements $VendorProfileAllProductsDataCopyWith<$Res> {
  factory _$$VendorProfileAllProductsDataImplCopyWith(
          _$VendorProfileAllProductsDataImpl value,
          $Res Function(_$VendorProfileAllProductsDataImpl) then) =
      __$$VendorProfileAllProductsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllProductsWrapper? all_products});

  @override
  $AllProductsWrapperCopyWith<$Res>? get all_products;
}

/// @nodoc
class __$$VendorProfileAllProductsDataImplCopyWithImpl<$Res>
    extends _$VendorProfileAllProductsDataCopyWithImpl<$Res,
        _$VendorProfileAllProductsDataImpl>
    implements _$$VendorProfileAllProductsDataImplCopyWith<$Res> {
  __$$VendorProfileAllProductsDataImplCopyWithImpl(
      _$VendorProfileAllProductsDataImpl _value,
      $Res Function(_$VendorProfileAllProductsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all_products = freezed,
  }) {
    return _then(_$VendorProfileAllProductsDataImpl(
      all_products: freezed == all_products
          ? _value.all_products
          : all_products // ignore: cast_nullable_to_non_nullable
              as AllProductsWrapper?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProfileAllProductsDataImpl
    implements _VendorProfileAllProductsData {
  const _$VendorProfileAllProductsDataImpl({required this.all_products});

  factory _$VendorProfileAllProductsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VendorProfileAllProductsDataImplFromJson(json);

  @override
  final AllProductsWrapper? all_products;

  @override
  String toString() {
    return 'VendorProfileAllProductsData(all_products: $all_products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProfileAllProductsDataImpl &&
            (identical(other.all_products, all_products) ||
                other.all_products == all_products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, all_products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProfileAllProductsDataImplCopyWith<
          _$VendorProfileAllProductsDataImpl>
      get copyWith => __$$VendorProfileAllProductsDataImplCopyWithImpl<
          _$VendorProfileAllProductsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProfileAllProductsDataImplToJson(
      this,
    );
  }
}

abstract class _VendorProfileAllProductsData
    implements VendorProfileAllProductsData {
  const factory _VendorProfileAllProductsData(
          {required final AllProductsWrapper? all_products}) =
      _$VendorProfileAllProductsDataImpl;

  factory _VendorProfileAllProductsData.fromJson(Map<String, dynamic> json) =
      _$VendorProfileAllProductsDataImpl.fromJson;

  @override
  AllProductsWrapper? get all_products;
  @override
  @JsonKey(ignore: true)
  _$$VendorProfileAllProductsDataImplCopyWith<
          _$VendorProfileAllProductsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllProductsWrapper _$AllProductsWrapperFromJson(Map<String, dynamic> json) {
  return _AllProductsWrapper.fromJson(json);
}

/// @nodoc
mixin _$AllProductsWrapper {
  List<VendorAllproductsModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllProductsWrapperCopyWith<AllProductsWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsWrapperCopyWith<$Res> {
  factory $AllProductsWrapperCopyWith(
          AllProductsWrapper value, $Res Function(AllProductsWrapper) then) =
      _$AllProductsWrapperCopyWithImpl<$Res, AllProductsWrapper>;
  @useResult
  $Res call({List<VendorAllproductsModel>? data});
}

/// @nodoc
class _$AllProductsWrapperCopyWithImpl<$Res, $Val extends AllProductsWrapper>
    implements $AllProductsWrapperCopyWith<$Res> {
  _$AllProductsWrapperCopyWithImpl(this._value, this._then);

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
              as List<VendorAllproductsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllProductsWrapperImplCopyWith<$Res>
    implements $AllProductsWrapperCopyWith<$Res> {
  factory _$$AllProductsWrapperImplCopyWith(_$AllProductsWrapperImpl value,
          $Res Function(_$AllProductsWrapperImpl) then) =
      __$$AllProductsWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VendorAllproductsModel>? data});
}

/// @nodoc
class __$$AllProductsWrapperImplCopyWithImpl<$Res>
    extends _$AllProductsWrapperCopyWithImpl<$Res, _$AllProductsWrapperImpl>
    implements _$$AllProductsWrapperImplCopyWith<$Res> {
  __$$AllProductsWrapperImplCopyWithImpl(_$AllProductsWrapperImpl _value,
      $Res Function(_$AllProductsWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AllProductsWrapperImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VendorAllproductsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllProductsWrapperImpl implements _AllProductsWrapper {
  const _$AllProductsWrapperImpl(
      {required final List<VendorAllproductsModel>? data})
      : _data = data;

  factory _$AllProductsWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllProductsWrapperImplFromJson(json);

  final List<VendorAllproductsModel>? _data;
  @override
  List<VendorAllproductsModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllProductsWrapper(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllProductsWrapperImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllProductsWrapperImplCopyWith<_$AllProductsWrapperImpl> get copyWith =>
      __$$AllProductsWrapperImplCopyWithImpl<_$AllProductsWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllProductsWrapperImplToJson(
      this,
    );
  }
}

abstract class _AllProductsWrapper implements AllProductsWrapper {
  const factory _AllProductsWrapper(
          {required final List<VendorAllproductsModel>? data}) =
      _$AllProductsWrapperImpl;

  factory _AllProductsWrapper.fromJson(Map<String, dynamic> json) =
      _$AllProductsWrapperImpl.fromJson;

  @override
  List<VendorAllproductsModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllProductsWrapperImplCopyWith<_$AllProductsWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorAllproductsModel _$VendorAllproductsModelFromJson(
    Map<String, dynamic> json) {
  return _VendorAllproductsModel.fromJson(json);
}

/// @nodoc
mixin _$VendorAllproductsModel {
  String get id => throw _privateConstructorUsedError;
  String get country_code => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get category_id => throw _privateConstructorUsedError;
  String get post_type_id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get story_display_days => throw _privateConstructorUsedError;
  String? get b2b_pricing => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get post_type => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get offers => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  int? get similarVendorProfileProductCount =>
      throw _privateConstructorUsedError;
  String? get discounted_price => throw _privateConstructorUsedError;
  double? get shortestDistance => throw _privateConstructorUsedError;
  int? get commentcount => throw _privateConstructorUsedError;
  int? get discount_percentage => throw _privateConstructorUsedError;
  int? get avg_rating => throw _privateConstructorUsedError;
  UserDetailsModel? get userdetails => throw _privateConstructorUsedError;
  List<FezzedSaved>? get savedByLoggedUser =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorAllproductsModelCopyWith<VendorAllproductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorAllproductsModelCopyWith<$Res> {
  factory $VendorAllproductsModelCopyWith(VendorAllproductsModel value,
          $Res Function(VendorAllproductsModel) then) =
      _$VendorAllproductsModelCopyWithImpl<$Res, VendorAllproductsModel>;
  @useResult
  $Res call(
      {String id,
      String country_code,
      String user_id,
      String category_id,
      String post_type_id,
      String title,
      String? story_display_days,
      String? b2b_pricing,
      String image,
      String post_type,
      String username,
      String? offers,
      String? price,
      String? wow,
      String? city,
      int? similarVendorProfileProductCount,
      String? discounted_price,
      double? shortestDistance,
      int? commentcount,
      int? discount_percentage,
      int? avg_rating,
      UserDetailsModel? userdetails,
      List<FezzedSaved>? savedByLoggedUser});

  $UserDetailsModelCopyWith<$Res>? get userdetails;
}

/// @nodoc
class _$VendorAllproductsModelCopyWithImpl<$Res,
        $Val extends VendorAllproductsModel>
    implements $VendorAllproductsModelCopyWith<$Res> {
  _$VendorAllproductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country_code = null,
    Object? user_id = null,
    Object? category_id = null,
    Object? post_type_id = null,
    Object? title = null,
    Object? story_display_days = freezed,
    Object? b2b_pricing = freezed,
    Object? image = null,
    Object? post_type = null,
    Object? username = null,
    Object? offers = freezed,
    Object? price = freezed,
    Object? wow = freezed,
    Object? city = freezed,
    Object? similarVendorProfileProductCount = freezed,
    Object? discounted_price = freezed,
    Object? shortestDistance = freezed,
    Object? commentcount = freezed,
    Object? discount_percentage = freezed,
    Object? avg_rating = freezed,
    Object? userdetails = freezed,
    Object? savedByLoggedUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      country_code: null == country_code
          ? _value.country_code
          : country_code // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      post_type_id: null == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      story_display_days: freezed == story_display_days
          ? _value.story_display_days
          : story_display_days // ignore: cast_nullable_to_non_nullable
              as String?,
      b2b_pricing: freezed == b2b_pricing
          ? _value.b2b_pricing
          : b2b_pricing // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      post_type: null == post_type
          ? _value.post_type
          : post_type // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      similarVendorProfileProductCount: freezed ==
              similarVendorProfileProductCount
          ? _value.similarVendorProfileProductCount
          : similarVendorProfileProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as String?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      commentcount: freezed == commentcount
          ? _value.commentcount
          : commentcount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount_percentage: freezed == discount_percentage
          ? _value.discount_percentage
          : discount_percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      userdetails: freezed == userdetails
          ? _value.userdetails
          : userdetails // ignore: cast_nullable_to_non_nullable
              as UserDetailsModel?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value.savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<FezzedSaved>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsModelCopyWith<$Res>? get userdetails {
    if (_value.userdetails == null) {
      return null;
    }

    return $UserDetailsModelCopyWith<$Res>(_value.userdetails!, (value) {
      return _then(_value.copyWith(userdetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorAllproductsModelImplCopyWith<$Res>
    implements $VendorAllproductsModelCopyWith<$Res> {
  factory _$$VendorAllproductsModelImplCopyWith(
          _$VendorAllproductsModelImpl value,
          $Res Function(_$VendorAllproductsModelImpl) then) =
      __$$VendorAllproductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String country_code,
      String user_id,
      String category_id,
      String post_type_id,
      String title,
      String? story_display_days,
      String? b2b_pricing,
      String image,
      String post_type,
      String username,
      String? offers,
      String? price,
      String? wow,
      String? city,
      int? similarVendorProfileProductCount,
      String? discounted_price,
      double? shortestDistance,
      int? commentcount,
      int? discount_percentage,
      int? avg_rating,
      UserDetailsModel? userdetails,
      List<FezzedSaved>? savedByLoggedUser});

  @override
  $UserDetailsModelCopyWith<$Res>? get userdetails;
}

/// @nodoc
class __$$VendorAllproductsModelImplCopyWithImpl<$Res>
    extends _$VendorAllproductsModelCopyWithImpl<$Res,
        _$VendorAllproductsModelImpl>
    implements _$$VendorAllproductsModelImplCopyWith<$Res> {
  __$$VendorAllproductsModelImplCopyWithImpl(
      _$VendorAllproductsModelImpl _value,
      $Res Function(_$VendorAllproductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country_code = null,
    Object? user_id = null,
    Object? category_id = null,
    Object? post_type_id = null,
    Object? title = null,
    Object? story_display_days = freezed,
    Object? b2b_pricing = freezed,
    Object? image = null,
    Object? post_type = null,
    Object? username = null,
    Object? offers = freezed,
    Object? price = freezed,
    Object? wow = freezed,
    Object? city = freezed,
    Object? similarVendorProfileProductCount = freezed,
    Object? discounted_price = freezed,
    Object? shortestDistance = freezed,
    Object? commentcount = freezed,
    Object? discount_percentage = freezed,
    Object? avg_rating = freezed,
    Object? userdetails = freezed,
    Object? savedByLoggedUser = freezed,
  }) {
    return _then(_$VendorAllproductsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      country_code: null == country_code
          ? _value.country_code
          : country_code // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      post_type_id: null == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      story_display_days: freezed == story_display_days
          ? _value.story_display_days
          : story_display_days // ignore: cast_nullable_to_non_nullable
              as String?,
      b2b_pricing: freezed == b2b_pricing
          ? _value.b2b_pricing
          : b2b_pricing // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      post_type: null == post_type
          ? _value.post_type
          : post_type // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      similarVendorProfileProductCount: freezed ==
              similarVendorProfileProductCount
          ? _value.similarVendorProfileProductCount
          : similarVendorProfileProductCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as String?,
      shortestDistance: freezed == shortestDistance
          ? _value.shortestDistance
          : shortestDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      commentcount: freezed == commentcount
          ? _value.commentcount
          : commentcount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount_percentage: freezed == discount_percentage
          ? _value.discount_percentage
          : discount_percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as int?,
      userdetails: freezed == userdetails
          ? _value.userdetails
          : userdetails // ignore: cast_nullable_to_non_nullable
              as UserDetailsModel?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value._savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<FezzedSaved>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorAllproductsModelImpl implements _VendorAllproductsModel {
  const _$VendorAllproductsModelImpl(
      {required this.id,
      required this.country_code,
      required this.user_id,
      required this.category_id,
      required this.post_type_id,
      required this.title,
      this.story_display_days,
      this.b2b_pricing,
      required this.image,
      required this.post_type,
      required this.username,
      this.offers,
      this.price,
      this.wow,
      required this.city,
      required this.similarVendorProfileProductCount,
      required this.discounted_price,
      required this.shortestDistance,
      required this.commentcount,
      required this.discount_percentage,
      required this.avg_rating,
      required this.userdetails,
      final List<FezzedSaved>? savedByLoggedUser})
      : _savedByLoggedUser = savedByLoggedUser;

  factory _$VendorAllproductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorAllproductsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String country_code;
  @override
  final String user_id;
  @override
  final String category_id;
  @override
  final String post_type_id;
  @override
  final String title;
  @override
  final String? story_display_days;
  @override
  final String? b2b_pricing;
  @override
  final String image;
  @override
  final String post_type;
  @override
  final String username;
  @override
  final String? offers;
  @override
  final String? price;
  @override
  final String? wow;
  @override
  final String? city;
  @override
  final int? similarVendorProfileProductCount;
  @override
  final String? discounted_price;
  @override
  final double? shortestDistance;
  @override
  final int? commentcount;
  @override
  final int? discount_percentage;
  @override
  final int? avg_rating;
  @override
  final UserDetailsModel? userdetails;
  final List<FezzedSaved>? _savedByLoggedUser;
  @override
  List<FezzedSaved>? get savedByLoggedUser {
    final value = _savedByLoggedUser;
    if (value == null) return null;
    if (_savedByLoggedUser is EqualUnmodifiableListView)
      return _savedByLoggedUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VendorAllproductsModel(id: $id, country_code: $country_code, user_id: $user_id, category_id: $category_id, post_type_id: $post_type_id, title: $title, story_display_days: $story_display_days, b2b_pricing: $b2b_pricing, image: $image, post_type: $post_type, username: $username, offers: $offers, price: $price, wow: $wow, city: $city, similarVendorProfileProductCount: $similarVendorProfileProductCount, discounted_price: $discounted_price, shortestDistance: $shortestDistance, commentcount: $commentcount, discount_percentage: $discount_percentage, avg_rating: $avg_rating, userdetails: $userdetails, savedByLoggedUser: $savedByLoggedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorAllproductsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country_code, country_code) ||
                other.country_code == country_code) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.post_type_id, post_type_id) ||
                other.post_type_id == post_type_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.story_display_days, story_display_days) ||
                other.story_display_days == story_display_days) &&
            (identical(other.b2b_pricing, b2b_pricing) ||
                other.b2b_pricing == b2b_pricing) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.post_type, post_type) ||
                other.post_type == post_type) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.similarVendorProfileProductCount,
                    similarVendorProfileProductCount) ||
                other.similarVendorProfileProductCount ==
                    similarVendorProfileProductCount) &&
            (identical(other.discounted_price, discounted_price) ||
                other.discounted_price == discounted_price) &&
            (identical(other.shortestDistance, shortestDistance) ||
                other.shortestDistance == shortestDistance) &&
            (identical(other.commentcount, commentcount) ||
                other.commentcount == commentcount) &&
            (identical(other.discount_percentage, discount_percentage) ||
                other.discount_percentage == discount_percentage) &&
            (identical(other.avg_rating, avg_rating) ||
                other.avg_rating == avg_rating) &&
            (identical(other.userdetails, userdetails) ||
                other.userdetails == userdetails) &&
            const DeepCollectionEquality()
                .equals(other._savedByLoggedUser, _savedByLoggedUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        country_code,
        user_id,
        category_id,
        post_type_id,
        title,
        story_display_days,
        b2b_pricing,
        image,
        post_type,
        username,
        offers,
        price,
        wow,
        city,
        similarVendorProfileProductCount,
        discounted_price,
        shortestDistance,
        commentcount,
        discount_percentage,
        avg_rating,
        userdetails,
        const DeepCollectionEquality().hash(_savedByLoggedUser)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorAllproductsModelImplCopyWith<_$VendorAllproductsModelImpl>
      get copyWith => __$$VendorAllproductsModelImplCopyWithImpl<
          _$VendorAllproductsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorAllproductsModelImplToJson(
      this,
    );
  }
}

abstract class _VendorAllproductsModel implements VendorAllproductsModel {
  const factory _VendorAllproductsModel(
          {required final String id,
          required final String country_code,
          required final String user_id,
          required final String category_id,
          required final String post_type_id,
          required final String title,
          final String? story_display_days,
          final String? b2b_pricing,
          required final String image,
          required final String post_type,
          required final String username,
          final String? offers,
          final String? price,
          final String? wow,
          required final String? city,
          required final int? similarVendorProfileProductCount,
          required final String? discounted_price,
          required final double? shortestDistance,
          required final int? commentcount,
          required final int? discount_percentage,
          required final int? avg_rating,
          required final UserDetailsModel? userdetails,
          final List<FezzedSaved>? savedByLoggedUser}) =
      _$VendorAllproductsModelImpl;

  factory _VendorAllproductsModel.fromJson(Map<String, dynamic> json) =
      _$VendorAllproductsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get country_code;
  @override
  String get user_id;
  @override
  String get category_id;
  @override
  String get post_type_id;
  @override
  String get title;
  @override
  String? get story_display_days;
  @override
  String? get b2b_pricing;
  @override
  String get image;
  @override
  String get post_type;
  @override
  String get username;
  @override
  String? get offers;
  @override
  String? get price;
  @override
  String? get wow;
  @override
  String? get city;
  @override
  int? get similarVendorProfileProductCount;
  @override
  String? get discounted_price;
  @override
  double? get shortestDistance;
  @override
  int? get commentcount;
  @override
  int? get discount_percentage;
  @override
  int? get avg_rating;
  @override
  UserDetailsModel? get userdetails;
  @override
  List<FezzedSaved>? get savedByLoggedUser;
  @override
  @JsonKey(ignore: true)
  _$$VendorAllproductsModelImplCopyWith<_$VendorAllproductsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
