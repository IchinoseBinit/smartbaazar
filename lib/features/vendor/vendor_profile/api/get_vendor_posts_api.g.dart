// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vendor_posts_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getvendorpostandprizesHash() =>
    r'8b0fb73996ae3ac1a198e0592b0b66c272e05f0f';

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

/// See also [getvendorpostandprizes].
@ProviderFor(getvendorpostandprizes)
const getvendorpostandprizesProvider = GetvendorpostandprizesFamily();

/// See also [getvendorpostandprizes].
class GetvendorpostandprizesFamily
    extends Family<AsyncValue<VendorLivePrizePostData>> {
  /// See also [getvendorpostandprizes].
  const GetvendorpostandprizesFamily();

  /// See also [getvendorpostandprizes].
  GetvendorpostandprizesProvider call(
    int vendorid,
  ) {
    return GetvendorpostandprizesProvider(
      vendorid,
    );
  }

  @override
  GetvendorpostandprizesProvider getProviderOverride(
    covariant GetvendorpostandprizesProvider provider,
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
  String? get name => r'getvendorpostandprizesProvider';
}

/// See also [getvendorpostandprizes].
class GetvendorpostandprizesProvider
    extends AutoDisposeFutureProvider<VendorLivePrizePostData> {
  /// See also [getvendorpostandprizes].
  GetvendorpostandprizesProvider(
    int vendorid,
  ) : this._internal(
          (ref) => getvendorpostandprizes(
            ref as GetvendorpostandprizesRef,
            vendorid,
          ),
          from: getvendorpostandprizesProvider,
          name: r'getvendorpostandprizesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getvendorpostandprizesHash,
          dependencies: GetvendorpostandprizesFamily._dependencies,
          allTransitiveDependencies:
              GetvendorpostandprizesFamily._allTransitiveDependencies,
          vendorid: vendorid,
        );

  GetvendorpostandprizesProvider._internal(
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
    FutureOr<VendorLivePrizePostData> Function(
            GetvendorpostandprizesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetvendorpostandprizesProvider._internal(
        (ref) => create(ref as GetvendorpostandprizesRef),
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
  AutoDisposeFutureProviderElement<VendorLivePrizePostData> createElement() {
    return _GetvendorpostandprizesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetvendorpostandprizesProvider &&
        other.vendorid == vendorid;
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
mixin GetvendorpostandprizesRef
    on AutoDisposeFutureProviderRef<VendorLivePrizePostData> {
  /// The parameter `vendorid` of this provider.
  int get vendorid;
}

class _GetvendorpostandprizesProviderElement
    extends AutoDisposeFutureProviderElement<VendorLivePrizePostData>
    with GetvendorpostandprizesRef {
  _GetvendorpostandprizesProviderElement(super.provider);

  @override
  int get vendorid => (origin as GetvendorpostandprizesProvider).vendorid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
