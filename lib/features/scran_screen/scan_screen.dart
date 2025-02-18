import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/scran_screen/api/generate_api_provider.dart';

class ScanScreen extends ConsumerStatefulWidget {
  const ScanScreen({super.key});

  @override
  ConsumerState<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends ConsumerState<ScanScreen>
    with SingleTickerProviderStateMixin {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
    returnImage: true,
  );
  final ImagePicker _imagePicker = ImagePicker();
  bool _flashOn = false;
  double _zoomScale = 1.0;
  File? _selectedImage;
  final GlobalKey _cardKey = GlobalKey();

  late AnimationController _animationController;
  late Animation<double> _lineAnimation;

  void _setZoom(double zoomLevel) {
    setState(() {
      _zoomScale = zoomLevel;
    });
  }

  Future<void> _captureWidgetAndShowDialog() async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));

      RenderRepaintBoundary boundary =
          _cardKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData == null) return;

      Uint8List pngBytes = byteData.buffer.asUint8List();
      final tempDir = await getTemporaryDirectory();
      File file = File('${tempDir.path}/card_image.png');
      await file.writeAsBytes(pngBytes);

      setState(() {
        _selectedImage = file;
      });

      if (mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Captured Image'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.file(file, height: 200, width: 200, fit: BoxFit.cover),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _generateQRCode();
                    },
                    child: const Text('Generate QR Code'),
                  ),
                ],
              ),
            );
          },
        );
      }
    } catch (e) {
      print("Error capturing widget: $e");
    }
  }

  void _generateQRCode() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _lineAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {});
      });

    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _controller.dispose();
    super.dispose();
  }

  Future<void> _pickAndScanQR() async {
    try {
      final XFile? image =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        final BarcodeCapture? result =
            await MobileScannerController().analyzeImage(image.path);

        if (result != null && result.barcodes.isNotEmpty) {
          _showDialog(result.barcodes.first.rawValue ?? "No value found");
        } else {
          _showSnackBar("No QR code found in the selected image.");
        }
      }
    } catch (e) {
      _showSnackBar("Failed to process the image: $e");
    }
  }

  void _toggleFlash() {
    setState(() {
      _flashOn = !_flashOn;
      _controller.toggleTorch();
    });
  }

  void _showDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("QR Code Found"),
        content: Text(message),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text("OK")),
        ],
      ),
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final myqr = ref.watch(generateMyQRProvider(
        'https://smartbazaar.jianjun-rnd.com.np/images/user.jpg'));
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Full-Screen QR Scanner
          MobileScanner(
            controller: _controller,
            onDetect: (capture) {
              if (capture.barcodes.isNotEmpty) {
                _showDialog(
                    capture.barcodes.first.rawValue ?? "No value found");
              }
            },
          ),

          // Overlay UI
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey, shape: BoxShape.circle),
                          child: Icon(
                            Icons.info_outline_rounded,
                            color: Colors.white,
                          )),
                      Container(
                        alignment: Alignment.center,
                        height: 25.h, // Adjusted for better visibility
                        width: 25.w,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero, // Removes extra padding
                          constraints:
                              BoxConstraints(), // Ensures no unnecessary space
                          iconSize: 14.sp, // Responsive icon size
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Center(
                        child: Image.asset(
                      'assets/images/appLogo.png',
                      color: ColorConstant.whiteColor,
                    )),
                    const SizedBox(height: 3),
                    const Text(
                      "SCAN>SHOP>WIN",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          color: Colors.amber),
                    )
                  ],
                ),

                // QR Scanner Frame
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: _lineAnimation.value * 250, // Animated moving line
                        left: 0,
                        right: 0,
                        child: const Divider(
                          thickness: 2,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Bottom Controls (Zoom, Flash, Add QR)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black
                          .withOpacity(0.6), // Semi-transparent background
                      borderRadius:
                          BorderRadius.circular(12), // Smaller rounded edges
                      border: Border.all(
                        color: Colors.white, // White border
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 8), // Smaller padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly, // Even spacing between elements
                      children: [
                        ElevatedButton(
                          onPressed: () => _setZoom(1.0), // Set zoom to 1x
                          style: ElevatedButton.styleFrom(
                            shape:
                                const CircleBorder(), // Perfect circular shape
                            padding:
                                const EdgeInsets.all(10), // Smaller padding
                            backgroundColor:
                                Colors.transparent, // Transparent background
                            side: BorderSide(
                              color: _zoomScale == 1.0
                                  ? Colors.blue
                                  : Colors.white, // Dynamic stroke color
                              width: 1.5, // Thinner stroke width
                            ),
                            elevation: 0, // Remove shadow
                          ),
                          child: const Text(
                            "1x",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12), // Smaller font size
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => _setZoom(1.5), // Set zoom to 1.5x
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding:
                                const EdgeInsets.all(10), // Smaller padding
                            backgroundColor: Colors.transparent,
                            side: BorderSide(
                              color: _zoomScale == 1.5
                                  ? Colors.blue
                                  : Colors.white,
                              width: 1.5,
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            "1.5x",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12), // Smaller font size
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => _setZoom(2.0), // Set zoom to 2x
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding:
                                const EdgeInsets.all(10), // Smaller padding
                            backgroundColor: Colors.transparent,
                            side: BorderSide(
                              color: _zoomScale == 2.0
                                  ? Colors.blue
                                  : Colors.white,
                              width: 1.5,
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            "2x",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12), // Smaller font size
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            _flashOn ? Icons.flash_on : Icons.flash_off,
                            color: Colors.white,
                            size: 20, // Smaller icon size
                          ),
                          onPressed: _toggleFlash,
                        ),
                        TextButton(
                          onPressed: _pickAndScanQR,
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 6), // Smaller padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "+ Add QR",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12), // Smaller font size
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                myqr.when(
                  data: (data) {
                    return Image.network(data);
                  },
                  error: (error, stackTrace) {
                    return Text('no internet ');
                  },
                  loading: () => CircularProgressIndicator(),
                )
                // if (_selectedImage != null)
                //   Consumer(
                //     builder: (context, ref, _) {
                //       final qrCode =
                //           ref.watch(generateMyQRProvider(_selectedImage!));

                //       return qrCode.when(
                //         data: (imageUrl) {
                //           return Image.network(
                //             imageUrl,
                //             height: 200,
                //             width: 200,
                //             fit: BoxFit.cover,
                //           );
                //         },
                //         error: (error, stackTrace) {
                //           return Text('Error: $error');
                //         },
                //         loading: () => const CircularProgressIndicator(),
                //       );
                //     },
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
