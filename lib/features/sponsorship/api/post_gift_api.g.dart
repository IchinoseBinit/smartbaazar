// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_gift_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postgiftHash() => r'347dd882c91aee0261c343ebc7e0eb3c9d1180d2';

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

/// See also [postgift].
@ProviderFor(postgift)
const postgiftProvider = PostgiftFamily();

/// See also [postgift].
class PostgiftFamily extends Family<AsyncValue<bool>> {
  /// See also [postgift].
  const PostgiftFamily();

  /// See also [postgift].
  PostgiftProvider call(
    String postid,
    String gift,
    String giftWorth,
    String giftQty,
  ) {
    return PostgiftProvider(
      postid,
      gift,
      giftWorth,
      giftQty,
    );
  }

  @override
  PostgiftProvider getProviderOverride(
    covariant PostgiftProvider provider,
  ) {
    return call(
      provider.postid,
      provider.gift,
      provider.giftWorth,
      provider.giftQty,
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
  String? get name => r'postgiftProvider';
}

/// See also [postgift].
class PostgiftProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postgift].
  PostgiftProvider(
    String postid,
    String gift,
    String giftWorth,
    String giftQty,
  ) : this._internal(
          (ref) => postgift(
            ref as PostgiftRef,
            postid,
            gift,
            giftWorth,
            giftQty,
          ),
          from: postgiftProvider,
          name: r'postgiftProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postgiftHash,
          dependencies: PostgiftFamily._dependencies,
          allTransitiveDependencies: PostgiftFamily._allTransitiveDependencies,
          postid: postid,
          gift: gift,
          giftWorth: giftWorth,
          giftQty: giftQty,
        );

  PostgiftProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postid,
    required this.gift,
    required this.giftWorth,
    required this.giftQty,
  }) : super.internal();

  final String postid;
  final String gift;
  final String giftWorth;
  final String giftQty;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostgiftRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostgiftProvider._internal(
        (ref) => create(ref as PostgiftRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postid: postid,
        gift: gift,
        giftWorth: giftWorth,
        giftQty: giftQty,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostgiftProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostgiftProvider &&
        other.postid == postid &&
        other.gift == gift &&
        other.giftWorth == giftWorth &&
        other.giftQty == giftQty;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postid.hashCode);
    hash = _SystemHash.combine(hash, gift.hashCode);
    hash = _SystemHash.combine(hash, giftWorth.hashCode);
    hash = _SystemHash.combine(hash, giftQty.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostgiftRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `postid` of this provider.
  String get postid;

  /// The parameter `gift` of this provider.
  String get gift;

  /// The parameter `giftWorth` of this provider.
  String get giftWorth;

  /// The parameter `giftQty` of this provider.
  String get giftQty;
}

class _PostgiftProviderElement extends AutoDisposeFutureProviderElement<bool>
    with PostgiftRef {
  _PostgiftProviderElement(super.provider);

  @override
  String get postid => (origin as PostgiftProvider).postid;
  @override
  String get gift => (origin as PostgiftProvider).gift;
  @override
  String get giftWorth => (origin as PostgiftProvider).giftWorth;
  @override
  String get giftQty => (origin as PostgiftProvider).giftQty;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
