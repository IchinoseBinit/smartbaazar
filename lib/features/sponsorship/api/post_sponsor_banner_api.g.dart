// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_sponsor_banner_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postSponsorBannerHash() => r'a0d4549f51964a922ddec8595e554a152941d9cc';

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

/// See also [postSponsorBanner].
@ProviderFor(postSponsorBanner)
const postSponsorBannerProvider = PostSponsorBannerFamily();

/// See also [postSponsorBanner].
class PostSponsorBannerFamily extends Family<AsyncValue<bool>> {
  /// See also [postSponsorBanner].
  const PostSponsorBannerFamily();

  /// See also [postSponsorBanner].
  PostSponsorBannerProvider call(
    File imageFile,
  ) {
    return PostSponsorBannerProvider(
      imageFile,
    );
  }

  @override
  PostSponsorBannerProvider getProviderOverride(
    covariant PostSponsorBannerProvider provider,
  ) {
    return call(
      provider.imageFile,
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
  String? get name => r'postSponsorBannerProvider';
}

/// See also [postSponsorBanner].
class PostSponsorBannerProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postSponsorBanner].
  PostSponsorBannerProvider(
    File imageFile,
  ) : this._internal(
          (ref) => postSponsorBanner(
            ref as PostSponsorBannerRef,
            imageFile,
          ),
          from: postSponsorBannerProvider,
          name: r'postSponsorBannerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postSponsorBannerHash,
          dependencies: PostSponsorBannerFamily._dependencies,
          allTransitiveDependencies:
              PostSponsorBannerFamily._allTransitiveDependencies,
          imageFile: imageFile,
        );

  PostSponsorBannerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageFile,
  }) : super.internal();

  final File imageFile;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostSponsorBannerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostSponsorBannerProvider._internal(
        (ref) => create(ref as PostSponsorBannerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostSponsorBannerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostSponsorBannerProvider && other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostSponsorBannerRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _PostSponsorBannerProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PostSponsorBannerRef {
  _PostSponsorBannerProviderElement(super.provider);

  @override
  File get imageFile => (origin as PostSponsorBannerProvider).imageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
