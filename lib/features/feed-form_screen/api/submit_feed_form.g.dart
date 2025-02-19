// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_feed_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postFeedFormHash() => r'bbef37768472e573da38144a8c4081b8d9bdece8';

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

/// See also [postFeedForm].
@ProviderFor(postFeedForm)
const postFeedFormProvider = PostFeedFormFamily();

/// See also [postFeedForm].
class PostFeedFormFamily extends Family<AsyncValue<bool>> {
  /// See also [postFeedForm].
  const PostFeedFormFamily();

  /// See also [postFeedForm].
  PostFeedFormProvider call(
    String captionTitle,
    String caption,
    String offers,
    List<String> products,
    List<File> imageFiles,
  ) {
    return PostFeedFormProvider(
      captionTitle,
      caption,
      offers,
      products,
      imageFiles,
    );
  }

  @override
  PostFeedFormProvider getProviderOverride(
    covariant PostFeedFormProvider provider,
  ) {
    return call(
      provider.captionTitle,
      provider.caption,
      provider.offers,
      provider.products,
      provider.imageFiles,
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
  String? get name => r'postFeedFormProvider';
}

/// See also [postFeedForm].
class PostFeedFormProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postFeedForm].
  PostFeedFormProvider(
    String captionTitle,
    String caption,
    String offers,
    List<String> products,
    List<File> imageFiles,
  ) : this._internal(
          (ref) => postFeedForm(
            ref as PostFeedFormRef,
            captionTitle,
            caption,
            offers,
            products,
            imageFiles,
          ),
          from: postFeedFormProvider,
          name: r'postFeedFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postFeedFormHash,
          dependencies: PostFeedFormFamily._dependencies,
          allTransitiveDependencies:
              PostFeedFormFamily._allTransitiveDependencies,
          captionTitle: captionTitle,
          caption: caption,
          offers: offers,
          products: products,
          imageFiles: imageFiles,
        );

  PostFeedFormProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.captionTitle,
    required this.caption,
    required this.offers,
    required this.products,
    required this.imageFiles,
  }) : super.internal();

  final String captionTitle;
  final String caption;
  final String offers;
  final List<String> products;
  final List<File> imageFiles;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostFeedFormRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostFeedFormProvider._internal(
        (ref) => create(ref as PostFeedFormRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        captionTitle: captionTitle,
        caption: caption,
        offers: offers,
        products: products,
        imageFiles: imageFiles,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostFeedFormProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostFeedFormProvider &&
        other.captionTitle == captionTitle &&
        other.caption == caption &&
        other.offers == offers &&
        other.products == products &&
        other.imageFiles == imageFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, captionTitle.hashCode);
    hash = _SystemHash.combine(hash, caption.hashCode);
    hash = _SystemHash.combine(hash, offers.hashCode);
    hash = _SystemHash.combine(hash, products.hashCode);
    hash = _SystemHash.combine(hash, imageFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostFeedFormRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `captionTitle` of this provider.
  String get captionTitle;

  /// The parameter `caption` of this provider.
  String get caption;

  /// The parameter `offers` of this provider.
  String get offers;

  /// The parameter `products` of this provider.
  List<String> get products;

  /// The parameter `imageFiles` of this provider.
  List<File> get imageFiles;
}

class _PostFeedFormProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PostFeedFormRef {
  _PostFeedFormProviderElement(super.provider);

  @override
  String get captionTitle => (origin as PostFeedFormProvider).captionTitle;
  @override
  String get caption => (origin as PostFeedFormProvider).caption;
  @override
  String get offers => (origin as PostFeedFormProvider).offers;
  @override
  List<String> get products => (origin as PostFeedFormProvider).products;
  @override
  List<File> get imageFiles => (origin as PostFeedFormProvider).imageFiles;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
