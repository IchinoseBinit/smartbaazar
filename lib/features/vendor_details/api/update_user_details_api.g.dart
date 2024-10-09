// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_details_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateUserDetailsHash() => r'd3c2c52f27102ebff6299267f1f8593b1b3eb5c9';

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

/// See also [updateUserDetails].
@ProviderFor(updateUserDetails)
const updateUserDetailsProvider = UpdateUserDetailsFamily();

/// See also [updateUserDetails].
class UpdateUserDetailsFamily extends Family<AsyncValue<UpdateUserDetail>> {
  /// See also [updateUserDetails].
  const UpdateUserDetailsFamily();

  /// See also [updateUserDetails].
  UpdateUserDetailsProvider call(
    String genderID,
    String fullName,
    String phoneNumber,
    String userName,
    String email,
    String userId,
  ) {
    return UpdateUserDetailsProvider(
      genderID,
      fullName,
      phoneNumber,
      userName,
      email,
      userId,
    );
  }

  @override
  UpdateUserDetailsProvider getProviderOverride(
    covariant UpdateUserDetailsProvider provider,
  ) {
    return call(
      provider.genderID,
      provider.fullName,
      provider.phoneNumber,
      provider.userName,
      provider.email,
      provider.userId,
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
  String? get name => r'updateUserDetailsProvider';
}

/// See also [updateUserDetails].
class UpdateUserDetailsProvider
    extends AutoDisposeFutureProvider<UpdateUserDetail> {
  /// See also [updateUserDetails].
  UpdateUserDetailsProvider(
    String genderID,
    String fullName,
    String phoneNumber,
    String userName,
    String email,
    String userId,
  ) : this._internal(
          (ref) => updateUserDetails(
            ref as UpdateUserDetailsRef,
            genderID,
            fullName,
            phoneNumber,
            userName,
            email,
            userId,
          ),
          from: updateUserDetailsProvider,
          name: r'updateUserDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateUserDetailsHash,
          dependencies: UpdateUserDetailsFamily._dependencies,
          allTransitiveDependencies:
              UpdateUserDetailsFamily._allTransitiveDependencies,
          genderID: genderID,
          fullName: fullName,
          phoneNumber: phoneNumber,
          userName: userName,
          email: email,
          userId: userId,
        );

  UpdateUserDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genderID,
    required this.fullName,
    required this.phoneNumber,
    required this.userName,
    required this.email,
    required this.userId,
  }) : super.internal();

  final String genderID;
  final String fullName;
  final String phoneNumber;
  final String userName;
  final String email;
  final String userId;

  @override
  Override overrideWith(
    FutureOr<UpdateUserDetail> Function(UpdateUserDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateUserDetailsProvider._internal(
        (ref) => create(ref as UpdateUserDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genderID: genderID,
        fullName: fullName,
        phoneNumber: phoneNumber,
        userName: userName,
        email: email,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UpdateUserDetail> createElement() {
    return _UpdateUserDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateUserDetailsProvider &&
        other.genderID == genderID &&
        other.fullName == fullName &&
        other.phoneNumber == phoneNumber &&
        other.userName == userName &&
        other.email == email &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genderID.hashCode);
    hash = _SystemHash.combine(hash, fullName.hashCode);
    hash = _SystemHash.combine(hash, phoneNumber.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateUserDetailsRef on AutoDisposeFutureProviderRef<UpdateUserDetail> {
  /// The parameter `genderID` of this provider.
  String get genderID;

  /// The parameter `fullName` of this provider.
  String get fullName;

  /// The parameter `phoneNumber` of this provider.
  String get phoneNumber;

  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UpdateUserDetailsProviderElement
    extends AutoDisposeFutureProviderElement<UpdateUserDetail>
    with UpdateUserDetailsRef {
  _UpdateUserDetailsProviderElement(super.provider);

  @override
  String get genderID => (origin as UpdateUserDetailsProvider).genderID;
  @override
  String get fullName => (origin as UpdateUserDetailsProvider).fullName;
  @override
  String get phoneNumber => (origin as UpdateUserDetailsProvider).phoneNumber;
  @override
  String get userName => (origin as UpdateUserDetailsProvider).userName;
  @override
  String get email => (origin as UpdateUserDetailsProvider).email;
  @override
  String get userId => (origin as UpdateUserDetailsProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
