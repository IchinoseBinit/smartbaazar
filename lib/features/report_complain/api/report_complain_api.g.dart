// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_complain_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reportComplainHash() => r'9038d8208d087ecff24430f8d310c8e91a44f2bb';

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

/// See also [reportComplain].
@ProviderFor(reportComplain)
const reportComplainProvider = ReportComplainFamily();

/// See also [reportComplain].
class ReportComplainFamily extends Family<AsyncValue<bool>> {
  /// See also [reportComplain].
  const ReportComplainFamily();

  /// See also [reportComplain].
  ReportComplainProvider call(
    ReportComplainModel report,
    String productId,
  ) {
    return ReportComplainProvider(
      report,
      productId,
    );
  }

  @override
  ReportComplainProvider getProviderOverride(
    covariant ReportComplainProvider provider,
  ) {
    return call(
      provider.report,
      provider.productId,
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
  String? get name => r'reportComplainProvider';
}

/// See also [reportComplain].
class ReportComplainProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [reportComplain].
  ReportComplainProvider(
    ReportComplainModel report,
    String productId,
  ) : this._internal(
          (ref) => reportComplain(
            ref as ReportComplainRef,
            report,
            productId,
          ),
          from: reportComplainProvider,
          name: r'reportComplainProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reportComplainHash,
          dependencies: ReportComplainFamily._dependencies,
          allTransitiveDependencies:
              ReportComplainFamily._allTransitiveDependencies,
          report: report,
          productId: productId,
        );

  ReportComplainProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.report,
    required this.productId,
  }) : super.internal();

  final ReportComplainModel report;
  final String productId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(ReportComplainRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReportComplainProvider._internal(
        (ref) => create(ref as ReportComplainRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        report: report,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _ReportComplainProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReportComplainProvider &&
        other.report == report &&
        other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, report.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReportComplainRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `report` of this provider.
  ReportComplainModel get report;

  /// The parameter `productId` of this provider.
  String get productId;
}

class _ReportComplainProviderElement
    extends AutoDisposeFutureProviderElement<bool> with ReportComplainRef {
  _ReportComplainProviderElement(super.provider);

  @override
  ReportComplainModel get report => (origin as ReportComplainProvider).report;
  @override
  String get productId => (origin as ReportComplainProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
