import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

//

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  MobileScannerController cameraController = MobileScannerController();
  String? _scannedData; // Scanned QR code data

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  // Scan QR code from gallery
  Future<void> _scanQRFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final File file = File(image.path);
      final BarcodeCapture? capture =
          await cameraController.analyzeImage(file.path);

      if (capture != null && capture.barcodes.isNotEmpty) {
        setState(() {
          _scannedData = capture.barcodes.first.rawValue;
        });
        print('Scanned QR Code from Gallery: $_scannedData');
      } else {
        setState(() {
          _scannedData = 'No QR code found in the image.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
        actions: [
          IconButton(
            icon: const Icon(Icons.photo_library),
            onPressed: _scanQRFromGallery,
          ),
        ],
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.info_outline),
              Icon(Icons.close),
            ],
          ),
          Row(
            children: [
              Image.asset("assets/images/Smartbazaar-Icon-for-QR.png",
              height: 30,
              width: 40,
              ),
              const Text("Smartbazaar"),
            ],
          ),
          Expanded(
            flex: 5,
            child: MobileScanner(
              controller: cameraController,
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                for (final barcode in barcodes) {
                  setState(() {
                    _scannedData = barcode.rawValue;
                  });
                  print('Scanned QR Code: $_scannedData');
                }
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                _scannedData ?? 'Scan a QR code',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
