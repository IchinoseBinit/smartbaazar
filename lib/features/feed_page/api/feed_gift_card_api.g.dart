// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_gift_card_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getFeedGiftCardHash() => r'3d70db603ef345e3b2f83fd497e0ebdd233335e8';

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

/// See also [getFeedGiftCard].
@ProviderFor(getFeedGiftCard)
const getFeedGiftCardProvider = GetFeedGiftCardFamily();

/// See also [getFeedGiftCard].
class GetFeedGiftCardFamily extends Family<AsyncValue<FeedGiftCardModel>> {
  /// See also [getFeedGiftCard].
  const GetFeedGiftCardFamily();

  /// See also [getFeedGiftCard].
  GetFeedGiftCardProvider call(
    String userId,
  ) {
    return GetFeedGiftCardProvider(
      userId,
    );
  }

  @override
  GetFeedGiftCardProvider getProviderOverride(
    covariant GetFeedGiftCardProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'getFeedGiftCardProvider';
}

/// See also [getFeedGiftCard].
class GetFeedGiftCardProvider
    extends AutoDisposeFutureProvider<FeedGiftCardModel> {
  /// See also [getFeedGiftCard].
  GetFeedGiftCardProvider(
    String userId,
  ) : this._internal(
          (ref) => getFeedGiftCard(
            ref as GetFeedGiftCardRef,
            userId,
          ),
          from: getFeedGiftCardProvider,
          name: r'getFeedGiftCardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getFeedGiftCardHash,
          dependencies: GetFeedGiftCardFamily._dependencies,
          allTransitiveDependencies:
              GetFeedGiftCardFamily._allTransitiveDependencies,
          userId: userId,
        );

  GetFeedGiftCardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<FeedGiftCardModel> Function(GetFeedGiftCardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetFeedGiftCardProvider._internal(
        (ref) => create(ref as GetFeedGiftCardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FeedGiftCardModel> createElement() {
    return _GetFeedGiftCardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetFeedGiftCardProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetFeedGiftCardRef on AutoDisposeFutureProviderRef<FeedGiftCardModel> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _GetFeedGiftCardProviderElement
    extends AutoDisposeFutureProviderElement<FeedGiftCardModel>
    with GetFeedGiftCardRef {
  _GetFeedGiftCardProviderElement(super.provider);

  @override
  String get userId => (origin as GetFeedGiftCardProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
