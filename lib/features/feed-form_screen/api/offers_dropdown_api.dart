import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/feed-form_screen/model/offers_model_dropdown.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'offers_dropdown_api.g.dart';

@riverpod
Future<OffersModelDropdown> getOffersModelDropdown(
    GetOffersModelDropdownRef ref) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getOffersUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return OffersModelDropdown.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load your dropdown value');
    }
  } catch (e) {
    // Handle or log the error here
    print('Error loading your dropdown value $e');

    throw Exception('Failed to load your dropdown value: $e');
  }
}
