// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$changePasswordHash() => r'6f0abc50d8772d450b851b79555889c9ff3c12dc';

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

/// See also [changePassword].
@ProviderFor(changePassword)
const changePasswordProvider = ChangePasswordFamily();

/// See also [changePassword].
class ChangePasswordFamily extends Family<AsyncValue<UpdateUserDetail>> {
  /// See also [changePassword].
  const ChangePasswordFamily();

  /// See also [changePassword].
  ChangePasswordProvider call(
    String password,
    String confirmPassword,
    String userId,
    String email,
    String userName,
  ) {
    return ChangePasswordProvider(
      password,
      confirmPassword,
      userId,
      email,
      userName,
    );
  }

  @override
  ChangePasswordProvider getProviderOverride(
    covariant ChangePasswordProvider provider,
  ) {
    return call(
      provider.password,
      provider.confirmPassword,
      provider.userId,
      provider.email,
      provider.userName,
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
  String? get name => r'changePasswordProvider';
}

/// See also [changePassword].
class ChangePasswordProvider
    extends AutoDisposeFutureProvider<UpdateUserDetail> {
  /// See also [changePassword].
  ChangePasswordProvider(
    String password,
    String confirmPassword,
    String userId,
    String email,
    String userName,
  ) : this._internal(
          (ref) => changePassword(
            ref as ChangePasswordRef,
            password,
            confirmPassword,
            userId,
            email,
            userName,
          ),
          from: changePasswordProvider,
          name: r'changePasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changePasswordHash,
          dependencies: ChangePasswordFamily._dependencies,
          allTransitiveDependencies:
              ChangePasswordFamily._allTransitiveDependencies,
          password: password,
          confirmPassword: confirmPassword,
          userId: userId,
          email: email,
          userName: userName,
        );

  ChangePasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.password,
    required this.confirmPassword,
    required this.userId,
    required this.email,
    required this.userName,
  }) : super.internal();

  final String password;
  final String confirmPassword;
  final String userId;
  final String email;
  final String userName;

  @override
  Override overrideWith(
    FutureOr<UpdateUserDetail> Function(ChangePasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChangePasswordProvider._internal(
        (ref) => create(ref as ChangePasswordRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        password: password,
        confirmPassword: confirmPassword,
        userId: userId,
        email: email,
        userName: userName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UpdateUserDetail> createElement() {
    return _ChangePasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangePasswordProvider &&
        other.password == password &&
        other.confirmPassword == confirmPassword &&
        other.userId == userId &&
        other.email == email &&
        other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);
    hash = _SystemHash.combine(hash, confirmPassword.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChangePasswordRef on AutoDisposeFutureProviderRef<UpdateUserDetail> {
  /// The parameter `password` of this provider.
  String get password;

  /// The parameter `confirmPassword` of this provider.
  String get confirmPassword;

  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `userName` of this provider.
  String get userName;
}

class _ChangePasswordProviderElement
    extends AutoDisposeFutureProviderElement<UpdateUserDetail>
    with ChangePasswordRef {
  _ChangePasswordProviderElement(super.provider);

  @override
  String get password => (origin as ChangePasswordProvider).password;
  @override
  String get confirmPassword =>
      (origin as ChangePasswordProvider).confirmPassword;
  @override
  String get userId => (origin as ChangePasswordProvider).userId;
  @override
  String get email => (origin as ChangePasswordProvider).email;
  @override
  String get userName => (origin as ChangePasswordProvider).userName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
