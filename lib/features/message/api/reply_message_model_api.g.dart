// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_message_model_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendReplyMessageHash() => r'e898dea3179f4a1407efd9e76b335c2c4ce8020e';

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

/// See also [sendReplyMessage].
@ProviderFor(sendReplyMessage)
const sendReplyMessageProvider = SendReplyMessageFamily();

/// See also [sendReplyMessage].
class SendReplyMessageFamily extends Family<AsyncValue<ReplyMessageModel>> {
  /// See also [sendReplyMessage].
  const SendReplyMessageFamily();

  /// See also [sendReplyMessage].
  SendReplyMessageProvider call(
    String threadId,
    String body,
  ) {
    return SendReplyMessageProvider(
      threadId,
      body,
    );
  }

  @override
  SendReplyMessageProvider getProviderOverride(
    covariant SendReplyMessageProvider provider,
  ) {
    return call(
      provider.threadId,
      provider.body,
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
  String? get name => r'sendReplyMessageProvider';
}

/// See also [sendReplyMessage].
class SendReplyMessageProvider
    extends AutoDisposeFutureProvider<ReplyMessageModel> {
  /// See also [sendReplyMessage].
  SendReplyMessageProvider(
    String threadId,
    String body,
  ) : this._internal(
          (ref) => sendReplyMessage(
            ref as SendReplyMessageRef,
            threadId,
            body,
          ),
          from: sendReplyMessageProvider,
          name: r'sendReplyMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendReplyMessageHash,
          dependencies: SendReplyMessageFamily._dependencies,
          allTransitiveDependencies:
              SendReplyMessageFamily._allTransitiveDependencies,
          threadId: threadId,
          body: body,
        );

  SendReplyMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.threadId,
    required this.body,
  }) : super.internal();

  final String threadId;
  final String body;

  @override
  Override overrideWith(
    FutureOr<ReplyMessageModel> Function(SendReplyMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendReplyMessageProvider._internal(
        (ref) => create(ref as SendReplyMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        threadId: threadId,
        body: body,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ReplyMessageModel> createElement() {
    return _SendReplyMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendReplyMessageProvider &&
        other.threadId == threadId &&
        other.body == body;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, threadId.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendReplyMessageRef on AutoDisposeFutureProviderRef<ReplyMessageModel> {
  /// The parameter `threadId` of this provider.
  String get threadId;

  /// The parameter `body` of this provider.
  String get body;
}

class _SendReplyMessageProviderElement
    extends AutoDisposeFutureProviderElement<ReplyMessageModel>
    with SendReplyMessageRef {
  _SendReplyMessageProviderElement(super.provider);

  @override
  String get threadId => (origin as SendReplyMessageProvider).threadId;
  @override
  String get body => (origin as SendReplyMessageProvider).body;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
