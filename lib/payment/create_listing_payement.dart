import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';

// A simplified Payment screen where the user can initiate payment
class practicecreate extends StatelessWidget {
  final String amount;
  final bool showText;

  practicecreate({required this.amount, required this.showText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fonepay Payment')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
            elevation: 0,
            side: BorderSide(width: 2, color: Colors.black87),
          ),
          onPressed: () async {
            bool success =
                await CrateListingIniatepayment(context, amount, showText);
            print('haka  9866543322 Success: $success');
          },
          child:
              Text('Pay with Fonepay', style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}

// Function to generate HMAC SHA-512 Hash (DV)
String generateDV(String secretKey, String message) {
  var key = utf8.encode(secretKey);
  var bytes = utf8.encode(message);
  var hmacSha512 = Hmac(sha512, key);
  return hmacSha512.convert(bytes).toString();
}

// WebView for Payment Confirmation
// WebView for Payment Confirmation
class CreateView extends StatefulWidget {
  final String paymentUrl;
  final bool showText;

  CreateView({required this.paymentUrl, required this.showText});

  @override
  _CreateViewState createState() => _CreateViewState();
}

class _CreateViewState extends State<CreateView> {
  late WebViewController _controller;
  bool isLoading = true;
  bool? _showdata;

  @override
  void initState() {
    _showdata = true;
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() => isLoading = true);
          },
          onPageFinished: (String url) {
            setState(() => isLoading = false);
            if (url.contains("api_payment_verify") &&
                url.contains("RC=successful")) {
              handlePaymentSuccess();
              _showdata = false;
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));
  }

  // Show Success Dialog and return the result 9844654433
  void handlePaymentSuccess() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: Text("Payment Successful!"),
        content: Lottie.asset('assets/images/paymentsuccess.json'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close dialog
              Navigator.pop(context, true); // Return success to previous screen
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
       if(_showdata!)   WebViewWidget(controller: _controller),
          if (isLoading) Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

// Payment Processing Logic
Future<bool> CrateListingIniatepayment(
    BuildContext context, String amount, bool showText) async {
  String merchantId = "fonepay123";
  String paymentMode = "P";
  String prn = DateTime.now().millisecondsSinceEpoch.toString();
  String currency = "NPR";
  String returnUrl =
      "https://smartbazaar.jianjun-rnd.com.np/api_payment_verify";
  String secretKey = "fonepay";

  String message =
      "$merchantId,$paymentMode,$prn,$amount,$currency,03/06/2025,Test Payment,Test Remarks,$returnUrl";
  String dv = generateDV(secretKey, message);

  String paymentUrl = Uri.encodeFull(
      "https://dev-clientapi.fonepay.com/api/merchantRequest"
      "?PID=$merchantId&MD=$paymentMode&AMT=$amount&CRN=$currency&DT=03/06/2025"
      "&R1=Test Payment&R2=Test Remarks&DV=$dv&RU=$returnUrl&PRN=$prn");

  final bool? success = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>
          CreateView(paymentUrl: paymentUrl, showText: showText),
    ),
  );

  return success ?? false; // Return the result received from the WebView
}
