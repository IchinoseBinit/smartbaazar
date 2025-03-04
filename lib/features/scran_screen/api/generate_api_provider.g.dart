// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateMyQRHash() => r'77deabe0263f8ad9d4c0a94377ab8b6895ac46c5';

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

/// See also [generateMyQR].
@ProviderFor(generateMyQR)
const generateMyQRProvider = GenerateMyQRFamily();

/// See also [generateMyQR].
class GenerateMyQRFamily extends Family<AsyncValue<String>> {
  /// See also [generateMyQR].
  const GenerateMyQRFamily();

  /// See also [generateMyQR].
  GenerateMyQRProvider call(
    String imagePath,
  ) {
    return GenerateMyQRProvider(
      imagePath,
    );
  }

  @override
  GenerateMyQRProvider getProviderOverride(
    covariant GenerateMyQRProvider provider,
  ) {
    return call(
      provider.imagePath,
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
  String? get name => r'generateMyQRProvider';
}

/// See also [generateMyQR].
class GenerateMyQRProvider extends AutoDisposeFutureProvider<String> {
  /// See also [generateMyQR].
  GenerateMyQRProvider(
    String imagePath,
  ) : this._internal(
          (ref) => generateMyQR(
            ref as GenerateMyQRRef,
            imagePath,
          ),
          from: generateMyQRProvider,
          name: r'generateMyQRProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateMyQRHash,
          dependencies: GenerateMyQRFamily._dependencies,
          allTransitiveDependencies:
              GenerateMyQRFamily._allTransitiveDependencies,
          imagePath: imagePath,
        );

  GenerateMyQRProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imagePath,
  }) : super.internal();

  final String imagePath;

  @override
  Override overrideWith(
    FutureOr<String> Function(GenerateMyQRRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateMyQRProvider._internal(
        (ref) => create(ref as GenerateMyQRRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imagePath: imagePath,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GenerateMyQRProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateMyQRProvider && other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imagePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateMyQRRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `imagePath` of this provider.
  String get imagePath;
}

class _GenerateMyQRProviderElement
    extends AutoDisposeFutureProviderElement<String> with GenerateMyQRRef {
  _GenerateMyQRProviderElement(super.provider);

  @override
  String get imagePath => (origin as GenerateMyQRProvider).imagePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
