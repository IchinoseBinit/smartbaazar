// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_return_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postmyreturnHash() => r'3e71742853f3416a1abb4701dfd26a5f38fcca26';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [postmyreturn].
@ProviderFor(postmyreturn)
const postmyreturnProvider = PostmyreturnFamily();

/// See also [postmyreturn].
class PostmyreturnFamily extends Family<AsyncValue<String>> {
  /// See also [postmyreturn].
  const PostmyreturnFamily();

  /// See also [postmyreturn].
  PostmyreturnProvider call(
    String orderid,
    String vendorid,
    String postid,
    String issue,
    String message,
    String city,
    String citycode,
    String street,
    String longitude,
    String latitude,
    File image,
  ) {
    return PostmyreturnProvider(
      orderid,
      vendorid,
      postid,
      issue,
      message,
      city,
      citycode,
      street,
      longitude,
      latitude,
      image,
    );
  }

  @override
  PostmyreturnProvider getProviderOverride(
    covariant PostmyreturnProvider provider,
  ) {
    return call(
      provider.orderid,
      provider.vendorid,
      provider.postid,
      provider.issue,
      provider.message,
      provider.city,
      provider.citycode,
      provider.street,
      provider.longitude,
      provider.latitude,
      provider.image,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postmyreturnProvider';
}

/// See also [postmyreturn].
class PostmyreturnProvider extends AutoDisposeFutureProvider<String> {
  /// See also [postmyreturn].
  PostmyreturnProvider(
    String orderid,
    String vendorid,
    String postid,
    String issue,
    String message,
    String city,
    String citycode,
    String street,
    String longitude,
    String latitude,
    File image,
  ) : this._internal(
          (ref) => postmyreturn(
            ref as PostmyreturnRef,
            orderid,
            vendorid,
            postid,
            issue,
            message,
            city,
            citycode,
            street,
            longitude,
            latitude,
            image,
          ),
          from: postmyreturnProvider,
          name: r'postmyreturnProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postmyreturnHash,
          dependencies: PostmyreturnFamily._dependencies,
          allTransitiveDependencies:
              PostmyreturnFamily._allTransitiveDependencies,
          orderid: orderid,
          vendorid: vendorid,
          postid: postid,
          issue: issue,
          message: message,
          city: city,
          citycode: citycode,
          street: street,
          longitude: longitude,
          latitude: latitude,
          image: image,
        );

  PostmyreturnProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderid,
    required this.vendorid,
    required this.postid,
    required this.issue,
    required this.message,
    required this.city,
    required this.citycode,
    required this.street,
    required this.longitude,
    required this.latitude,
    required this.image,
  }) : super.internal();

  final String orderid;
  final String vendorid;
  final String postid;
  final String issue;
  final String message;
  final String city;
  final String citycode;
  final String street;
  final String longitude;
  final String latitude;
  final File image;

  @override
  Override overrideWith(
    FutureOr<String> Function(PostmyreturnRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostmyreturnProvider._internal(
        (ref) => create(ref as PostmyreturnRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderid: orderid,
        vendorid: vendorid,
        postid: postid,
        issue: issue,
        message: message,
        city: city,
        citycode: citycode,
        street: street,
        longitude: longitude,
        latitude: latitude,
        image: image,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PostmyreturnProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostmyreturnProvider &&
        other.orderid == orderid &&
        other.vendorid == vendorid &&
        other.postid == postid &&
        other.issue == issue &&
        other.message == message &&
        other.city == city &&
        other.citycode == citycode &&
        other.street == street &&
        other.longitude == longitude &&
        other.latitude == latitude &&
        other.image == image;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderid.hashCode);
    hash = _SystemHash.combine(hash, vendorid.hashCode);
    hash = _SystemHash.combine(hash, postid.hashCode);
    hash = _SystemHash.combine(hash, issue.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);
    hash = _SystemHash.combine(hash, citycode.hashCode);
    hash = _SystemHash.combine(hash, street.hashCode);
    hash = _SystemHash.combine(hash, longitude.hashCode);
    hash = _SystemHash.combine(hash, latitude.hashCode);
    hash = _SystemHash.combine(hash, image.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostmyreturnRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `orderid` of this provider.
  String get orderid;

  /// The parameter `vendorid` of this provider.
  String get vendorid;

  /// The parameter `postid` of this provider.
  String get postid;

  /// The parameter `issue` of this provider.
  String get issue;

  /// The parameter `message` of this provider.
  String get message;

  /// The parameter `city` of this provider.
  String get city;

  /// The parameter `citycode` of this provider.
  String get citycode;

  /// The parameter `street` of this provider.
  String get street;

  /// The parameter `longitude` of this provider.
  String get longitude;

  /// The parameter `latitude` of this provider.
  String get latitude;

  /// The parameter `image` of this provider.
  File get image;
}

class _PostmyreturnProviderElement
    extends AutoDisposeFutureProviderElement<String> with PostmyreturnRef {
  _PostmyreturnProviderElement(super.provider);

  @override
  String get orderid => (origin as PostmyreturnProvider).orderid;
  @override
  String get vendorid => (origin as PostmyreturnProvider).vendorid;
  @override
  String get postid => (origin as PostmyreturnProvider).postid;
  @override
  String get issue => (origin as PostmyreturnProvider).issue;
  @override
  String get message => (origin as PostmyreturnProvider).message;
  @override
  String get city => (origin as PostmyreturnProvider).city;
  @override
  String get citycode => (origin as PostmyreturnProvider).citycode;
  @override
  String get street => (origin as PostmyreturnProvider).street;
  @override
  String get longitude => (origin as PostmyreturnProvider).longitude;
  @override
  String get latitude => (origin as PostmyreturnProvider).latitude;
  @override
  File get image => (origin as PostmyreturnProvider).image;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
