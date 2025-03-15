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
import 'package:smartbazar/features/scran_screen/api/get_vendor_id_by_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_card_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/network_service/smart-client.dart';

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
  int? generatedvendorid;
  File? _selectedImage;
  final GlobalKey _cardKey = GlobalKey();
  BigContainer? _card;

  late AnimationController _animationController;
  late Animation<double> _lineAnimation;

  void _setZoom(double zoomLevel) {
    setState(() {
      _zoomScale = zoomLevel;
    });
    _controller.setZoomScale(zoomLevel);
  }

  void _showQRBottomSheet(String qrData) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.8, // Start at 30% of screen height
          minChildSize: 0.8, // Minimum 10% of screen height
          maxChildSize: 1.0, // Allow full screen height
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Your QR Code",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 200.h,
                        padding: const EdgeInsets.all(2),
                        width: 900.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Image.network(qrData),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Close"),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
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

  String? id;

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
          _showDialog(result.barcodes.first.rawValue ?? "No value found", ref);
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

  // Future<void> _getdetails(String _id) async {

  // }

  void _showDialog(String message, WidgetRef ref) {
    // Extract the last part of the URL (the ID)
    id = message.split('/').last; // Extracts "9" from "www.smartbajar.com/9"

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("QR Code Found"),
        content: Text(
            "Scanned: $message\nExtracted ID: $id"), // Show extracted ID for debugging
        actions: [
          TextButton(
            onPressed: () async {
              await GiveVendorid().givemeid(id!).then(
                (value) {
                //  print('bibash ${value}');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VendorHomeScreen(
                            vid: int.tryParse(value)!, vendorName: id!),
                      ));
                },
              );
              // print('kala ${genid}');
              // Navigator.pop(context); // Close this dialog
              showcard(ref, id!); // Call showcard with the extracted ID
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void showcard(WidgetRef ref, String name) {
    GiveVendorid().givemeid(name).then(
      (value) {
        generatedvendorid = int.tryParse(value);
      },
    );

    if (generatedvendorid != null) {
      ref.read(getVendorCardProvider(generatedvendorid!)).whenData((value) {
        /// 2. Update `_card` inside `setState`
        setState(() {
          _card = BigContainer(
            membershipid: int.tryParse(value.data?.vendor_card?.membership_id?? '1')?? 1,
            onconnectclicked: () {
              
            },
            ondoenload: () {},
            onsubscribed: () {},
            key: GlobalKey(),
            lat: double.tryParse(value.data!.vendor_card!.latitude ?? '0')!,
            long: double.tryParse(value.data!.vendor_card!.longitude ?? '0')!,
            vendorid: value.data!.vendor_card!.membership_id!,
            title: value.data!.vendor_card!.name!,
            logo: value.data!.vendor_card!.photo!,
            contact: value.data!.vendor_card!.phone!,
            storyCount: value.data!.vendor_card!.storycount.toString(),
            membershipTitle: value.data!.vendor_card!.membership_title!,
            storycount: value.data!.vendor_card!.storycount.toString(),
            total_connections: value.data!.vendor_card!.subscribers.toString(),
            total_prize_worth: value.data!.vendor_card!.prize_worth.toString(),
            location: value.data!.vendor_card!.nearestbranch ?? '',
            Cnumber: value.data!.vendor_card!.phone!,
            issubbed: value.data!.vendor_card!.subscribed == 'subscribed',
            memebertitle: value.data!.vendor_card!.membership_title!,
          );
        });

        /// 3. Show the dialog **after** updating `_card`
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            contentPadding: EdgeInsets.zero,
            titlePadding: const EdgeInsets.symmetric(horizontal: 5),
            actionsPadding: EdgeInsets.zero,
            content: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VendorHomeScreen(
                          vid: int.tryParse(generatedvendorid.toString())!,
                          vendorName: ''),
                    ));
              },
              child: _card ?? const Center(child: CircularProgressIndicator()),
            ), // Show loader if null
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("OK"),
              ),
            ],
          ),
        );
      });
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final showmyqr = ref.watch(generateMyQRProvider(SmartClient.userPhoto));

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
                    capture.barcodes.first.rawValue ?? "No value found", ref);
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
                          decoration: const BoxDecoration(
                              color: Colors.grey, shape: BoxShape.circle),
                          child: const Icon(
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
                              const BoxConstraints(), // Ensures no unnecessary space
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        horizontal: 7, vertical: 8), // Smaller padding
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
                                horizontal: 7, vertical: 6), // Smaller padding
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
                showmyqr.when(
                  data: (data) {
                    return GestureDetector(
                      onVerticalDragStart: (details) {
                        _showQRBottomSheet(
                            data); // Pass `data` to your function
                      },
                      child: Container(
                        height: 50,
                        color: Colors.black.withOpacity(0.6),
                        alignment: Alignment.center,
                        child: const Icon(Icons.keyboard_arrow_up,
                            color: Colors.white, size: 60),
                      ),
                    );
                  },
                  error: (error, stackTrace) =>
                      Center(child: Text("Internet issue check your internet")),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
