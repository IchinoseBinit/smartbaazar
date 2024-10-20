// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_bank_details_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postUserBankDetailsHash() =>
    r'8df84b7701e8768e96b71d9efa422b9500c2dbc5';

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

/// See also [postUserBankDetails].
@ProviderFor(postUserBankDetails)
const postUserBankDetailsProvider = PostUserBankDetailsFamily();

/// See also [postUserBankDetails].
class PostUserBankDetailsFamily extends Family<AsyncValue<bool>> {
  /// See also [postUserBankDetails].
  const PostUserBankDetailsFamily();

  /// See also [postUserBankDetails].
  PostUserBankDetailsProvider call(
    String bankName,
    String bankBranch,
    String acHolder,
    String acNumber,
    File imageFile,
  ) {
    return PostUserBankDetailsProvider(
      bankName,
      bankBranch,
      acHolder,
      acNumber,
      imageFile,
    );
  }

  @override
  PostUserBankDetailsProvider getProviderOverride(
    covariant PostUserBankDetailsProvider provider,
  ) {
    return call(
      provider.bankName,
      provider.bankBranch,
      provider.acHolder,
      provider.acNumber,
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
  String? get name => r'postUserBankDetailsProvider';
}

/// See also [postUserBankDetails].
class PostUserBankDetailsProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postUserBankDetails].
  PostUserBankDetailsProvider(
    String bankName,
    String bankBranch,
    String acHolder,
    String acNumber,
    File imageFile,
  ) : this._internal(
          (ref) => postUserBankDetails(
            ref as PostUserBankDetailsRef,
            bankName,
            bankBranch,
            acHolder,
            acNumber,
            imageFile,
          ),
          from: postUserBankDetailsProvider,
          name: r'postUserBankDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postUserBankDetailsHash,
          dependencies: PostUserBankDetailsFamily._dependencies,
          allTransitiveDependencies:
              PostUserBankDetailsFamily._allTransitiveDependencies,
          bankName: bankName,
          bankBranch: bankBranch,
          acHolder: acHolder,
          acNumber: acNumber,
          imageFile: imageFile,
        );

  PostUserBankDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bankName,
    required this.bankBranch,
    required this.acHolder,
    required this.acNumber,
    required this.imageFile,
  }) : super.internal();

  final String bankName;
  final String bankBranch;
  final String acHolder;
  final String acNumber;
  final File imageFile;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostUserBankDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostUserBankDetailsProvider._internal(
        (ref) => create(ref as PostUserBankDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bankName: bankName,
        bankBranch: bankBranch,
        acHolder: acHolder,
        acNumber: acNumber,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostUserBankDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostUserBankDetailsProvider &&
        other.bankName == bankName &&
        other.bankBranch == bankBranch &&
        other.acHolder == acHolder &&
        other.acNumber == acNumber &&
        other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bankName.hashCode);
    hash = _SystemHash.combine(hash, bankBranch.hashCode);
    hash = _SystemHash.combine(hash, acHolder.hashCode);
    hash = _SystemHash.combine(hash, acNumber.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostUserBankDetailsRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `bankName` of this provider.
  String get bankName;

  /// The parameter `bankBranch` of this provider.
  String get bankBranch;

  /// The parameter `acHolder` of this provider.
  String get acHolder;

  /// The parameter `acNumber` of this provider.
  String get acNumber;

  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _PostUserBankDetailsProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PostUserBankDetailsRef {
  _PostUserBankDetailsProviderElement(super.provider);

  @override
  String get bankName => (origin as PostUserBankDetailsProvider).bankName;
  @override
  String get bankBranch => (origin as PostUserBankDetailsProvider).bankBranch;
  @override
  String get acHolder => (origin as PostUserBankDetailsProvider).acHolder;
  @override
  String get acNumber => (origin as PostUserBankDetailsProvider).acNumber;
  @override
  File get imageFile => (origin as PostUserBankDetailsProvider).imageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
