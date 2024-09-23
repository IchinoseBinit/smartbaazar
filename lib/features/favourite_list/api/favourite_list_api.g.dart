// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_list_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getFavouriteListHash() => r'379c4bb1c2c6ca00d4411d2f5ff8c010c3f36680';

/// See also [getFavouriteList].
@ProviderFor(getFavouriteList)
final getFavouriteListProvider =
    AutoDisposeFutureProvider<FavouriteProductList>.internal(
  getFavouriteList,
  name: r'getFavouriteListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getFavouriteListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetFavouriteListRef
    = AutoDisposeFutureProviderRef<FavouriteProductList>;
String _$deleteFavouriteProductHash() =>
    r'2b321828e45e6cf91d13a1236a236a9172019c81';

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

/// See also [deleteFavouriteProduct].
@ProviderFor(deleteFavouriteProduct)
const deleteFavouriteProductProvider = DeleteFavouriteProductFamily();

/// See also [deleteFavouriteProduct].
class DeleteFavouriteProductFamily extends Family<AsyncValue<void>> {
  /// See also [deleteFavouriteProduct].
  const DeleteFavouriteProductFamily();

  /// See also [deleteFavouriteProduct].
  DeleteFavouriteProductProvider call(
    String productItemId,
  ) {
    return DeleteFavouriteProductProvider(
      productItemId,
    );
  }

  @override
  DeleteFavouriteProductProvider getProviderOverride(
    covariant DeleteFavouriteProductProvider provider,
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
  String? get name => r'deleteFavouriteProductProvider';
}

/// See also [deleteFavouriteProduct].
class DeleteFavouriteProductProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteFavouriteProduct].
  DeleteFavouriteProductProvider(
    String productItemId,
  ) : this._internal(
          (ref) => deleteFavouriteProduct(
            ref as DeleteFavouriteProductRef,
            productItemId,
          ),
          from: deleteFavouriteProductProvider,
          name: r'deleteFavouriteProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteFavouriteProductHash,
          dependencies: DeleteFavouriteProductFamily._dependencies,
          allTransitiveDependencies:
              DeleteFavouriteProductFamily._allTransitiveDependencies,
          productItemId: productItemId,
        );

  DeleteFavouriteProductProvider._internal(
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
    FutureOr<void> Function(DeleteFavouriteProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteFavouriteProductProvider._internal(
        (ref) => create(ref as DeleteFavouriteProductRef),
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
    return _DeleteFavouriteProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteFavouriteProductProvider &&
        other.productItemId == productItemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productItemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteFavouriteProductRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `productItemId` of this provider.
  String get productItemId;
}

class _DeleteFavouriteProductProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with DeleteFavouriteProductRef {
  _DeleteFavouriteProductProviderElement(super.provider);

  @override
  String get productItemId =>
      (origin as DeleteFavouriteProductProvider).productItemId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
