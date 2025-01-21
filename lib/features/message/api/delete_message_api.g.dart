// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_message_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteMessageHash() => r'9e07f95119041cf0d039c162098d07f3254ac72e';

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

/// See also [deleteMessage].
@ProviderFor(deleteMessage)
const deleteMessageProvider = DeleteMessageFamily();

/// See also [deleteMessage].
class DeleteMessageFamily extends Family<AsyncValue<void>> {
  /// See also [deleteMessage].
  const DeleteMessageFamily();

  /// See also [deleteMessage].
  DeleteMessageProvider call(
    String threadId,
  ) {
    return DeleteMessageProvider(
      threadId,
    );
  }

  @override
  DeleteMessageProvider getProviderOverride(
    covariant DeleteMessageProvider provider,
  ) {
    return call(
      provider.threadId,
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
  String? get name => r'deleteMessageProvider';
}

/// See also [deleteMessage].
class DeleteMessageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteMessage].
  DeleteMessageProvider(
    String threadId,
  ) : this._internal(
          (ref) => deleteMessage(
            ref as DeleteMessageRef,
            threadId,
          ),
          from: deleteMessageProvider,
          name: r'deleteMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteMessageHash,
          dependencies: DeleteMessageFamily._dependencies,
          allTransitiveDependencies:
              DeleteMessageFamily._allTransitiveDependencies,
          threadId: threadId,
        );

  DeleteMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.threadId,
  }) : super.internal();

  final String threadId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteMessageProvider._internal(
        (ref) => create(ref as DeleteMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        threadId: threadId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteMessageProvider && other.threadId == threadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, threadId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteMessageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `threadId` of this provider.
  String get threadId;
}

class _DeleteMessageProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteMessageRef {
  _DeleteMessageProviderElement(super.provider);

  @override
  String get threadId => (origin as DeleteMessageProvider).threadId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
