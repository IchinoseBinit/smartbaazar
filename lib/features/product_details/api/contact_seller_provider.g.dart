// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_seller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactSellerHash() => r'2028d28943a8b2cbfc7edc963a61fb6e91b99b0a';

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
  ) {
    return ContactSellerProvider(
      username,
      phoneNumber,
      body,
      postId,
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
  ) : this._internal(
          (ref) => contactSeller(
            ref as ContactSellerRef,
            username,
            phoneNumber,
            body,
            postId,
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
  }) : super.internal();

  final String username;
  final String phoneNumber;
  final String body;
  final int postId;

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
        other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, phoneNumber.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

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
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
