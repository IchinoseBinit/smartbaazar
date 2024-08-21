import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/report_complain/model/report_complain_model.dart';
import 'package:smartbazar/network_service/smart-clinet.dart';
import 'package:smartbazar/utils/request_type.dart';

part 'report_complain_api.g.dart';

@riverpod
Future<bool> reportComplain(ReportComplainRef ref, ReportComplainModel report, String productId) async {
  final SmartClinet client = SmartClinet();

  try {
    final response = await client.request(
      requestType: RequestType.postWithToken,
      url: '${ApiConstants.reportComplainUrl}/$productId/report',
      parameter: report.toJson(),
    );

    if (response.statusCode == 200 && response.data['success'] == true) {
      return true;
    } else {
      // You might want to log the response data here for debugging purposes
      print('Error: ${response.data}');
      return false;
    }
  } catch (e) {
    // You might want to log the error here
    print('Exception: $e');
    return false;
  }
}
