// // import 'package:smartbazar/constant/api_constant.dart';
// // import 'package:smartbazar/network_service/smart-clinet.dart';
// // import 'package:smartbazar/utils/request_type.dart';

// // Future<String> ForgotPasswordApi(String? phone, String? email) async {
// //   final SmartClinet _clinet = SmartClinet();
// //   try {
// //     final response = await _clinet.request(
// //       requestType: RequestType.post,
// //       url: ApiConstants.forgetPasswordUrl,
  
// //       parameter: {
// //         'email': email,
// //         'phone': "9843761808",
// //         "login":"+9779843761808"
// //       },
// //     );

// //     // Check if the response is successful and has the expected data
// //     if (response.statusCode == 200 && response.data != null) {
// //       final responseData = response.data;
      
// //       if (responseData['success'] == true) {
// //         // Return success message
// //         return responseData['message'] ?? "Password reset link sent successfully.";
// //       } else {
// //         // Return error message from server if available
// //         return responseData['message'] ?? "Failed to send password reset link.";
// //       }
// //     }
// //   } catch (e) {
// //     print('Error in ForgotPasswordApi: $e');
// //   }
  
// //   // Return default error message if something goes wrong
// //   return "An error occurred. Please try again.";
// // }
//  ----------------------------------
//    GeneralEelevatedButton(
//                   text: 'Send',
//                       onPresssed: () async {
//                     if (phoneNumberController.text.isEmpty &&
//                         emailController.text.isEmpty) {
//                       // Show a snackbar if both fields are empty
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Please fill at least one field.'),
//                         ),
//                       );
//                     } else {
//                       final message = await ForgotPasswordApi(
//                         phoneNumberController.text.isNotEmpty
//                             ? phoneNumberController.text
//                             : null,
//                         emailController.text.isNotEmpty
//                             ? emailController.text
//                             : null,
//                       );
//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         content: Text(message),
//                         duration: Duration(seconds: 2),
//                       ));
//                       // Call the forget password function if at least one field is filled
//                       // await forgetPasswordProvider.forgetPassword(
//                       //   context,
//                       //   Myphone: phoneNumberController.text,
//                       //   Myemail: emailController.text,
//                       // );
//                     }
//                   },
//                 ),