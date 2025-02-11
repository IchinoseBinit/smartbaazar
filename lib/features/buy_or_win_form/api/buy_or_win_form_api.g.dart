// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_or_win_form_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postBuyOrWinHash() => r'e3683b3bbece66abc6bdc1797c7a8e3c4d108b80';

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

/// See also [postBuyOrWin].
@ProviderFor(postBuyOrWin)
const postBuyOrWinProvider = PostBuyOrWinFamily();

/// See also [postBuyOrWin].
class PostBuyOrWinFamily extends Family<AsyncValue<String>> {
  /// See also [postBuyOrWin].
  const PostBuyOrWinFamily();

  /// See also [postBuyOrWin].
  PostBuyOrWinProvider call(
    String postId,
    String qty,
  ) {
    return PostBuyOrWinProvider(
      postId,
      qty,
    );
  }

  @override
  PostBuyOrWinProvider getProviderOverride(
    covariant PostBuyOrWinProvider provider,
  ) {
    return call(
      provider.postId,
      provider.qty,
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
  String? get name => r'postBuyOrWinProvider';
}

/// See also [postBuyOrWin].
class PostBuyOrWinProvider extends AutoDisposeFutureProvider<String> {
  /// See also [postBuyOrWin].
  PostBuyOrWinProvider(
    String postId,
    String qty,
  ) : this._internal(
          (ref) => postBuyOrWin(
            ref as PostBuyOrWinRef,
            postId,
            qty,
          ),
          from: postBuyOrWinProvider,
          name: r'postBuyOrWinProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postBuyOrWinHash,
          dependencies: PostBuyOrWinFamily._dependencies,
          allTransitiveDependencies:
              PostBuyOrWinFamily._allTransitiveDependencies,
          postId: postId,
          qty: qty,
        );

  PostBuyOrWinProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
    required this.qty,
  }) : super.internal();

  final String postId;
  final String qty;

  @override
  Override overrideWith(
    FutureOr<String> Function(PostBuyOrWinRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostBuyOrWinProvider._internal(
        (ref) => create(ref as PostBuyOrWinRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
        qty: qty,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PostBuyOrWinProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostBuyOrWinProvider &&
        other.postId == postId &&
        other.qty == qty;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);
    hash = _SystemHash.combine(hash, qty.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostBuyOrWinRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `postId` of this provider.
  String get postId;

  /// The parameter `qty` of this provider.
  String get qty;
}

class _PostBuyOrWinProviderElement
    extends AutoDisposeFutureProviderElement<String> with PostBuyOrWinRef {
  _PostBuyOrWinProviderElement(super.provider);

  @override
  String get postId => (origin as PostBuyOrWinProvider).postId;
  @override
  String get qty => (origin as PostBuyOrWinProvider).qty;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
