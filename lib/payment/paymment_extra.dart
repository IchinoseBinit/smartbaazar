import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';

class TestScreen extends StatelessWidget {
  final String amount;
  final bool showText;

  TestScreen({required this.amount, required this.showText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fonepay Payment')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
            elevation: 0,
            side: const BorderSide(width: 2, color: Colors.black87),
          ),
          onPressed: () async {
            var paymentResult = await makepaymentnow(context, amount, showText);
            print(
                'binod ID: ${paymentResult["id"]}, Success: ${paymentResult["success"]}');
          },
          child:
              const Text('Pay with Fonepay', style: TextStyle(color: Colors.red)),
        ),
      ),
    );
  }
}

String _generateDV(String secretKey, String message) {
  var key = utf8.encode(secretKey);
  var bytes = utf8.encode(message);
  var hmacSha512 = Hmac(sha512, key);
  return hmacSha512.convert(bytes).toString();
}

class PaymentWebView extends StatefulWidget {
  final String paymentUrl;
  final bool showText;

  PaymentWebView({required this.paymentUrl, required this.showText});

  @override
  _PaymentWebViewState createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends State<PaymentWebView> {
  late WebViewController _controller;
  bool isLoading = true;
  String? responseUrl;

  @override
  void initState() {
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
            responseUrl = url;
            if (url.contains("api_payment_verify")) {
              //here we get wherether the success or failer is there
              Navigator.pop(context, url); // Return response URL
            }
          }, 
        ),
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

Future<Map<String, dynamic>> makepaymentnow(
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
  String dv = _generateDV(secretKey, message);

  String paymentUrl = Uri.encodeFull(
      "https://dev-clientapi.fonepay.com/api/merchantRequest"
      "?PID=$merchantId&MD=$paymentMode&AMT=$amount&CRN=$currency&DT=03/06/2025"
      "&R1=Test Payment&R2=Test Remarks&DV=$dv&RU=$returnUrl&PRN=$prn");

  final String? responseUrl = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>
          PaymentWebView(paymentUrl: paymentUrl, showText: showText),
    ),
  );

  if (responseUrl != null) {
    print("DEBUG: Response URL - $responseUrl"); // Debug log

    Uri uri = Uri.parse(responseUrl);
    Map<String, String> queryParams = Uri.splitQueryString(uri.query);

    String? paymentId = queryParams["PRN"];
    bool success = queryParams["RC"] == "successful";

    print("DEBUG: Extracted PRN - $paymentId, Success - $success"); // Debug log

    return {"id": paymentId, "success": success};
  }

  return {"id": null, "success": false};
}

// 9844087777
