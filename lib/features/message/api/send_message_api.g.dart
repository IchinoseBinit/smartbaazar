// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendNewMessageHash() => r'eb6791416b87931a3615e1fa059c15771635b8ac';

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

/// See also [sendNewMessage].
@ProviderFor(sendNewMessage)
const sendNewMessageProvider = SendNewMessageFamily();

/// See also [sendNewMessage].
class SendNewMessageFamily extends Family<AsyncValue<String>> {
  /// See also [sendNewMessage].
  const SendNewMessageFamily();

  /// See also [sendNewMessage].
  SendNewMessageProvider call(
    String postid,
    String? body,
    String? subject,
    File? imageFile,
  ) {
    return SendNewMessageProvider(
      postid,
      body,
      subject,
      imageFile,
    );
  }

  @override
  SendNewMessageProvider getProviderOverride(
    covariant SendNewMessageProvider provider,
  ) {
    return call(
      provider.postid,
      provider.body,
      provider.subject,
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
  String? get name => r'sendNewMessageProvider';
}

/// See also [sendNewMessage].
class SendNewMessageProvider extends AutoDisposeFutureProvider<String> {
  /// See also [sendNewMessage].
  SendNewMessageProvider(
    String postid,
    String? body,
    String? subject,
    File? imageFile,
  ) : this._internal(
          (ref) => sendNewMessage(
            ref as SendNewMessageRef,
            postid,
            body,
            subject,
            imageFile,
          ),
          from: sendNewMessageProvider,
          name: r'sendNewMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendNewMessageHash,
          dependencies: SendNewMessageFamily._dependencies,
          allTransitiveDependencies:
              SendNewMessageFamily._allTransitiveDependencies,
          postid: postid,
          body: body,
          subject: subject,
          imageFile: imageFile,
        );

  SendNewMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postid,
    required this.body,
    required this.subject,
    required this.imageFile,
  }) : super.internal();

  final String postid;
  final String? body;
  final String? subject;
  final File? imageFile;

  @override
  Override overrideWith(
    FutureOr<String> Function(SendNewMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendNewMessageProvider._internal(
        (ref) => create(ref as SendNewMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postid: postid,
        body: body,
        subject: subject,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _SendNewMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendNewMessageProvider &&
        other.postid == postid &&
        other.body == body &&
        other.subject == subject &&
        other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postid.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);
    hash = _SystemHash.combine(hash, subject.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendNewMessageRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `postid` of this provider.
  String get postid;

  /// The parameter `body` of this provider.
  String? get body;

  /// The parameter `subject` of this provider.
  String? get subject;

  /// The parameter `imageFile` of this provider.
  File? get imageFile;
}

class _SendNewMessageProviderElement
    extends AutoDisposeFutureProviderElement<String> with SendNewMessageRef {
  _SendNewMessageProviderElement(super.provider);

  @override
  String get postid => (origin as SendNewMessageProvider).postid;
  @override
  String? get body => (origin as SendNewMessageProvider).body;
  @override
  String? get subject => (origin as SendNewMessageProvider).subject;
  @override
  File? get imageFile => (origin as SendNewMessageProvider).imageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
