// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_listing_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteListingHash() => r'b3b110cda764029808626f9a7710d9706bb29e99';

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

/// See also [deleteListing].
@ProviderFor(deleteListing)
const deleteListingProvider = DeleteListingFamily();

/// See also [deleteListing].
class DeleteListingFamily extends Family<AsyncValue<void>> {
  /// See also [deleteListing].
  const DeleteListingFamily();

  /// See also [deleteListing].
  DeleteListingProvider call(
    String productItemId,
  ) {
    return DeleteListingProvider(
      productItemId,
    );
  }

  @override
  DeleteListingProvider getProviderOverride(
    covariant DeleteListingProvider provider,
  ) {
    return call(
      provider.productItemId,
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
  String? get name => r'deleteListingProvider';
}

/// See also [deleteListing].
class DeleteListingProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteListing].
  DeleteListingProvider(
    String productItemId,
  ) : this._internal(
          (ref) => deleteListing(
            ref as DeleteListingRef,
            productItemId,
          ),
          from: deleteListingProvider,
          name: r'deleteListingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteListingHash,
          dependencies: DeleteListingFamily._dependencies,
          allTransitiveDependencies:
              DeleteListingFamily._allTransitiveDependencies,
          productItemId: productItemId,
        );

  DeleteListingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productItemId,
  }) : super.internal();

  final String productItemId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteListingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteListingProvider._internal(
        (ref) => create(ref as DeleteListingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productItemId: productItemId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteListingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteListingProvider &&
        other.productItemId == productItemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productItemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteListingRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `productItemId` of this provider.
  String get productItemId;
}

class _DeleteListingProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteListingRef {
  _DeleteListingProviderElement(super.provider);

  @override
  String get productItemId => (origin as DeleteListingProvider).productItemId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
