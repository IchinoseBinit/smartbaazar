// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_offline_listing.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addToOfflineListingHash() =>
    r'61d917cd86443ea316164a52f8d34109dcb7aa03';

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

/// See also [addToOfflineListing].
@ProviderFor(addToOfflineListing)
const addToOfflineListingProvider = AddToOfflineListingFamily();

/// See also [addToOfflineListing].
class AddToOfflineListingFamily extends Family<AsyncValue<void>> {
  /// See also [addToOfflineListing].
  const AddToOfflineListingFamily();

  /// See also [addToOfflineListing].
  AddToOfflineListingProvider call(
    String productId,
  ) {
    return AddToOfflineListingProvider(
      productId,
    );
  }

  @override
  AddToOfflineListingProvider getProviderOverride(
    covariant AddToOfflineListingProvider provider,
  ) {
    return call(
      provider.productId,
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
  String? get name => r'addToOfflineListingProvider';
}

/// See also [addToOfflineListing].
class AddToOfflineListingProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addToOfflineListing].
  AddToOfflineListingProvider(
    String productId,
  ) : this._internal(
          (ref) => addToOfflineListing(
            ref as AddToOfflineListingRef,
            productId,
          ),
          from: addToOfflineListingProvider,
          name: r'addToOfflineListingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addToOfflineListingHash,
          dependencies: AddToOfflineListingFamily._dependencies,
          allTransitiveDependencies:
              AddToOfflineListingFamily._allTransitiveDependencies,
          productId: productId,
        );

  AddToOfflineListingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String productId;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddToOfflineListingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddToOfflineListingProvider._internal(
        (ref) => create(ref as AddToOfflineListingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddToOfflineListingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddToOfflineListingProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddToOfflineListingRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _AddToOfflineListingProviderElement
    extends AutoDisposeFutureProviderElement<void> with AddToOfflineListingRef {
  _AddToOfflineListingProviderElement(super.provider);

  @override
  String get productId => (origin as AddToOfflineListingProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
