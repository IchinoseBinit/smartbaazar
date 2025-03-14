// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_details_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateUserDetailsHash() => r'6081fa9a9c24100948a49c9a7ea95d9da4a06963';

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
    String? fullName,
    String? phoneNumber,
    String? userName,
    String? email,
    String? userId,
    String? genderID,
    List<String>? branchLocations,
    String? bio,
    List<String>? day,
    List<String?>? fromList,
    List<String?>? toList,
    List<bool>? closed,
  ) {
    return UpdateUserDetailsProvider(
      fullName,
      phoneNumber,
      userName,
      email,
      userId,
      genderID,
      branchLocations,
      bio,
      day,
      fromList,
      toList,
      closed,
    );
  }

  @override
  UpdateUserDetailsProvider getProviderOverride(
    covariant UpdateUserDetailsProvider provider,
  ) {
    return call(
      provider.fullName,
      provider.phoneNumber,
      provider.userName,
      provider.email,
      provider.userId,
      provider.genderID,
      provider.branchLocations,
      provider.bio,
      provider.day,
      provider.fromList,
      provider.toList,
      provider.closed,
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
    String? fullName,
    String? phoneNumber,
    String? userName,
    String? email,
    String? userId,
    String? genderID,
    List<String>? branchLocations,
    String? bio,
    List<String>? day,
    List<String?>? fromList,
    List<String?>? toList,
    List<bool>? closed,
  ) : this._internal(
          (ref) => updateUserDetails(
            ref as UpdateUserDetailsRef,
            fullName,
            phoneNumber,
            userName,
            email,
            userId,
            genderID,
            branchLocations,
            bio,
            day,
            fromList,
            toList,
            closed,
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
          fullName: fullName,
          phoneNumber: phoneNumber,
          userName: userName,
          email: email,
          userId: userId,
          genderID: genderID,
          branchLocations: branchLocations,
          bio: bio,
          day: day,
          fromList: fromList,
          toList: toList,
          closed: closed,
        );

  UpdateUserDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fullName,
    required this.phoneNumber,
    required this.userName,
    required this.email,
    required this.userId,
    required this.genderID,
    required this.branchLocations,
    required this.bio,
    required this.day,
    required this.fromList,
    required this.toList,
    required this.closed,
  }) : super.internal();

  final String? fullName;
  final String? phoneNumber;
  final String? userName;
  final String? email;
  final String? userId;
  final String? genderID;
  final List<String>? branchLocations;
  final String? bio;
  final List<String>? day;
  final List<String?>? fromList;
  final List<String?>? toList;
  final List<bool>? closed;

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
        fullName: fullName,
        phoneNumber: phoneNumber,
        userName: userName,
        email: email,
        userId: userId,
        genderID: genderID,
        branchLocations: branchLocations,
        bio: bio,
        day: day,
        fromList: fromList,
        toList: toList,
        closed: closed,
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
        other.fullName == fullName &&
        other.phoneNumber == phoneNumber &&
        other.userName == userName &&
        other.email == email &&
        other.userId == userId &&
        other.genderID == genderID &&
        other.branchLocations == branchLocations &&
        other.bio == bio &&
        other.day == day &&
        other.fromList == fromList &&
        other.toList == toList &&
        other.closed == closed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fullName.hashCode);
    hash = _SystemHash.combine(hash, phoneNumber.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, genderID.hashCode);
    hash = _SystemHash.combine(hash, branchLocations.hashCode);
    hash = _SystemHash.combine(hash, bio.hashCode);
    hash = _SystemHash.combine(hash, day.hashCode);
    hash = _SystemHash.combine(hash, fromList.hashCode);
    hash = _SystemHash.combine(hash, toList.hashCode);
    hash = _SystemHash.combine(hash, closed.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateUserDetailsRef on AutoDisposeFutureProviderRef<UpdateUserDetail> {
  /// The parameter `fullName` of this provider.
  String? get fullName;

  /// The parameter `phoneNumber` of this provider.
  String? get phoneNumber;

  /// The parameter `userName` of this provider.
  String? get userName;

  /// The parameter `email` of this provider.
  String? get email;

  /// The parameter `userId` of this provider.
  String? get userId;

  /// The parameter `genderID` of this provider.
  String? get genderID;

  /// The parameter `branchLocations` of this provider.
  List<String>? get branchLocations;

  /// The parameter `bio` of this provider.
  String? get bio;

  /// The parameter `day` of this provider.
  List<String>? get day;

  /// The parameter `fromList` of this provider.
  List<String?>? get fromList;

  /// The parameter `toList` of this provider.
  List<String?>? get toList;

  /// The parameter `closed` of this provider.
  List<bool>? get closed;
}

class _UpdateUserDetailsProviderElement
    extends AutoDisposeFutureProviderElement<UpdateUserDetail>
    with UpdateUserDetailsRef {
  _UpdateUserDetailsProviderElement(super.provider);

  @override
  String? get fullName => (origin as UpdateUserDetailsProvider).fullName;
  @override
  String? get phoneNumber => (origin as UpdateUserDetailsProvider).phoneNumber;
  @override
  String? get userName => (origin as UpdateUserDetailsProvider).userName;
  @override
  String? get email => (origin as UpdateUserDetailsProvider).email;
  @override
  String? get userId => (origin as UpdateUserDetailsProvider).userId;
  @override
  String? get genderID => (origin as UpdateUserDetailsProvider).genderID;
  @override
  List<String>? get branchLocations =>
      (origin as UpdateUserDetailsProvider).branchLocations;
  @override
  String? get bio => (origin as UpdateUserDetailsProvider).bio;
  @override
  List<String>? get day => (origin as UpdateUserDetailsProvider).day;
  @override
  List<String?>? get fromList => (origin as UpdateUserDetailsProvider).fromList;
  @override
  List<String?>? get toList => (origin as UpdateUserDetailsProvider).toList;
  @override
  List<bool>? get closed => (origin as UpdateUserDetailsProvider).closed;
}

String _$updateBuyerUserDetailsHash() =>
    r'317d34902623d9cfb4b10bbe18cbd9ce698f7df7';

/// See also [updateBuyerUserDetails].
@ProviderFor(updateBuyerUserDetails)
const updateBuyerUserDetailsProvider = UpdateBuyerUserDetailsFamily();

/// See also [updateBuyerUserDetails].
class UpdateBuyerUserDetailsFamily
    extends Family<AsyncValue<UpdateUserDetail>> {
  /// See also [updateBuyerUserDetails].
  const UpdateBuyerUserDetailsFamily();

  /// See also [updateBuyerUserDetails].
  UpdateBuyerUserDetailsProvider call(
    String fullName,
    String phoneNumber,
    String userName,
    String email,
    String userId,
    String genderID,
    String branchLocations,
  ) {
    return UpdateBuyerUserDetailsProvider(
      fullName,
      phoneNumber,
      userName,
      email,
      userId,
      genderID,
      branchLocations,
    );
  }

  @override
  UpdateBuyerUserDetailsProvider getProviderOverride(
    covariant UpdateBuyerUserDetailsProvider provider,
  ) {
    return call(
      provider.fullName,
      provider.phoneNumber,
      provider.userName,
      provider.email,
      provider.userId,
      provider.genderID,
      provider.branchLocations,
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
  String? get name => r'updateBuyerUserDetailsProvider';
}

/// See also [updateBuyerUserDetails].
class UpdateBuyerUserDetailsProvider
    extends AutoDisposeFutureProvider<UpdateUserDetail> {
  /// See also [updateBuyerUserDetails].
  UpdateBuyerUserDetailsProvider(
    String fullName,
    String phoneNumber,
    String userName,
    String email,
    String userId,
    String genderID,
    String branchLocations,
  ) : this._internal(
          (ref) => updateBuyerUserDetails(
            ref as UpdateBuyerUserDetailsRef,
            fullName,
            phoneNumber,
            userName,
            email,
            userId,
            genderID,
            branchLocations,
          ),
          from: updateBuyerUserDetailsProvider,
          name: r'updateBuyerUserDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateBuyerUserDetailsHash,
          dependencies: UpdateBuyerUserDetailsFamily._dependencies,
          allTransitiveDependencies:
              UpdateBuyerUserDetailsFamily._allTransitiveDependencies,
          fullName: fullName,
          phoneNumber: phoneNumber,
          userName: userName,
          email: email,
          userId: userId,
          genderID: genderID,
          branchLocations: branchLocations,
        );

  UpdateBuyerUserDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fullName,
    required this.phoneNumber,
    required this.userName,
    required this.email,
    required this.userId,
    required this.genderID,
    required this.branchLocations,
  }) : super.internal();

  final String fullName;
  final String phoneNumber;
  final String userName;
  final String email;
  final String userId;
  final String genderID;
  final String branchLocations;

  @override
  Override overrideWith(
    FutureOr<UpdateUserDetail> Function(UpdateBuyerUserDetailsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateBuyerUserDetailsProvider._internal(
        (ref) => create(ref as UpdateBuyerUserDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fullName: fullName,
        phoneNumber: phoneNumber,
        userName: userName,
        email: email,
        userId: userId,
        genderID: genderID,
        branchLocations: branchLocations,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UpdateUserDetail> createElement() {
    return _UpdateBuyerUserDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateBuyerUserDetailsProvider &&
        other.fullName == fullName &&
        other.phoneNumber == phoneNumber &&
        other.userName == userName &&
        other.email == email &&
        other.userId == userId &&
        other.genderID == genderID &&
        other.branchLocations == branchLocations;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fullName.hashCode);
    hash = _SystemHash.combine(hash, phoneNumber.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, genderID.hashCode);
    hash = _SystemHash.combine(hash, branchLocations.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateBuyerUserDetailsRef
    on AutoDisposeFutureProviderRef<UpdateUserDetail> {
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

  /// The parameter `genderID` of this provider.
  String get genderID;

  /// The parameter `branchLocations` of this provider.
  String get branchLocations;
}

class _UpdateBuyerUserDetailsProviderElement
    extends AutoDisposeFutureProviderElement<UpdateUserDetail>
    with UpdateBuyerUserDetailsRef {
  _UpdateBuyerUserDetailsProviderElement(super.provider);

  @override
  String get fullName => (origin as UpdateBuyerUserDetailsProvider).fullName;
  @override
  String get phoneNumber =>
      (origin as UpdateBuyerUserDetailsProvider).phoneNumber;
  @override
  String get userName => (origin as UpdateBuyerUserDetailsProvider).userName;
  @override
  String get email => (origin as UpdateBuyerUserDetailsProvider).email;
  @override
  String get userId => (origin as UpdateBuyerUserDetailsProvider).userId;
  @override
  String get genderID => (origin as UpdateBuyerUserDetailsProvider).genderID;
  @override
  String get branchLocations =>
      (origin as UpdateBuyerUserDetailsProvider).branchLocations;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
