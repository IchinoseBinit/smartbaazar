// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_coupon_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postCouponHash() => r'4c45fcaa7de8a6cef55a9e4f5a33248491706cf5';

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

/// See also [postCoupon].
@ProviderFor(postCoupon)
const postCouponProvider = PostCouponFamily();

/// See also [postCoupon].
class PostCouponFamily extends Family<AsyncValue<bool>> {
  /// See also [postCoupon].
  const PostCouponFamily();

  /// See also [postCoupon].
  PostCouponProvider call(
    String couponPercentage,
    String couponTotalWorth,
    String giftType,
    String couponQty,
    String discountupto,
    String couponImpression,
  ) {
    return PostCouponProvider(
      couponPercentage,
      couponTotalWorth,
      giftType,
      couponQty,
      discountupto,
      couponImpression,
    );
  }

  @override
  PostCouponProvider getProviderOverride(
    covariant PostCouponProvider provider,
  ) {
    return call(
      provider.couponPercentage,
      provider.couponTotalWorth,
      provider.giftType,
      provider.couponQty,
      provider.discountupto,
      provider.couponImpression,
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
  String? get name => r'postCouponProvider';
}

/// See also [postCoupon].
class PostCouponProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postCoupon].
  PostCouponProvider(
    String couponPercentage,
    String couponTotalWorth,
    String giftType,
    String couponQty,
    String discountupto,
    String couponImpression,
  ) : this._internal(
          (ref) => postCoupon(
            ref as PostCouponRef,
            couponPercentage,
            couponTotalWorth,
            giftType,
            couponQty,
            discountupto,
            couponImpression,
          ),
          from: postCouponProvider,
          name: r'postCouponProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postCouponHash,
          dependencies: PostCouponFamily._dependencies,
          allTransitiveDependencies:
              PostCouponFamily._allTransitiveDependencies,
          couponPercentage: couponPercentage,
          couponTotalWorth: couponTotalWorth,
          giftType: giftType,
          couponQty: couponQty,
          discountupto: discountupto,
          couponImpression: couponImpression,
        );

  PostCouponProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.couponPercentage,
    required this.couponTotalWorth,
    required this.giftType,
    required this.couponQty,
    required this.discountupto,
    required this.couponImpression,
  }) : super.internal();

  final String couponPercentage;
  final String couponTotalWorth;
  final String giftType;
  final String couponQty;
  final String discountupto;
  final String couponImpression;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostCouponRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostCouponProvider._internal(
        (ref) => create(ref as PostCouponRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        couponPercentage: couponPercentage,
        couponTotalWorth: couponTotalWorth,
        giftType: giftType,
        couponQty: couponQty,
        discountupto: discountupto,
        couponImpression: couponImpression,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostCouponProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostCouponProvider &&
        other.couponPercentage == couponPercentage &&
        other.couponTotalWorth == couponTotalWorth &&
        other.giftType == giftType &&
        other.couponQty == couponQty &&
        other.discountupto == discountupto &&
        other.couponImpression == couponImpression;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, couponPercentage.hashCode);
    hash = _SystemHash.combine(hash, couponTotalWorth.hashCode);
    hash = _SystemHash.combine(hash, giftType.hashCode);
    hash = _SystemHash.combine(hash, couponQty.hashCode);
    hash = _SystemHash.combine(hash, discountupto.hashCode);
    hash = _SystemHash.combine(hash, couponImpression.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostCouponRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `couponPercentage` of this provider.
  String get couponPercentage;

  /// The parameter `couponTotalWorth` of this provider.
  String get couponTotalWorth;

  /// The parameter `giftType` of this provider.
  String get giftType;

  /// The parameter `couponQty` of this provider.
  String get couponQty;

  /// The parameter `discountupto` of this provider.
  String get discountupto;

  /// The parameter `couponImpression` of this provider.
  String get couponImpression;
}

class _PostCouponProviderElement extends AutoDisposeFutureProviderElement<bool>
    with PostCouponRef {
  _PostCouponProviderElement(super.provider);

  @override
  String get couponPercentage =>
      (origin as PostCouponProvider).couponPercentage;
  @override
  String get couponTotalWorth =>
      (origin as PostCouponProvider).couponTotalWorth;
  @override
  String get giftType => (origin as PostCouponProvider).giftType;
  @override
  String get couponQty => (origin as PostCouponProvider).couponQty;
  @override
  String get discountupto => (origin as PostCouponProvider).discountupto;
  @override
  String get couponImpression =>
      (origin as PostCouponProvider).couponImpression;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
