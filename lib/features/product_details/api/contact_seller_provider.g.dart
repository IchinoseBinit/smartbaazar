// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_seller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactSellerHash() => r'1f779a406ac0381780859393f04ae9618b4b4ca9';

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

/// See also [contactSeller].
@ProviderFor(contactSeller)
const contactSellerProvider = ContactSellerFamily();

/// See also [contactSeller].
class ContactSellerFamily extends Family<AsyncValue<bool>> {
  /// See also [contactSeller].
  const ContactSellerFamily();

  /// See also [contactSeller].
  ContactSellerProvider call(
    String username,
    String phoneNumber,
    String body,
    int postId,
    String email,
  ) {
    return ContactSellerProvider(
      username,
      phoneNumber,
      body,
      postId,
      email,
    );
  }

  @override
  ContactSellerProvider getProviderOverride(
    covariant ContactSellerProvider provider,
  ) {
    return call(
      provider.username,
      provider.phoneNumber,
      provider.body,
      provider.postId,
      provider.email,
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
  String? get name => r'contactSellerProvider';
}

/// See also [contactSeller].
class ContactSellerProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [contactSeller].
  ContactSellerProvider(
    String username,
    String phoneNumber,
    String body,
    int postId,
    String email,
  ) : this._internal(
          (ref) => contactSeller(
            ref as ContactSellerRef,
            username,
            phoneNumber,
            body,
            postId,
            email,
          ),
          from: contactSellerProvider,
          name: r'contactSellerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$contactSellerHash,
          dependencies: ContactSellerFamily._dependencies,
          allTransitiveDependencies:
              ContactSellerFamily._allTransitiveDependencies,
          username: username,
          phoneNumber: phoneNumber,
          body: body,
          postId: postId,
          email: email,
        );

  ContactSellerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
    required this.phoneNumber,
    required this.body,
    required this.postId,
    required this.email,
  }) : super.internal();

  final String username;
  final String phoneNumber;
  final String body;
  final int postId;
  final String email;

  @override
  Override overrideWith(
    FutureOr<bool> Function(ContactSellerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ContactSellerProvider._internal(
        (ref) => create(ref as ContactSellerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
        phoneNumber: phoneNumber,
        body: body,
        postId: postId,
        email: email,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _ContactSellerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ContactSellerProvider &&
        other.username == username &&
        other.phoneNumber == phoneNumber &&
        other.body == body &&
        other.postId == postId &&
        other.email == email;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, phoneNumber.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ContactSellerRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `username` of this provider.
  String get username;

  /// The parameter `phoneNumber` of this provider.
  String get phoneNumber;

  /// The parameter `body` of this provider.
  String get body;

  /// The parameter `postId` of this provider.
  int get postId;

  /// The parameter `email` of this provider.
  String get email;
}

class _ContactSellerProviderElement
    extends AutoDisposeFutureProviderElement<bool> with ContactSellerRef {
  _ContactSellerProviderElement(super.provider);

  @override
  String get username => (origin as ContactSellerProvider).username;
  @override
  String get phoneNumber => (origin as ContactSellerProvider).phoneNumber;
  @override
  String get body => (origin as ContactSellerProvider).body;
  @override
  int get postId => (origin as ContactSellerProvider).postId;
  @override
  String get email => (origin as ContactSellerProvider).email;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
