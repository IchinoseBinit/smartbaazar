// import 'dart:io';
// import 'dart:typed_data';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:smartbazar/features/grocessary_screen/api/generate_qr_api.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_card_api.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

// class GenerateQRScreen extends ConsumerStatefulWidget {
//   final int vid;
//   final String vendorName;

//   const GenerateQRScreen({super.key, required this.vid, required this.vendorName});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _GenerateQRScreenState();
// }

// class _GenerateQRScreenState extends ConsumerState<GenerateQRScreen> {
//   File? _selectedImage;
//   final GlobalKey _cardKey = GlobalKey();

//   // Function to capture widget as an image and show in dialog
//   Future<void> _captureWidgetAndShowDialog() async {
//     try {
//       await Future.delayed(const Duration(milliseconds: 300)); // Ensure UI is built

//       RenderRepaintBoundary boundary = _cardKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//       ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//       ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//       if (byteData == null) return;

//       Uint8List pngBytes = byteData.buffer.asUint8List();
//       final tempDir = await getTemporaryDirectory();
//       File file = File('${tempDir.path}/card_image.png');
//       await file.writeAsBytes(pngBytes);

//       setState(() {
//         _selectedImage = file;
//       });

//       // Show the captured image in a dialog
//       if (mounted) {
//         showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: const Text('Captured Image'),
//               content: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Image.file(file, height: 200, width: 200, fit: BoxFit.cover),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                       _generateQRCode();
//                     },
//                     child: const Text('Generate QR Code'),
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       }
//     } catch (e) {
//       print("Error capturing widget: $e");
//     }
//   }

//   // Function to generate QR code
//   void _generateQRCode() {
//     setState(() {
//       // Triggers QR code generation
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final vendorCardData = ref.watch(getVendorCardProvider(widget.vid));

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.vendorName),
//         backgroundColor: Colors.blue,
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(height: 20),
//               Text(
//                 'Vendor ID: ${widget.vid}',
//                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               vendorCardData.when(
//                 data: (value) {
//                   return Column(
//                     children: [
//                       SizedBox(
//                         child: RepaintBoundary(
//                           key: _cardKey,
//                           child: BigContainer(
//                             ondoenload: () {},
//                             onsubscribed: () {},
//                             lat: double.tryParse(value.data!.vendor_card!.latitude ?? '0')!,
//                             long: double.tryParse(value.data!.vendor_card!.longitude ?? '0')!,
//                             id: value.data!.vendor_card!.membership_id!,
//                             title: value.data!.vendor_card!.name!,
//                             logo: value.data!.vendor_card!.photo!,
//                             contact: value.data!.vendor_card!.phone!,
//                             storyCount: value.data!.vendor_card!.storycount.toString(),
//                             membershipTitle: value.data!.vendor_card!.membership_title!,
//                             storycount: value.data!.vendor_card!.storycount.toString(),
//                             total_connections: value.data!.vendor_card!.subscribers.toString(),
//                             total_prize_worth: value.data!.vendor_card!.prize_worth.toString(),
//                             location: value.data!.vendor_card!.nearestbranch ?? '',
//                             Cnumber: value.data!.vendor_card!.phone!,
//                             issubbed: value.data!.vendor_card!.subscribed == 'subscribed',
//                             memebertitle: value.data!.vendor_card!.membership_title!,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: _captureWidgetAndShowDialog,
//                         child: const Text('Capture Card as Image'),
//                       ),
//                     ],
//                   );
//                 },
//                 loading: () => const CircularProgressIndicator(),
//                 error: (error, stackTrace) => Text('Error: $error'),
//               ),
//               if (_selectedImage != null)
//                 Consumer(
//                   builder: (context, ref, _) {
//                     final qrCode = ref.watch(generateMyQRProvider(_selectedImage!));
        
//                     return qrCode.when(
//                       data: (imageUrl) {
//                         return Image.network(
//                           imageUrl,
//                           height: 200,
//                           width: 200,
//                           fit: BoxFit.cover,
//                         );
//                       },
//                       error: (error, stackTrace) {
//                         return Text('Error: $error');
//                       },
//                       loading: () => const CircularProgressIndicator(),
//                     );
//                   },
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
