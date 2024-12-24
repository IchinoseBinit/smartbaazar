// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_store_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postBrandMemberHash() => r'323c40e4c60e5632a4c04eaad1b6395bd6b0d3bf';

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

/// See also [postBrandMember].
@ProviderFor(postBrandMember)
const postBrandMemberProvider = PostBrandMemberFamily();

/// See also [postBrandMember].
class PostBrandMemberFamily extends Family<AsyncValue<bool>> {
  /// See also [postBrandMember].
  const PostBrandMemberFamily();

  /// See also [postBrandMember].
  PostBrandMemberProvider call(
    String brandName,
    File brandLogo,
    String panVatNo,
    File taxFile,
    File brandCertificate,
  ) {
    return PostBrandMemberProvider(
      brandName,
      brandLogo,
      panVatNo,
      taxFile,
      brandCertificate,
    );
  }

  @override
  PostBrandMemberProvider getProviderOverride(
    covariant PostBrandMemberProvider provider,
  ) {
    return call(
      provider.brandName,
      provider.brandLogo,
      provider.panVatNo,
      provider.taxFile,
      provider.brandCertificate,
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
  String? get name => r'postBrandMemberProvider';
}

/// See also [postBrandMember].
class PostBrandMemberProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postBrandMember].
  PostBrandMemberProvider(
    String brandName,
    File brandLogo,
    String panVatNo,
    File taxFile,
    File brandCertificate,
  ) : this._internal(
          (ref) => postBrandMember(
            ref as PostBrandMemberRef,
            brandName,
            brandLogo,
            panVatNo,
            taxFile,
            brandCertificate,
          ),
          from: postBrandMemberProvider,
          name: r'postBrandMemberProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postBrandMemberHash,
          dependencies: PostBrandMemberFamily._dependencies,
          allTransitiveDependencies:
              PostBrandMemberFamily._allTransitiveDependencies,
          brandName: brandName,
          brandLogo: brandLogo,
          panVatNo: panVatNo,
          taxFile: taxFile,
          brandCertificate: brandCertificate,
        );

  PostBrandMemberProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brandName,
    required this.brandLogo,
    required this.panVatNo,
    required this.taxFile,
    required this.brandCertificate,
  }) : super.internal();

  final String brandName;
  final File brandLogo;
  final String panVatNo;
  final File taxFile;
  final File brandCertificate;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostBrandMemberRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostBrandMemberProvider._internal(
        (ref) => create(ref as PostBrandMemberRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brandName: brandName,
        brandLogo: brandLogo,
        panVatNo: panVatNo,
        taxFile: taxFile,
        brandCertificate: brandCertificate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostBrandMemberProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostBrandMemberProvider &&
        other.brandName == brandName &&
        other.brandLogo == brandLogo &&
        other.panVatNo == panVatNo &&
        other.taxFile == taxFile &&
        other.brandCertificate == brandCertificate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brandName.hashCode);
    hash = _SystemHash.combine(hash, brandLogo.hashCode);
    hash = _SystemHash.combine(hash, panVatNo.hashCode);
    hash = _SystemHash.combine(hash, taxFile.hashCode);
    hash = _SystemHash.combine(hash, brandCertificate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostBrandMemberRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `brandName` of this provider.
  String get brandName;

  /// The parameter `brandLogo` of this provider.
  File get brandLogo;

  /// The parameter `panVatNo` of this provider.
  String get panVatNo;

  /// The parameter `taxFile` of this provider.
  File get taxFile;

  /// The parameter `brandCertificate` of this provider.
  File get brandCertificate;
}

class _PostBrandMemberProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PostBrandMemberRef {
  _PostBrandMemberProviderElement(super.provider);

  @override
  String get brandName => (origin as PostBrandMemberProvider).brandName;
  @override
  File get brandLogo => (origin as PostBrandMemberProvider).brandLogo;
  @override
  String get panVatNo => (origin as PostBrandMemberProvider).panVatNo;
  @override
  File get taxFile => (origin as PostBrandMemberProvider).taxFile;
  @override
  File get brandCertificate =>
      (origin as PostBrandMemberProvider).brandCertificate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
