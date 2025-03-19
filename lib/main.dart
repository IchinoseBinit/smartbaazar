import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/generate_qr.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/view/otp_screen.dart';
import 'package:smartbazar/features/auth/view/signup_screen.dart';
import 'package:smartbazar/features/become_brandbazaar_member/become_brandbazaar_member.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/buy_now_screen/view/buy_now_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/favourite_list/view/favourite_listing_screen.dart';
import 'package:smartbazar/features/fcm/firebase_options.dart';
import 'package:smartbazar/features/fcm/local_notifications_service.dart';
import 'package:smartbazar/features/fcm/push_notifications_service.dart';
import 'package:smartbazar/features/feed-form_screen/feed-form_screen.dart';
import 'package:smartbazar/features/hot_deals/view/hot_vew_screen.dart';
import 'package:smartbazar/features/left_arrow/view/left_arrow_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/online_transaction_record/online_transacation_record_screen.dart';
import 'package:smartbazar/features/order_details/view/order_details_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/features/scran_screen/scan_screen.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/b2b_screen/view/fakescreen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';
import 'package:smartbazar/features/sponsorship/view/apply_sponsorship_price_screen.dart';
import 'package:smartbazar/features/sponsorship/view/sponsorship_screen.dart';
import 'package:smartbazar/features/subscitption_trending/view/subscription_screen.dart';
import 'package:smartbazar/features/update_listing/api/update_listing_provider.dart';
import 'package:smartbazar/features/update_listing/view/update_listing_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_card_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/disputes_screen.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';
import 'package:smartbazar/features/vendor_details/view/my_subscription_screen.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/git.dart';
import 'package:smartbazar/payment/payment_screen.dart';
import 'package:smartbazar/payment/create_listing_payement.dart';
import 'package:smartbazar/test.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Future.wait([
    PushNotificationsService.init(), //2
    LocalNotificationService.init(), //3
  ]);

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // Set custom HttpOverrides globally
  HttpOverrides.global = MyHttpOverrides();

  runApp(const ProviderScope(child: MyApp()));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatefulWidget {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static ProviderContainer globalRef = ProviderContainer();

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Future<void> getss() async {
  //   SharedPreferences stf = await SharedPreferences.getInstance();

  //   // Get the session string safely
  //   String? sessionData = stf.getString('session');

  //   if (sessionData != null && sessionData.isNotEmpty) {
  //     try {
  //       var _a = jsonDecode(sessionData);

  //       // Ensure SmartClient.userPhoto is updated only when necessary
  //       if (SmartClient.userPhoto.isEmpty && _a['result']['photo_url'] != null) {
  //         SmartClient.userPhoto = _a['result']['photo_url'];
  //       }
  //     } catch (e) {
  //       print('Error decoding session data: $e');
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //  print('pinky ${SmartClient.}');
    return ScreenUtilInit(
      designSize: const Size(430, 690),
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.quicksand().fontFamily,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:SplashScreen()
          ),
    );
    // home: SplashScreen())); bhaktapur    5
  }
} //123 dells
// //9810443212
// Redmi note 1 has the feature of long and and things like wifi is there
// Phone

// Near darbar marga nepal
// // wwww.google.com
// //9844543322 bhaktapur
// // 12.90
// // 12.9
// //7 bhaktapur

class ImageConvert extends StatefulWidget {
  const ImageConvert({super.key});

  @override
  _ImageConvertState createState() => _ImageConvertState();
}

class _ImageConvertState extends State<ImageConvert> {
  final GlobalKey _globalKey = GlobalKey();
  String? _imagePath;

  Future<void> _captureAndSave() async {
    try {
      // Capture the widget as an image
      RenderRepaintBoundary boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      var image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List uint8List = byteData!.buffer.asUint8List();

      // Get the directory to save the image
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/screenshot.png';
      final file = File(filePath);

      // Save the image to the file
      await file.writeAsBytes(uint8List);

      setState(() {
        _imagePath = filePath; // Store the saved image path
      });

      print('Image saved to $filePath');
    } catch (e) {
      print('Error capturing or saving image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Capture Widget as Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RepaintBoundary(
              key: _globalKey,
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.blue,
                child: const Text(
                  'This is a widget to capture!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _captureAndSave,
              child: const Text('Capture and Save Image'),
            ),
            const SizedBox(height: 20),
            _imagePath != null
                ? Image.file(File(_imagePath!)) // Display the saved image
                : Container(), // Show nothing if no image is saved yet
          ],
        ),
      ),
    );
  }
}

class SavedPost {
  final String id;
  final String userId;
  final String postId;
  final String createdAt;
  final String updatedAt;

  SavedPost({
    required this.id,
    required this.userId,
    required this.postId,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Factory constructor for JSON deserialization
  factory SavedPost.fromJson(Map<String, dynamic> json) {
    return SavedPost(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      postId: json['post_id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );
  }

  /// Converts the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'post_id': postId,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}

class WidgetToImage extends ConsumerStatefulWidget {
  const WidgetToImage({super.key});

  @override
  _WidgetToImageState createState() => _WidgetToImageState();
}

class _WidgetToImageState extends ConsumerState<WidgetToImage> {
  GlobalKey globalKey = GlobalKey();
  String? _savedImagePath;

  @override
  void initState() {
    super.initState();
    // Automatically capture and save the image when the widget is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _captureAndSaveImage();
    });
  }

  Future<void> _captureAndSaveImage() async {
    try {
      // Ensure the widget is rendered before capturing
      await Future.delayed(const Duration(milliseconds: 500));

      ui.Image image = await captureWidget(globalKey);
      String filePath = await saveImageToGallery(image);

      setState(() {
        _savedImagePath = filePath;
      });

      // Set the saved image in the StateProvider
      ref.read(selectedImageProvider.notifier).state = XFile(filePath);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Image saved to gallery!')),
      );
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          if (_savedImagePath != null)
            Column(
              children: [
                const Text('Saved Image:'),
                const SizedBox(height: 10),
                Image.file(File(_savedImagePath!), height: 100),
              ],
            ),
        ],
      ),
    );
  }
}

// Future<ui.Image> captureWidget(GlobalKey key) async {
//   RenderRepaintBoundary boundary =
//       key.currentContext!.findRenderObject() as RenderRepaintBoundary;
//   ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//   return image;
// }

// Future<String> saveImageToGallery(ui.Image image) async {
//   ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//   Uint8List pngBytes = byteData!.buffer.asUint8List();

//   // Get the temporary directory
//   final directory = await getTemporaryDirectory();
//   final filePath = '${directory.path}/widget_image.png';
//   final file = File(filePath);

//   // Save the image to the file
//   await file.writeAsBytes(pngBytes);

//   // Save the image to the gallery
//   await ImageGallerySaver.saveFile(filePath);

//   return filePath;
// }
