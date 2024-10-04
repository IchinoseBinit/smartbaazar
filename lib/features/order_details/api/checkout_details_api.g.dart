// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_details_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postSelectedItemOfCartHash() =>
    r'7c4fa250cc80e41d8764ea58b7b7ead85c190447';

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

/// See also [postSelectedItemOfCart].
@ProviderFor(postSelectedItemOfCart)
const postSelectedItemOfCartProvider = PostSelectedItemOfCartFamily();

/// See also [postSelectedItemOfCart].
class PostSelectedItemOfCartFamily
    extends Family<AsyncValue<CheckoutDetailsModel>> {
  /// See also [postSelectedItemOfCart].
  const PostSelectedItemOfCartFamily();

  /// See also [postSelectedItemOfCart].
  PostSelectedItemOfCartProvider call(
    List<String> vendorId,
    List<String> selectedProduct,
  ) {
    return PostSelectedItemOfCartProvider(
      vendorId,
      selectedProduct,
    );
  }

  @override
  PostSelectedItemOfCartProvider getProviderOverride(
    covariant PostSelectedItemOfCartProvider provider,
  ) {
    return call(
      provider.vendorId,
      provider.selectedProduct,
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
  String? get name => r'postSelectedItemOfCartProvider';
}

/// See also [postSelectedItemOfCart].
class PostSelectedItemOfCartProvider
    extends AutoDisposeFutureProvider<CheckoutDetailsModel> {
  /// See also [postSelectedItemOfCart].
  PostSelectedItemOfCartProvider(
    List<String> vendorId,
    List<String> selectedProduct,
  ) : this._internal(
          (ref) => postSelectedItemOfCart(
            ref as PostSelectedItemOfCartRef,
            vendorId,
            selectedProduct,
          ),
          from: postSelectedItemOfCartProvider,
          name: r'postSelectedItemOfCartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postSelectedItemOfCartHash,
          dependencies: PostSelectedItemOfCartFamily._dependencies,
          allTransitiveDependencies:
              PostSelectedItemOfCartFamily._allTransitiveDependencies,
          vendorId: vendorId,
          selectedProduct: selectedProduct,
        );

  PostSelectedItemOfCartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vendorId,
    required this.selectedProduct,
  }) : super.internal();

  final List<String> vendorId;
  final List<String> selectedProduct;

  @override
  Override overrideWith(
    FutureOr<CheckoutDetailsModel> Function(PostSelectedItemOfCartRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostSelectedItemOfCartProvider._internal(
        (ref) => create(ref as PostSelectedItemOfCartRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vendorId: vendorId,
        selectedProduct: selectedProduct,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CheckoutDetailsModel> createElement() {
    return _PostSelectedItemOfCartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostSelectedItemOfCartProvider &&
        other.vendorId == vendorId &&
        other.selectedProduct == selectedProduct;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vendorId.hashCode);
    hash = _SystemHash.combine(hash, selectedProduct.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostSelectedItemOfCartRef
    on AutoDisposeFutureProviderRef<CheckoutDetailsModel> {
  /// The parameter `vendorId` of this provider.
  List<String> get vendorId;

  /// The parameter `selectedProduct` of this provider.
  List<String> get selectedProduct;
}

class _PostSelectedItemOfCartProviderElement
    extends AutoDisposeFutureProviderElement<CheckoutDetailsModel>
    with PostSelectedItemOfCartRef {
  _PostSelectedItemOfCartProviderElement(super.provider);

  @override
  List<String> get vendorId =>
      (origin as PostSelectedItemOfCartProvider).vendorId;
  @override
  List<String> get selectedProduct =>
      (origin as PostSelectedItemOfCartProvider).selectedProduct;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
