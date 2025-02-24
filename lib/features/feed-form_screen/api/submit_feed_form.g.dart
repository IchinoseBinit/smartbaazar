// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_feed_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postFeedFormHash() => r'e6533f89c82771655dd06a407d49f03dce969ace';

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
    File imageFile,
  ) {
    return PostFeedFormProvider(
      captionTitle,
      caption,
      offers,
      products,
      imageFile,
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
    File imageFile,
  ) : this._internal(
          (ref) => postFeedForm(
            ref as PostFeedFormRef,
            captionTitle,
            caption,
            offers,
            products,
            imageFile,
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
          imageFile: imageFile,
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
    required this.imageFile,
  }) : super.internal();

  final String captionTitle;
  final String caption;
  final String offers;
  final List<String> products;
  final File imageFile;

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
        imageFile: imageFile,
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
        other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, captionTitle.hashCode);
    hash = _SystemHash.combine(hash, caption.hashCode);
    hash = _SystemHash.combine(hash, offers.hashCode);
    hash = _SystemHash.combine(hash, products.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

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

  /// The parameter `imageFile` of this provider.
  File get imageFile;
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
  File get imageFile => (origin as PostFeedFormProvider).imageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
