// import "dart:async";
// import "dart:convert";
// import "dart:io";

// import "package:dio/dio.dart";

// bool caughtException = false;

// class CustomException implements Exception {
//   late final String message;

//   CustomException(this.message);
// }

// CustomException getCustomException(dynamic ex) {
//   if (ex is DioException) {
//     var exceptionMessage = "";
//     try {
//       if (ex.response != null) {
//         if (ex.response!.data.runtimeType == String) {
//           var decodedMessage = jsonDecode(ex.response?.data);
//           if (decodedMessage["message"] != null &&
//               decodedMessage["message"].toString().isNotEmpty) {
//             exceptionMessage = decodedMessage["message"];
//           } else {
//             exceptionMessage = decodedMessage["error"] ??
//                 decodedMessage["responseData"]["errors"][0]["errorMessage"];
//           }
//         } else {
//           String? errorMessage;
//           try {
//             errorMessage =
//                 (ex.response!.data["errors"][0] as Map<String, dynamic>)
//                     .values
//                     .first;
//           } catch (e) {
//             errorMessage = null;
//           }

//           return CustomException(
//             errorMessage ??
//                 ex.response!.data["message"] ??
//                 ex.response!.data["error"] ??
//                 ex.response!.data["responseData"]["errors"][0]["errorMessage"],
//           );
//         }
//       } else if (ex.error.runtimeType == SocketException) {
//         return CustomException("Internet not available! Please try again.");
//       } else {
//         exceptionMessage = "Server Error! Please try again.";
//       }
//     } catch (ex) {
//       exceptionMessage = "Server Error! Please try again.";
//     }
//     return CustomException(exceptionMessage);
//   } else if (ex.runtimeType == String) {
//     return CustomException(ex);
//   } else if (ex.runtimeType == TimeoutException) {
//     return CustomException("Connection timed out! Please try again.");
//   }
//   return CustomException("Server Error! Please try again.");
// }
