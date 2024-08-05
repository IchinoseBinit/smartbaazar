import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';

part 'product_details_provider.g.dart';

@riverpod
Future<ProductDetailsModel> productDetails(
    ProductDetailsRef ref, String id) async {
  final client = Dio();

  try {
    final response = await client.get(
      "${ApiConstants.getProductDetails}/$id?detailed=1",
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'accept': '*/*',
          'Connection': 'Keep-Alive',
          'X-AppApiToken': 'Yala@Techies_Nepal',
        },
      ),
    );

    print('Response data: ${response.data}');

    if (response.statusCode == 200) {
      final result = response.data['result'];
      final extra = response.data['extra'];

      // Handling similar items
      List<SimilarItems>? similarItemsList;
      if (response.data.containsKey('widgetSimilarPosts') &&
          response.data['widgetSimilarPosts']?['posts']?['data'] != null) {
        final similarData =
            response.data['widgetSimilarPosts']['posts']['data'];
        if (similarData is List) {
          similarItemsList = similarData.map((e) {
            final itemJson = e as Map<String, dynamic>;
            final pictures = (itemJson['pictures'] as List<dynamic>?)
                    ?.map((p) => Picture.fromJson(p as Map<String, dynamic>))
                    .toList() ??
                [];

            return SimilarItems(
              id: itemJson['id'],
              title: itemJson['title'],
              price: itemJson['price'],
              pictures: pictures,
            );
          }).toList();
        }
      }

      // Handling color options
      List<ColorOption>? colorOptions;
      final colorField = extra?['fields']?['original']?['result'];
      if (colorField != null && colorField is List && colorField.isNotEmpty) {
        // Check if the colorField contains elements and then map them
        colorOptions = colorField
            .map((e) {
              if (e is Map<String, dynamic>) {
                return ColorOption.fromJson(e);
              } else {
                return null; // Or handle the unexpected type
              }
            })
            .whereType<ColorOption>()
            .toList();
      } else {
        print("xaina color");
      }

      // Creating the final product model
      final product = ProductDetailsModel.fromJson(result).copyWith(
        colorOptions: colorOptions,
        widgetSimilarPosts: similarItemsList,
      );
      return product;
    } else {
      throw Exception('Failed to load product details');
    }
  } catch (e) {
    print('Error fetching product details: $e');
    throw Exception('Error fetching product details');
  }
}
