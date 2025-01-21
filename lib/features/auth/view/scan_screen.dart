import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanScreen extends ConsumerStatefulWidget {
  const ScanScreen({super.key});

  @override
  ConsumerState<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends ConsumerState<ScanScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  // Barcode? result;
  // QRViewController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Expanded(
        //     flex: 9,
        //     child: QRView(key: qrKey, onQRViewCreated: _onQRViewCreated)),
        SizedBox(height: 10.h,),
        // Expanded(
        //     flex: 1,
        //     child: (result != null)
        //         ? Text("BarCode Data : ${result!.code} ")
        //         : const Text("Scan a Code",
        //         style: TextStyle(
        //           color: Colors.black,
        //           fontWeight: FontWeight.bold,
        //           fontSize: 20
        //         ),
        //         ))
      ],
    );
  }

  // void _onQRViewCreated(QRViewController controller) {
  //   this.controller = controller;
  //   controller.scannedDataStream.listen(
  //     (event) {
  //       setState(() {
  //         result = event;
  //       });
  //     },
  //   );
  // }
}
