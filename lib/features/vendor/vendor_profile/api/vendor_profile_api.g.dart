// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_profile_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getVendorProfileDataHash() =>
    r'b6183f261489f06217fefbb0c59bf404d6ed8ab1';

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

/// See also [getVendorProfileData].
@ProviderFor(getVendorProfileData)
const getVendorProfileDataProvider = GetVendorProfileDataFamily();

/// See also [getVendorProfileData].
class GetVendorProfileDataFamily extends Family<AsyncValue<VendorData>> {
  /// See also [getVendorProfileData].
  const GetVendorProfileDataFamily();

  /// See also [getVendorProfileData].
  GetVendorProfileDataProvider call(
    String vendorName, {
    int postType = 1,
    String category = "brandnew",
  }) {
    return GetVendorProfileDataProvider(
      vendorName,
      postType: postType,
      category: category,
    );
  }

  @override
  GetVendorProfileDataProvider getProviderOverride(
    covariant GetVendorProfileDataProvider provider,
  ) {
    return call(
      provider.vendorName,
      postType: provider.postType,
      category: provider.category,
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
  String? get name => r'getVendorProfileDataProvider';
}

/// See also [getVendorProfileData].
class GetVendorProfileDataProvider
    extends AutoDisposeFutureProvider<VendorData> {
  /// See also [getVendorProfileData].
  GetVendorProfileDataProvider(
    String vendorName, {
    int postType = 1,
    String category = "brandnew",
  }) : this._internal(
          (ref) => getVendorProfileData(
            ref as GetVendorProfileDataRef,
            vendorName,
            postType: postType,
            category: category,
          ),
          from: getVendorProfileDataProvider,
          name: r'getVendorProfileDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getVendorProfileDataHash,
          dependencies: GetVendorProfileDataFamily._dependencies,
          allTransitiveDependencies:
              GetVendorProfileDataFamily._allTransitiveDependencies,
          vendorName: vendorName,
          postType: postType,
          category: category,
        );

  GetVendorProfileDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vendorName,
    required this.postType,
    required this.category,
  }) : super.internal();

  final String vendorName;
  final int postType;
  final String category;

  @override
  Override overrideWith(
    FutureOr<VendorData> Function(GetVendorProfileDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetVendorProfileDataProvider._internal(
        (ref) => create(ref as GetVendorProfileDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vendorName: vendorName,
        postType: postType,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<VendorData> createElement() {
    return _GetVendorProfileDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetVendorProfileDataProvider &&
        other.vendorName == vendorName &&
        other.postType == postType &&
        other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vendorName.hashCode);
    hash = _SystemHash.combine(hash, postType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetVendorProfileDataRef on AutoDisposeFutureProviderRef<VendorData> {
  /// The parameter `vendorName` of this provider.
  String get vendorName;

  /// The parameter `postType` of this provider.
  int get postType;

  /// The parameter `category` of this provider.
  String get category;
}

class _GetVendorProfileDataProviderElement
    extends AutoDisposeFutureProviderElement<VendorData>
    with GetVendorProfileDataRef {
  _GetVendorProfileDataProviderElement(super.provider);

  @override
  String get vendorName => (origin as GetVendorProfileDataProvider).vendorName;
  @override
  int get postType => (origin as GetVendorProfileDataProvider).postType;
  @override
  String get category => (origin as GetVendorProfileDataProvider).category;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
