// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_story_comment_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postStorycommentHash() => r'd8575dc8fa02555837d5942f1c04dc436d9cb461';

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

/// See also [postStorycomment].
@ProviderFor(postStorycomment)
const postStorycommentProvider = PostStorycommentFamily();

/// See also [postStorycomment].
class PostStorycommentFamily extends Family<AsyncValue<String>> {
  /// See also [postStorycomment].
  const PostStorycommentFamily();

  /// See also [postStorycomment].
  PostStorycommentProvider call(
    String id,
    String reply,
  ) {
    return PostStorycommentProvider(
      id,
      reply,
    );
  }

  @override
  PostStorycommentProvider getProviderOverride(
    covariant PostStorycommentProvider provider,
  ) {
    return call(
      provider.id,
      provider.reply,
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
  String? get name => r'postStorycommentProvider';
}

/// See also [postStorycomment].
class PostStorycommentProvider extends AutoDisposeFutureProvider<String> {
  /// See also [postStorycomment].
  PostStorycommentProvider(
    String id,
    String reply,
  ) : this._internal(
          (ref) => postStorycomment(
            ref as PostStorycommentRef,
            id,
            reply,
          ),
          from: postStorycommentProvider,
          name: r'postStorycommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postStorycommentHash,
          dependencies: PostStorycommentFamily._dependencies,
          allTransitiveDependencies:
              PostStorycommentFamily._allTransitiveDependencies,
          id: id,
          reply: reply,
        );

  PostStorycommentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.reply,
  }) : super.internal();

  final String id;
  final String reply;

  @override
  Override overrideWith(
    FutureOr<String> Function(PostStorycommentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostStorycommentProvider._internal(
        (ref) => create(ref as PostStorycommentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        reply: reply,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PostStorycommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostStorycommentProvider &&
        other.id == id &&
        other.reply == reply;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, reply.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostStorycommentRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `reply` of this provider.
  String get reply;
}

class _PostStorycommentProviderElement
    extends AutoDisposeFutureProviderElement<String> with PostStorycommentRef {
  _PostStorycommentProviderElement(super.provider);

  @override
  String get id => (origin as PostStorycommentProvider).id;
  @override
  String get reply => (origin as PostStorycommentProvider).reply;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
