// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:smartbazar/constant/api_constant.dart';
// import 'package:smartbazar/features/auth/model/ad_model.dart';
// import 'package:smartbazar/network_service/smart-clinet.dart';
// import 'package:smartbazar/utils/request_type.dart';

// final adsProvider = FutureProvider<List<AdModel>>((ref) async {
//   final SmartClinet = SmartClinet(); // Initialize your SmartClinet
//   final response = await SmartClinet.request(
//     requestType: RequestType.get,
//     url: ApiConstants.adsLoadingUrl,
//   );

//   final List adsJson = response.data['ads'];
//   return adsJson.map((json) => AdModel.fromJson(json)).toList();
// });
