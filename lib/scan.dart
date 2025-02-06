import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:image_picker/image_picker.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage>
    with SingleTickerProviderStateMixin {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
    returnImage: true,
  );
  double _zoomScale = 1.0; // Initial zoom scale

  final ImagePicker _imagePicker = ImagePicker();
  bool _flashOn = false; // Track the flash status

  late AnimationController _animationController;
  late Animation<double> _lineAnimation;

  void _setZoom(double zoomLevel) {
    setState(() {
      _zoomScale = zoomLevel; // Set the selected zoom level
    });
  }

  Future<void> _pickAndScanQR() async {
    try {
      // Pick an image from the gallery
      final XFile? image =
          await _imagePicker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        // Get the image file path
        final String imagePath = image.path;

        // Decode the QR code from the image
        final BarcodeCapture? result =
            await MobileScannerController().analyzeImage(imagePath);

        if (result != null && result.barcodes.isNotEmpty) {
          // Show the result in a dialog
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("QR Code Found"),
              content: Text(result.barcodes.first.rawValue ?? "No value found"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("OK"),
                ),
              ],
            ),
          );
        } else {
          // Show a message if no QR code is found
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text("No QR code found in the selected image.")),
          );
        }
      }
    } catch (e) {
      // Handle errors
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to process the image: $e")),
      );
    }
  }

  // Toggle flash on/off
  void _toggleFlash() {
    setState(() {
      _flashOn = !_flashOn;
      _controller.toggleTorch(); // Toggle the flashlight
    });
  }

  @override
  void initState() {
    super.initState();
    // Initialize animation controller for line movement
    _animationController = AnimationController(
      duration: const Duration(seconds: 2), // Duration for the animation
      vsync: this,
    );

    // Define the animation that moves the line from top to bottom and back
    _lineAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut, // Animation curve for smooth movement
      ),
    )..addListener(() {
        setState(() {}); // Update the UI during animation
      });

    // Start the animation in a loop
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // The MobileScanner for QR scanning
          Center(
            child: Transform.scale(
              scale: _zoomScale, // Apply the zoom scale
              child: MobileScanner(
                controller: _controller,
                onDetect: (BarcodeCapture barcodeCapture) {
                  final List<Barcode> capture =
                      barcodeCapture.barcodes; // Access the list of barcodes
                  final Uint8List? image = barcodeCapture.image;

                  for (final captures in capture) {
                    print('Barcode found: ${captures.rawValue}');
                  }

                  if (image != null && capture.isNotEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title:
                              Text(capture.first.rawValue ?? "No value found"),
                          content: Image.memory(image),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),

          // Top-right corner close button (cross)
          Positioned(
            top: 30,
            right: 20,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context); // Close the scan page
              },
            ),
          ),

          // Text and Image in the center top between the flash and close buttons
          Positioned(
            top: 30,
            left: 60,
            right: 60,
            child: Column(
              children: [
                const Text(
                  "Scan Your QR Code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Image.asset(
                  'assets/sample_image.png',
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),

          // Box with a moving horizontal line inside
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Box with moving line
                Container(
                  width: 200, // Width of the box
                  height: 250, // Height of the box
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.white), // Border for the box
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: _lineAnimation.value *
                            180, // Calculate position based on the animation value
                        left: 0,
                        right: 0,
                        child: const Divider(
                          thickness: 2, // Thickness of the moving line
                          color: Color.fromARGB(
                              255, 190, 1, 1), // Color of the line
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Row for zoom functionality, now it has changed to container
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
                            shape: const CircleBorder(), // Perfect circular shape
                            padding: const EdgeInsets.all(10), // Smaller padding
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
                            padding: const EdgeInsets.all(10), // Smaller padding
                            backgroundColor: Colors.transparent,
                            side: BorderSide(
                              color:
                                  _zoomScale == 1.5 ? Colors.blue : Colors.white,
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
                            padding: const EdgeInsets.all(10), // Smaller padding
                            backgroundColor: Colors.transparent,
                            side: BorderSide(
                              color:
                                  _zoomScale == 2.0 ? Colors.blue : Colors.white,
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
