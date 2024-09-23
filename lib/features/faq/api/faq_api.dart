import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/faq/model/faq_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part'faq_api.g.dart';
@riverpod
Future<FAQModel >getFAQ(GetFAQRef ref ) async{
   final SmartClinet client = SmartClinet();
   try{
    final response = await client.request(
      requestType: RequestType.getWithToken,
      url: ApiConstants.getFAQUrl,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return FAQModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load FAQ');
    }
   } catch (e){
     throw Exception('Failed to load FAQ: $e');
   }

}