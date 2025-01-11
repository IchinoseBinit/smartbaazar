// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCartItemHash() => r'87f4ecd2df287eb340a46e1f299c0ede2a212422';

/// See also [getCartItem].
@ProviderFor(getCartItem)
final getCartItemProvider =
    AutoDisposeFutureProvider<Map<String, List<Object>>>.internal(
  getCartItem,
  name: r'getCartItemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCartItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCartItemRef
    = AutoDisposeFutureProviderRef<Map<String, List<Object>>>;
String _$deleteCartItemHash() => r'd98f9b5daa07b43f0c7159cfb716161b9f70a404';

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

/// See also [deleteCartItem].
@ProviderFor(deleteCartItem)
const deleteCartItemProvider = DeleteCartItemFamily();

/// See also [deleteCartItem].
class DeleteCartItemFamily extends Family<AsyncValue<void>> {
  /// See also [deleteCartItem].
  const DeleteCartItemFamily();

  /// See also [deleteCartItem].
  DeleteCartItemProvider call(
    String cartItemId,
  ) {
    return DeleteCartItemProvider(
      cartItemId,
    );
  }

  @override
  DeleteCartItemProvider getProviderOverride(
    covariant DeleteCartItemProvider provider,
  ) {
    return call(
      provider.cartItemId,
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
  String? get name => r'deleteCartItemProvider';
}

/// See also [deleteCartItem].
class DeleteCartItemProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteCartItem].
  DeleteCartItemProvider(
    String cartItemId,
  ) : this._internal(
          (ref) => deleteCartItem(
            ref as DeleteCartItemRef,
            cartItemId,
          ),
          from: deleteCartItemProvider,
          name: r'deleteCartItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteCartItemHash,
          dependencies: DeleteCartItemFamily._dependencies,
          allTransitiveDependencies:
              DeleteCartItemFamily._allTransitiveDependencies,
          cartItemId: cartItemId,
        );

  DeleteCartItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cartItemId,
  }) : super.internal();

  final String cartItemId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteCartItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteCartItemProvider._internal(
        (ref) => create(ref as DeleteCartItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cartItemId: cartItemId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteCartItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteCartItemProvider && other.cartItemId == cartItemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cartItemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteCartItemRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `cartItemId` of this provider.
  String get cartItemId;
}

class _DeleteCartItemProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteCartItemRef {
  _DeleteCartItemProviderElement(super.provider);

  @override
  String get cartItemId => (origin as DeleteCartItemProvider).cartItemId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
