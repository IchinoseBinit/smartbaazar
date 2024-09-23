// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_advertisement_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postAdvertisementHash() => r'ddfe73e4cfe1c1e9dc9c8133707efc22fe2b93e7';

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

/// See also [postAdvertisement].
@ProviderFor(postAdvertisement)
const postAdvertisementProvider = PostAdvertisementFamily();

/// See also [postAdvertisement].
class PostAdvertisementFamily extends Family<AsyncValue<bool>> {
  /// See also [postAdvertisement].
  const PostAdvertisementFamily();

  /// See also [postAdvertisement].
  PostAdvertisementProvider call(
    File imageFile,
    String link,
  ) {
    return PostAdvertisementProvider(
      imageFile,
      link,
    );
  }

  @override
  PostAdvertisementProvider getProviderOverride(
    covariant PostAdvertisementProvider provider,
  ) {
    return call(
      provider.imageFile,
      provider.link,
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
  String? get name => r'postAdvertisementProvider';
}

/// See also [postAdvertisement].
class PostAdvertisementProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postAdvertisement].
  PostAdvertisementProvider(
    File imageFile,
    String link,
  ) : this._internal(
          (ref) => postAdvertisement(
            ref as PostAdvertisementRef,
            imageFile,
            link,
          ),
          from: postAdvertisementProvider,
          name: r'postAdvertisementProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postAdvertisementHash,
          dependencies: PostAdvertisementFamily._dependencies,
          allTransitiveDependencies:
              PostAdvertisementFamily._allTransitiveDependencies,
          imageFile: imageFile,
          link: link,
        );

  PostAdvertisementProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageFile,
    required this.link,
  }) : super.internal();

  final File imageFile;
  final String link;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostAdvertisementRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostAdvertisementProvider._internal(
        (ref) => create(ref as PostAdvertisementRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageFile: imageFile,
        link: link,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostAdvertisementProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostAdvertisementProvider &&
        other.imageFile == imageFile &&
        other.link == link;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);
    hash = _SystemHash.combine(hash, link.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostAdvertisementRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `imageFile` of this provider.
  File get imageFile;

  /// The parameter `link` of this provider.
  String get link;
}

class _PostAdvertisementProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PostAdvertisementRef {
  _PostAdvertisementProviderElement(super.provider);

  @override
  File get imageFile => (origin as PostAdvertisementProvider).imageFile;
  @override
  String get link => (origin as PostAdvertisementProvider).link;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
