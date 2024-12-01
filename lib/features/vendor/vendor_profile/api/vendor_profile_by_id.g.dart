// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_profile_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getVendorProfileDataByIDHash() =>
    r'82049d22afd02ec1e14a7a5bfddc42e674b80a64';

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

/// See also [getVendorProfileDataByID].
@ProviderFor(getVendorProfileDataByID)
const getVendorProfileDataByIDProvider = GetVendorProfileDataByIDFamily();

/// See also [getVendorProfileDataByID].
class GetVendorProfileDataByIDFamily
    extends Family<AsyncValue<VendorModelByID>> {
  /// See also [getVendorProfileDataByID].
  const GetVendorProfileDataByIDFamily();

  /// See also [getVendorProfileDataByID].
  GetVendorProfileDataByIDProvider call(
    String id,
  ) {
    return GetVendorProfileDataByIDProvider(
      id,
    );
  }

  @override
  GetVendorProfileDataByIDProvider getProviderOverride(
    covariant GetVendorProfileDataByIDProvider provider,
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
  String? get name => r'getVendorProfileDataByIDProvider';
}

/// See also [getVendorProfileDataByID].
class GetVendorProfileDataByIDProvider
    extends AutoDisposeFutureProvider<VendorModelByID> {
  /// See also [getVendorProfileDataByID].
  GetVendorProfileDataByIDProvider(
    String id,
  ) : this._internal(
          (ref) => getVendorProfileDataByID(
            ref as GetVendorProfileDataByIDRef,
            id,
          ),
          from: getVendorProfileDataByIDProvider,
          name: r'getVendorProfileDataByIDProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getVendorProfileDataByIDHash,
          dependencies: GetVendorProfileDataByIDFamily._dependencies,
          allTransitiveDependencies:
              GetVendorProfileDataByIDFamily._allTransitiveDependencies,
          id: id,
        );

  GetVendorProfileDataByIDProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<VendorModelByID> Function(GetVendorProfileDataByIDRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetVendorProfileDataByIDProvider._internal(
        (ref) => create(ref as GetVendorProfileDataByIDRef),
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
  AutoDisposeFutureProviderElement<VendorModelByID> createElement() {
    return _GetVendorProfileDataByIDProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetVendorProfileDataByIDProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetVendorProfileDataByIDRef
    on AutoDisposeFutureProviderRef<VendorModelByID> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetVendorProfileDataByIDProviderElement
    extends AutoDisposeFutureProviderElement<VendorModelByID>
    with GetVendorProfileDataByIDRef {
  _GetVendorProfileDataByIDProviderElement(super.provider);

  @override
  String get id => (origin as GetVendorProfileDataByIDProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
