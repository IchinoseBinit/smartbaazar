import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'product_details_provider.g.dart';

@riverpod
Future<PostModel> productDetails(ProductDetailsRef ref, String id) async {
  // final client = Dio();
//

  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: "${ApiConstants.getProductDetails}/$id?detailed=1",
    );

// print("bibash Details: ${response.data['result']['user_details']}");
    // // print("bibash ${PostModel.fromJson(response.data['result']['pictures'])}");
    print("bibashk ${PostModel.fromJson(response.data).widgetSimilarPosts!.posts.data.first.id}");
    return PostModel.fromJson(response.data);
  } catch (e) {
    print("errork is $e");
    return const PostModel(
      widgetSimilarPosts:null ,
        success: true, message: 'message', result: null, extra: null);
  }
}
