// import 'package:flutter/material.dart';
// import 'package:crypto/crypto.dart';
// import 'dart:convert';
// import 'package:webview_flutter/webview_flutter.dart';

// Future<bool> PracticeScreenp(BuildContext context, String amount, String secretKey, String returnUrl) async {
//   String pid = "fonepay123"; // Replace with Merchant ID
//   String md = "P";
//   String prn = DateTime.now().millisecondsSinceEpoch.toString();
//   String crn = "NPR";
//   String dt = "03/06/2025"; // Use the current date format
//   String r1 = "Test Payment";
//   String r2 = "Test Remarks";
  
//   // Generate HMAC SHA-512 hash (DV)
//   String message = "$pid,$md,$prn,$amount,$crn,$dt,$r1,$r2,$returnUrl";
//   String dv = generateDV(secretKey, message);

//   // Create Fonepay Payment URL
//   String fonepayUrl = Uri.encodeFull(
//     "https://dev-clientapi.fonepay.com/api/merchantRequest"
//     "?PID=$pid&MD=$md&AMT=$amount&CRN=$crn&DT=$dt&R1=$r1&R2=$r2&DV=$dv&RU=$returnUrl&PRN=$prn");

//   // Navigate to WebView for Payment and wait for result
//   final bool? success = await Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => PaymentWebView(paymentUrl: fonepayUrl),
//     ),
//   );

//   // Check for payment success or failure based on the returned result
//   return success ?? false;
// }

// // Function to Generate HMAC SHA-512 Hash (DV)
// String generateDV(String secretKey, String message) {
//   var key = utf8.encode(secretKey);
//   var bytes = utf8.encode(message);
//   var hmacSha512 = Hmac(sha512, key);
//   var digest = hmacSha512.convert(bytes);
//   return digest.toString();
// }

// // WebView Screen for Payment
// class PaymentWebView extends StatefulWidget {
//   final String paymentUrl;

//   PaymentWebView({required this.paymentUrl});

//   @override
//   _PaymentWebViewState createState() => _PaymentWebViewState();
// }

// class _PaymentWebViewState extends State<PaymentWebView> {
//   late final WebViewController _controller;
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();

//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onPageStarted: (String url) {
//             setState(() => isLoading = true);
//             print("🔄 WebView Started Loading: $url");
//           },
//           onPageFinished: (String url) {
//             setState(() => isLoading = false);
//             print("✅ WebView Finished Loading: $url");

//             // Check if URL contains payment verification and RC=successful
//             if (url.contains("api_payment_verify") && url.contains("RC=successful")) {
//               print("🎉 Payment Successful!");
//               Navigator.pop(context, true); // Return success result
//             } else {
//               Navigator.pop(context, false); // Return failure result
//             }
//           },
//           onNavigationRequest: (NavigationRequest request) {
//             print("📡 Navigating to: ${request.url}");
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse(widget.paymentUrl));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           WebViewWidget(controller: _controller),
//           if (isLoading) Center(child: CircularProgressIndicator()),
//         ],
//       ),
//     );
//   }
// }
