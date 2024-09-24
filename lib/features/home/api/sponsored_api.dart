import 'package:flutter/foundation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/home/model/sponsored_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

class SponsoredApi {
  final SmartClinet _clinet = SmartClinet();
  Future<SponsoredModel?> getsponsoredData() async {
    try {
      final response = await _clinet.request(
        requestType: RequestType.get,
        url: ApiConstants.sponsoredUrl,
      );

      if (kDebugMode) {
        print("===Your response is =====");
        print(response);
      }
      if (response.statusCode == 200) {
        final sponserData = SponsoredModel.fromJson(response.data);
        return sponserData;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
