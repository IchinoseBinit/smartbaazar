// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_message_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLastMessageHash() => r'e7005985f698ba85864b5099461025db1a44d2d1';

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

/// See also [getLastMessage].
@ProviderFor(getLastMessage)
const getLastMessageProvider = GetLastMessageFamily();

/// See also [getLastMessage].
class GetLastMessageFamily extends Family<AsyncValue<MessageData?>> {
  /// See also [getLastMessage].
  const GetLastMessageFamily();

  /// See also [getLastMessage].
  GetLastMessageProvider call(
    String threadId,
  ) {
    return GetLastMessageProvider(
      threadId,
    );
  }

  @override
  GetLastMessageProvider getProviderOverride(
    covariant GetLastMessageProvider provider,
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
  String? get name => r'getLastMessageProvider';
}

/// See also [getLastMessage].
class GetLastMessageProvider extends AutoDisposeFutureProvider<MessageData?> {
  /// See also [getLastMessage].
  GetLastMessageProvider(
    String threadId,
  ) : this._internal(
          (ref) => getLastMessage(
            ref as GetLastMessageRef,
            threadId,
          ),
          from: getLastMessageProvider,
          name: r'getLastMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLastMessageHash,
          dependencies: GetLastMessageFamily._dependencies,
          allTransitiveDependencies:
              GetLastMessageFamily._allTransitiveDependencies,
          threadId: threadId,
        );

  GetLastMessageProvider._internal(
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
    FutureOr<MessageData?> Function(GetLastMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetLastMessageProvider._internal(
        (ref) => create(ref as GetLastMessageRef),
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
  AutoDisposeFutureProviderElement<MessageData?> createElement() {
    return _GetLastMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetLastMessageProvider && other.threadId == threadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, threadId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetLastMessageRef on AutoDisposeFutureProviderRef<MessageData?> {
  /// The parameter `threadId` of this provider.
  String get threadId;
}

class _GetLastMessageProviderElement
    extends AutoDisposeFutureProviderElement<MessageData?>
    with GetLastMessageRef {
  _GetLastMessageProviderElement(super.provider);

  @override
  String get threadId => (origin as GetLastMessageProvider).threadId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
