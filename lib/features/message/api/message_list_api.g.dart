// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_list_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMessageListHash() => r'1c0d0ae2c518285548ac5dabb9c817da1ffe14e0';

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

/// See also [getMessageList].
@ProviderFor(getMessageList)
const getMessageListProvider = GetMessageListFamily();

/// See also [getMessageList].
class GetMessageListFamily extends Family<AsyncValue<MessageListModel>> {
  /// See also [getMessageList].
  const GetMessageListFamily();

  /// See also [getMessageList].
  GetMessageListProvider call(
    String threadId,
    int page,
  ) {
    return GetMessageListProvider(
      threadId,
      page,
    );
  }

  @override
  GetMessageListProvider getProviderOverride(
    covariant GetMessageListProvider provider,
  ) {
    return call(
      provider.threadId,
      provider.page,
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
  String? get name => r'getMessageListProvider';
}

/// See also [getMessageList].
class GetMessageListProvider
    extends AutoDisposeFutureProvider<MessageListModel> {
  /// See also [getMessageList].
  GetMessageListProvider(
    String threadId,
    int page,
  ) : this._internal(
          (ref) => getMessageList(
            ref as GetMessageListRef,
            threadId,
            page,
          ),
          from: getMessageListProvider,
          name: r'getMessageListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMessageListHash,
          dependencies: GetMessageListFamily._dependencies,
          allTransitiveDependencies:
              GetMessageListFamily._allTransitiveDependencies,
          threadId: threadId,
          page: page,
        );

  GetMessageListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.threadId,
    required this.page,
  }) : super.internal();

  final String threadId;
  final int page;

  @override
  Override overrideWith(
    FutureOr<MessageListModel> Function(GetMessageListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMessageListProvider._internal(
        (ref) => create(ref as GetMessageListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        threadId: threadId,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MessageListModel> createElement() {
    return _GetMessageListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMessageListProvider &&
        other.threadId == threadId &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, threadId.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMessageListRef on AutoDisposeFutureProviderRef<MessageListModel> {
  /// The parameter `threadId` of this provider.
  String get threadId;

  /// The parameter `page` of this provider.
  int get page;
}

class _GetMessageListProviderElement
    extends AutoDisposeFutureProviderElement<MessageListModel>
    with GetMessageListRef {
  _GetMessageListProviderElement(super.provider);

  @override
  String get threadId => (origin as GetMessageListProvider).threadId;
  @override
  int get page => (origin as GetMessageListProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
