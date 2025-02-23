// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vendor_by_brand_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getvendorbybrandnameHash() =>
    r'a92ccab8ecb85c0819df33673c22540913db48ad';

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

/// See also [getvendorbybrandname].
@ProviderFor(getvendorbybrandname)
const getvendorbybrandnameProvider = GetvendorbybrandnameFamily();

/// See also [getvendorbybrandname].
class GetvendorbybrandnameFamily
    extends Family<AsyncValue<VendorBrandResponse>> {
  /// See also [getvendorbybrandname].
  const GetvendorbybrandnameFamily();

  /// See also [getvendorbybrandname].
  GetvendorbybrandnameProvider call(
    int vendorid,
  ) {
    return GetvendorbybrandnameProvider(
      vendorid,
    );
  }

  @override
  GetvendorbybrandnameProvider getProviderOverride(
    covariant GetvendorbybrandnameProvider provider,
  ) {
    return call(
      provider.vendorid,
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
  String? get name => r'getvendorbybrandnameProvider';
}

/// See also [getvendorbybrandname].
class GetvendorbybrandnameProvider
    extends AutoDisposeFutureProvider<VendorBrandResponse> {
  /// See also [getvendorbybrandname].
  GetvendorbybrandnameProvider(
    int vendorid,
  ) : this._internal(
          (ref) => getvendorbybrandname(
            ref as GetvendorbybrandnameRef,
            vendorid,
          ),
          from: getvendorbybrandnameProvider,
          name: r'getvendorbybrandnameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getvendorbybrandnameHash,
          dependencies: GetvendorbybrandnameFamily._dependencies,
          allTransitiveDependencies:
              GetvendorbybrandnameFamily._allTransitiveDependencies,
          vendorid: vendorid,
        );

  GetvendorbybrandnameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vendorid,
  }) : super.internal();

  final int vendorid;

  @override
  Override overrideWith(
    FutureOr<VendorBrandResponse> Function(GetvendorbybrandnameRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetvendorbybrandnameProvider._internal(
        (ref) => create(ref as GetvendorbybrandnameRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vendorid: vendorid,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<VendorBrandResponse> createElement() {
    return _GetvendorbybrandnameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetvendorbybrandnameProvider && other.vendorid == vendorid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vendorid.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetvendorbybrandnameRef
    on AutoDisposeFutureProviderRef<VendorBrandResponse> {
  /// The parameter `vendorid` of this provider.
  int get vendorid;
}

class _GetvendorbybrandnameProviderElement
    extends AutoDisposeFutureProviderElement<VendorBrandResponse>
    with GetvendorbybrandnameRef {
  _GetvendorbybrandnameProviderElement(super.provider);

  @override
  int get vendorid => (origin as GetvendorbybrandnameProvider).vendorid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
