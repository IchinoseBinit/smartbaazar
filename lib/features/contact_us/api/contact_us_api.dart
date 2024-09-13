import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/contact_us/model/contact_us_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'contact_us_api.g.dart';

@riverpod
Future<void> postContactUs(
  PostContactUsRef ref,
  ContactUsModel contactUsModel,
) async {
  final SmartClinet client = SmartClinet();
  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: ApiConstants.getContactUsUrl,
      parameter: contactUsModel.toJson(),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send message');
    }
  } catch (e) {
    throw Exception('Failed to send message: $e');
  }
}
