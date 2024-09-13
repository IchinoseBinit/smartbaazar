import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';

part 'dropdown_providers.g.dart';

// Provider to create an instance of NewListingRepository
@riverpod
NewListingRepository newListingRepository(NewListingRepositoryRef ref) {
  return NewListingRepository();
}

// Provider for fetching type list
@riverpod
Future<List<TypeList>> typeListProvider(TypeListProviderRef ref) async {
  final repository = ref.read(newListingRepositoryProvider);
  return repository.fetchTypeList();
}

// Provider for fetching category list
@riverpod
Future<List<Category>> categoryListProvider(CategoryListProviderRef ref, {String? parentId}) async {
  final repository = ref.read(newListingRepositoryProvider);
  return repository.fetchCategoryList(parentId: parentId);
}
@riverpod
Future<List<Category>> subCategoryListProvider(SubCategoryListProviderRef ref, int parentId) async {
  final repository = ref.read(newListingRepositoryProvider);
  return repository.fetchSubCategoryList(parentId);
}

// Provider for fetching product types
@riverpod
Future<List<ProductType>> productTypeProvider(ProductTypeProviderRef ref) async {
  final repository = ref.read(newListingRepositoryProvider);
  return repository.fetchProductType();
}

// Provider for fetching city list
@riverpod
Future<List<CityList>> cityListProvider(CityListProviderRef ref, int page) async {
  final repository = ref.read(newListingRepositoryProvider);
  return repository.fetchCities(page);
}
