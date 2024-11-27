// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_dispute_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postDisputeHash() => r'def4f0dd967e01654f06c25f581fe7ea787313bb';

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

/// See also [postDispute].
@ProviderFor(postDispute)
const postDisputeProvider = PostDisputeFamily();

/// See also [postDispute].
class PostDisputeFamily extends Family<AsyncValue<bool>> {
  /// See also [postDispute].
  const PostDisputeFamily();

  /// See also [postDispute].
  PostDisputeProvider call(
    String vendorName,
    String issue,
    String message,
    File imageFile,
  ) {
    return PostDisputeProvider(
      vendorName,
      issue,
      message,
      imageFile,
    );
  }

  @override
  PostDisputeProvider getProviderOverride(
    covariant PostDisputeProvider provider,
  ) {
    return call(
      provider.vendorName,
      provider.issue,
      provider.message,
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
  String? get name => r'postDisputeProvider';
}

/// See also [postDispute].
class PostDisputeProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postDispute].
  PostDisputeProvider(
    String vendorName,
    String issue,
    String message,
    File imageFile,
  ) : this._internal(
          (ref) => postDispute(
            ref as PostDisputeRef,
            vendorName,
            issue,
            message,
            imageFile,
          ),
          from: postDisputeProvider,
          name: r'postDisputeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postDisputeHash,
          dependencies: PostDisputeFamily._dependencies,
          allTransitiveDependencies:
              PostDisputeFamily._allTransitiveDependencies,
          vendorName: vendorName,
          issue: issue,
          message: message,
          imageFile: imageFile,
        );

  PostDisputeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vendorName,
    required this.issue,
    required this.message,
    required this.imageFile,
  }) : super.internal();

  final String vendorName;
  final String issue;
  final String message;
  final File imageFile;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostDisputeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostDisputeProvider._internal(
        (ref) => create(ref as PostDisputeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vendorName: vendorName,
        issue: issue,
        message: message,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostDisputeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDisputeProvider &&
        other.vendorName == vendorName &&
        other.issue == issue &&
        other.message == message &&
        other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vendorName.hashCode);
    hash = _SystemHash.combine(hash, issue.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostDisputeRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `vendorName` of this provider.
  String get vendorName;

  /// The parameter `issue` of this provider.
  String get issue;

  /// The parameter `message` of this provider.
  String get message;

  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _PostDisputeProviderElement extends AutoDisposeFutureProviderElement<bool>
    with PostDisputeRef {
  _PostDisputeProviderElement(super.provider);

  @override
  String get vendorName => (origin as PostDisputeProvider).vendorName;
  @override
  String get issue => (origin as PostDisputeProvider).issue;
  @override
  String get message => (origin as PostDisputeProvider).message;
  @override
  File get imageFile => (origin as PostDisputeProvider).imageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
