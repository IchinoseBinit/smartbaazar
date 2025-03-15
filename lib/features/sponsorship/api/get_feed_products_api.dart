import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

// Riverpod Provider for fetching gift image
final getProductsFeedProvider =
    FutureProvider.family<GetGiftImage, String>((ref, id) async {
  final SmartClient client = SmartClient();
  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: "https://smartbazaar.jianjun-rnd.com.np/api/users/gift_image/$id",
    );

    if (response.statusCode == 200 && response.data != null) {
      final data = response.data['data'];
      return GetGiftImage.fromJson(data);
    }
  } catch (e) {
    print('Error fetching Gift: $e');
  }
  throw Exception("Please try again later");
});

// Model Class
class GetGiftImage {
  final String price;
  final String image;

  GetGiftImage({required this.price, required this.image});

  factory GetGiftImage.fromJson(Map<String, dynamic> json) {
    return GetGiftImage(
      price: json['price'] ?? "0",
      image: json['image'] ?? "",
    );
  }
}
