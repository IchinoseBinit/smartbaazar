// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_saved_search_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteSavedSearchHash() => r'de0e47b365d5aed06052fec0a4ec7b0d04352ab7';

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

/// See also [deleteSavedSearch].
@ProviderFor(deleteSavedSearch)
const deleteSavedSearchProvider = DeleteSavedSearchFamily();

/// See also [deleteSavedSearch].
class DeleteSavedSearchFamily extends Family<AsyncValue<void>> {
  /// See also [deleteSavedSearch].
  const DeleteSavedSearchFamily();

  /// See also [deleteSavedSearch].
  DeleteSavedSearchProvider call(
    String productItemId,
  ) {
    return DeleteSavedSearchProvider(
      productItemId,
    );
  }

  @override
  DeleteSavedSearchProvider getProviderOverride(
    covariant DeleteSavedSearchProvider provider,
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
  String? get name => r'deleteSavedSearchProvider';
}

/// See also [deleteSavedSearch].
class DeleteSavedSearchProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteSavedSearch].
  DeleteSavedSearchProvider(
    String productItemId,
  ) : this._internal(
          (ref) => deleteSavedSearch(
            ref as DeleteSavedSearchRef,
            productItemId,
          ),
          from: deleteSavedSearchProvider,
          name: r'deleteSavedSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteSavedSearchHash,
          dependencies: DeleteSavedSearchFamily._dependencies,
          allTransitiveDependencies:
              DeleteSavedSearchFamily._allTransitiveDependencies,
          productItemId: productItemId,
        );

  DeleteSavedSearchProvider._internal(
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
    FutureOr<void> Function(DeleteSavedSearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteSavedSearchProvider._internal(
        (ref) => create(ref as DeleteSavedSearchRef),
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
    return _DeleteSavedSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteSavedSearchProvider &&
        other.productItemId == productItemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productItemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteSavedSearchRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `productItemId` of this provider.
  String get productItemId;
}

class _DeleteSavedSearchProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteSavedSearchRef {
  _DeleteSavedSearchProviderElement(super.provider);

  @override
  String get productItemId =>
      (origin as DeleteSavedSearchProvider).productItemId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
