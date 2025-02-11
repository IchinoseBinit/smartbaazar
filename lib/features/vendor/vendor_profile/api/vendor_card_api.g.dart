// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_card_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getVendorCardHash() => r'eba886ba3f3303073dff477df8b64bbfd9862166';

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

/// See also [getVendorCard].
@ProviderFor(getVendorCard)
const getVendorCardProvider = GetVendorCardFamily();

/// See also [getVendorCard].
class GetVendorCardFamily extends Family<AsyncValue<VendorCardResponse>> {
  /// See also [getVendorCard].
  const GetVendorCardFamily();

  /// See also [getVendorCard].
  GetVendorCardProvider call(
    int id,
  ) {
    return GetVendorCardProvider(
      id,
    );
  }

  @override
  GetVendorCardProvider getProviderOverride(
    covariant GetVendorCardProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getVendorCardProvider';
}

/// See also [getVendorCard].
class GetVendorCardProvider
    extends AutoDisposeFutureProvider<VendorCardResponse> {
  /// See also [getVendorCard].
  GetVendorCardProvider(
    int id,
  ) : this._internal(
          (ref) => getVendorCard(
            ref as GetVendorCardRef,
            id,
          ),
          from: getVendorCardProvider,
          name: r'getVendorCardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getVendorCardHash,
          dependencies: GetVendorCardFamily._dependencies,
          allTransitiveDependencies:
              GetVendorCardFamily._allTransitiveDependencies,
          id: id,
        );

  GetVendorCardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<VendorCardResponse> Function(GetVendorCardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetVendorCardProvider._internal(
        (ref) => create(ref as GetVendorCardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<VendorCardResponse> createElement() {
    return _GetVendorCardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetVendorCardProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetVendorCardRef on AutoDisposeFutureProviderRef<VendorCardResponse> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetVendorCardProviderElement
    extends AutoDisposeFutureProviderElement<VendorCardResponse>
    with GetVendorCardRef {
  _GetVendorCardProviderElement(super.provider);

  @override
  int get id => (origin as GetVendorCardProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
