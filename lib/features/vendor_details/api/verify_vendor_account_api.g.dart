// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_vendor_account_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$verifyVendorAccountHash() =>
    r'aaf827f6fdbb8a9fbc5ee4755f1896c1868fcc35';

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

/// See also [verifyVendorAccount].
@ProviderFor(verifyVendorAccount)
const verifyVendorAccountProvider = VerifyVendorAccountFamily();

/// See also [verifyVendorAccount].
class VerifyVendorAccountFamily extends Family<AsyncValue<String?>> {
  /// See also [verifyVendorAccount].
  const VerifyVendorAccountFamily();

  /// See also [verifyVendorAccount].
  VerifyVendorAccountProvider call(
    File panVat,
    File taxCertificate,
    File registerCertificate,
  ) {
    return VerifyVendorAccountProvider(
      panVat,
      taxCertificate,
      registerCertificate,
    );
  }

  @override
  VerifyVendorAccountProvider getProviderOverride(
    covariant VerifyVendorAccountProvider provider,
  ) {
    return call(
      provider.panVat,
      provider.taxCertificate,
      provider.registerCertificate,
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
  String? get name => r'verifyVendorAccountProvider';
}

/// See also [verifyVendorAccount].
class VerifyVendorAccountProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [verifyVendorAccount].
  VerifyVendorAccountProvider(
    File panVat,
    File taxCertificate,
    File registerCertificate,
  ) : this._internal(
          (ref) => verifyVendorAccount(
            ref as VerifyVendorAccountRef,
            panVat,
            taxCertificate,
            registerCertificate,
          ),
          from: verifyVendorAccountProvider,
          name: r'verifyVendorAccountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$verifyVendorAccountHash,
          dependencies: VerifyVendorAccountFamily._dependencies,
          allTransitiveDependencies:
              VerifyVendorAccountFamily._allTransitiveDependencies,
          panVat: panVat,
          taxCertificate: taxCertificate,
          registerCertificate: registerCertificate,
        );

  VerifyVendorAccountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.panVat,
    required this.taxCertificate,
    required this.registerCertificate,
  }) : super.internal();

  final File panVat;
  final File taxCertificate;
  final File registerCertificate;

  @override
  Override overrideWith(
    FutureOr<String?> Function(VerifyVendorAccountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VerifyVendorAccountProvider._internal(
        (ref) => create(ref as VerifyVendorAccountRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        panVat: panVat,
        taxCertificate: taxCertificate,
        registerCertificate: registerCertificate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _VerifyVendorAccountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VerifyVendorAccountProvider &&
        other.panVat == panVat &&
        other.taxCertificate == taxCertificate &&
        other.registerCertificate == registerCertificate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, panVat.hashCode);
    hash = _SystemHash.combine(hash, taxCertificate.hashCode);
    hash = _SystemHash.combine(hash, registerCertificate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VerifyVendorAccountRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `panVat` of this provider.
  File get panVat;

  /// The parameter `taxCertificate` of this provider.
  File get taxCertificate;

  /// The parameter `registerCertificate` of this provider.
  File get registerCertificate;
}

class _VerifyVendorAccountProviderElement
    extends AutoDisposeFutureProviderElement<String?>
    with VerifyVendorAccountRef {
  _VerifyVendorAccountProviderElement(super.provider);

  @override
  File get panVat => (origin as VerifyVendorAccountProvider).panVat;
  @override
  File get taxCertificate =>
      (origin as VerifyVendorAccountProvider).taxCertificate;
  @override
  File get registerCertificate =>
      (origin as VerifyVendorAccountProvider).registerCertificate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
