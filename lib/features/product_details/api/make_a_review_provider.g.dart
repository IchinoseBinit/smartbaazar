// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_a_review_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postreviewHash() => r'66307ee73ace76cea098f9d343fdd52555deba42';

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

/// See also [postreview].
@ProviderFor(postreview)
const postreviewProvider = PostreviewFamily();

/// See also [postreview].
class PostreviewFamily extends Family<AsyncValue<String>> {
  /// See also [postreview].
  const PostreviewFamily();

  /// See also [postreview].
  PostreviewProvider call(
    int id,
    String comment,
    String? rating,
  ) {
    return PostreviewProvider(
      id,
      comment,
      rating,
    );
  }

  @override
  PostreviewProvider getProviderOverride(
    covariant PostreviewProvider provider,
  ) {
    return call(
      provider.id,
      provider.comment,
      provider.rating,
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
  String? get name => r'postreviewProvider';
}

/// See also [postreview].
class PostreviewProvider extends AutoDisposeFutureProvider<String> {
  /// See also [postreview].
  PostreviewProvider(
    int id,
    String comment,
    String? rating,
  ) : this._internal(
          (ref) => postreview(
            ref as PostreviewRef,
            id,
            comment,
            rating,
          ),
          from: postreviewProvider,
          name: r'postreviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postreviewHash,
          dependencies: PostreviewFamily._dependencies,
          allTransitiveDependencies:
              PostreviewFamily._allTransitiveDependencies,
          id: id,
          comment: comment,
          rating: rating,
        );

  PostreviewProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.comment,
    required this.rating,
  }) : super.internal();

  final int id;
  final String comment;
  final String? rating;

  @override
  Override overrideWith(
    FutureOr<String> Function(PostreviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostreviewProvider._internal(
        (ref) => create(ref as PostreviewRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        comment: comment,
        rating: rating,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PostreviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostreviewProvider &&
        other.id == id &&
        other.comment == comment &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);
    hash = _SystemHash.combine(hash, rating.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostreviewRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  int get id;

  /// The parameter `comment` of this provider.
  String get comment;

  /// The parameter `rating` of this provider.
  String? get rating;
}

class _PostreviewProviderElement
    extends AutoDisposeFutureProviderElement<String> with PostreviewRef {
  _PostreviewProviderElement(super.provider);

  @override
  int get id => (origin as PostreviewProvider).id;
  @override
  String get comment => (origin as PostreviewProvider).comment;
  @override
  String? get rating => (origin as PostreviewProvider).rating;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
