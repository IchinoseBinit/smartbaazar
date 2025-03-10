// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_comment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postcommentHash() => r'1611ed5c762fef52c5b04416a07fce67bf541ce0';

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

/// See also [postcomment].
@ProviderFor(postcomment)
const postcommentProvider = PostcommentFamily();

/// See also [postcomment].
class PostcommentFamily extends Family<AsyncValue<String>> {
  /// See also [postcomment].
  const PostcommentFamily();

  /// See also [postcomment].
  PostcommentProvider call(
    String id,
    String reply,
  ) {
    return PostcommentProvider(
      id,
      reply,
    );
  }

  @override
  PostcommentProvider getProviderOverride(
    covariant PostcommentProvider provider,
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
  String? get name => r'postcommentProvider';
}

/// See also [postcomment].
class PostcommentProvider extends AutoDisposeFutureProvider<String> {
  /// See also [postcomment].
  PostcommentProvider(
    String id,
    String reply,
  ) : this._internal(
          (ref) => postcomment(
            ref as PostcommentRef,
            id,
            reply,
          ),
          from: postcommentProvider,
          name: r'postcommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postcommentHash,
          dependencies: PostcommentFamily._dependencies,
          allTransitiveDependencies:
              PostcommentFamily._allTransitiveDependencies,
          id: id,
          reply: reply,
        );

  PostcommentProvider._internal(
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
    FutureOr<String> Function(PostcommentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostcommentProvider._internal(
        (ref) => create(ref as PostcommentRef),
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
    return _PostcommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostcommentProvider &&
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
mixin PostcommentRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `reply` of this provider.
  String get reply;
}

class _PostcommentProviderElement
    extends AutoDisposeFutureProviderElement<String> with PostcommentRef {
  _PostcommentProviderElement(super.provider);

  @override
  String get id => (origin as PostcommentProvider).id;
  @override
  String get reply => (origin as PostcommentProvider).reply;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
