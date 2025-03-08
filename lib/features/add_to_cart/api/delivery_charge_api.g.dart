// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_charge_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getDeliveryChargeHash() => r'845a8d8d1e4541a0ac779b4d6f4c2e4158e7ccd7';

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

/// See also [getDeliveryCharge].
@ProviderFor(getDeliveryCharge)
const getDeliveryChargeProvider = GetDeliveryChargeFamily();

/// See also [getDeliveryCharge].
class GetDeliveryChargeFamily extends Family<AsyncValue<ParcelFareResponse>> {
  /// See also [getDeliveryCharge].
  const GetDeliveryChargeFamily();

  /// See also [getDeliveryCharge].
  GetDeliveryChargeProvider call(
    String token,
    List<double> pickupCoordinates,
    List<double> destinationCoordinates,
    String parcelCategoryId,
    String parcelWeight,
    String vendorId,
    String pickupAddress,
    String destinationAddress,
  ) {
    return GetDeliveryChargeProvider(
      token,
      pickupCoordinates,
      destinationCoordinates,
      parcelCategoryId,
      parcelWeight,
      vendorId,
      pickupAddress,
      destinationAddress,
    );
  }

  @override
  GetDeliveryChargeProvider getProviderOverride(
    covariant GetDeliveryChargeProvider provider,
  ) {
    return call(
      provider.token,
      provider.pickupCoordinates,
      provider.destinationCoordinates,
      provider.parcelCategoryId,
      provider.parcelWeight,
      provider.vendorId,
      provider.pickupAddress,
      provider.destinationAddress,
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
  String? get name => r'getDeliveryChargeProvider';
}

/// See also [getDeliveryCharge].
class GetDeliveryChargeProvider
    extends AutoDisposeFutureProvider<ParcelFareResponse> {
  /// See also [getDeliveryCharge].
  GetDeliveryChargeProvider(
    String token,
    List<double> pickupCoordinates,
    List<double> destinationCoordinates,
    String parcelCategoryId,
    String parcelWeight,
    String vendorId,
    String pickupAddress,
    String destinationAddress,
  ) : this._internal(
          (ref) => getDeliveryCharge(
            ref as GetDeliveryChargeRef,
            token,
            pickupCoordinates,
            destinationCoordinates,
            parcelCategoryId,
            parcelWeight,
            vendorId,
            pickupAddress,
            destinationAddress,
          ),
          from: getDeliveryChargeProvider,
          name: r'getDeliveryChargeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDeliveryChargeHash,
          dependencies: GetDeliveryChargeFamily._dependencies,
          allTransitiveDependencies:
              GetDeliveryChargeFamily._allTransitiveDependencies,
          token: token,
          pickupCoordinates: pickupCoordinates,
          destinationCoordinates: destinationCoordinates,
          parcelCategoryId: parcelCategoryId,
          parcelWeight: parcelWeight,
          vendorId: vendorId,
          pickupAddress: pickupAddress,
          destinationAddress: destinationAddress,
        );

  GetDeliveryChargeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
    required this.pickupCoordinates,
    required this.destinationCoordinates,
    required this.parcelCategoryId,
    required this.parcelWeight,
    required this.vendorId,
    required this.pickupAddress,
    required this.destinationAddress,
  }) : super.internal();

  final String token;
  final List<double> pickupCoordinates;
  final List<double> destinationCoordinates;
  final String parcelCategoryId;
  final String parcelWeight;
  final String vendorId;
  final String pickupAddress;
  final String destinationAddress;

  @override
  Override overrideWith(
    FutureOr<ParcelFareResponse> Function(GetDeliveryChargeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDeliveryChargeProvider._internal(
        (ref) => create(ref as GetDeliveryChargeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
        pickupCoordinates: pickupCoordinates,
        destinationCoordinates: destinationCoordinates,
        parcelCategoryId: parcelCategoryId,
        parcelWeight: parcelWeight,
        vendorId: vendorId,
        pickupAddress: pickupAddress,
        destinationAddress: destinationAddress,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ParcelFareResponse> createElement() {
    return _GetDeliveryChargeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDeliveryChargeProvider &&
        other.token == token &&
        other.pickupCoordinates == pickupCoordinates &&
        other.destinationCoordinates == destinationCoordinates &&
        other.parcelCategoryId == parcelCategoryId &&
        other.parcelWeight == parcelWeight &&
        other.vendorId == vendorId &&
        other.pickupAddress == pickupAddress &&
        other.destinationAddress == destinationAddress;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);
    hash = _SystemHash.combine(hash, pickupCoordinates.hashCode);
    hash = _SystemHash.combine(hash, destinationCoordinates.hashCode);
    hash = _SystemHash.combine(hash, parcelCategoryId.hashCode);
    hash = _SystemHash.combine(hash, parcelWeight.hashCode);
    hash = _SystemHash.combine(hash, vendorId.hashCode);
    hash = _SystemHash.combine(hash, pickupAddress.hashCode);
    hash = _SystemHash.combine(hash, destinationAddress.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetDeliveryChargeRef on AutoDisposeFutureProviderRef<ParcelFareResponse> {
  /// The parameter `token` of this provider.
  String get token;

  /// The parameter `pickupCoordinates` of this provider.
  List<double> get pickupCoordinates;

  /// The parameter `destinationCoordinates` of this provider.
  List<double> get destinationCoordinates;

  /// The parameter `parcelCategoryId` of this provider.
  String get parcelCategoryId;

  /// The parameter `parcelWeight` of this provider.
  String get parcelWeight;

  /// The parameter `vendorId` of this provider.
  String get vendorId;

  /// The parameter `pickupAddress` of this provider.
  String get pickupAddress;

  /// The parameter `destinationAddress` of this provider.
  String get destinationAddress;
}

class _GetDeliveryChargeProviderElement
    extends AutoDisposeFutureProviderElement<ParcelFareResponse>
    with GetDeliveryChargeRef {
  _GetDeliveryChargeProviderElement(super.provider);

  @override
  String get token => (origin as GetDeliveryChargeProvider).token;
  @override
  List<double> get pickupCoordinates =>
      (origin as GetDeliveryChargeProvider).pickupCoordinates;
  @override
  List<double> get destinationCoordinates =>
      (origin as GetDeliveryChargeProvider).destinationCoordinates;
  @override
  String get parcelCategoryId =>
      (origin as GetDeliveryChargeProvider).parcelCategoryId;
  @override
  String get parcelWeight => (origin as GetDeliveryChargeProvider).parcelWeight;
  @override
  String get vendorId => (origin as GetDeliveryChargeProvider).vendorId;
  @override
  String get pickupAddress =>
      (origin as GetDeliveryChargeProvider).pickupAddress;
  @override
  String get destinationAddress =>
      (origin as GetDeliveryChargeProvider).destinationAddress;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
