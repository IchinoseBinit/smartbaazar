import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/feed-form_screen/feed-form_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/get_story_provider.dart';
import 'package:smartbazar/features/home/view/fake.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/view/hot_vew_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/my_order/view/my_order_screen.dart';
import 'package:smartbazar/features/online_transaction_record/online_transacation_record_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/model/my_subscribe_and_win_model.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';
import 'package:smartbazar/features/vendor/view/update_listing_screen.dart';

void main() {
  const FlutterErrorDetails(exception: PrintHandler);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static ProviderContainer globalRef = ProviderContainer();
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 690),
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // textTheme: GoogleFonts.quicksandTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          fontFamily: GoogleFonts.quicksand().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: UsedScreen()
        // home: const HomeScreen(),
        // home: UsedScreen(),
        // home: VendorHomeScreen(vendorName: 'techstore', vid: 9),
        // home: ProductDetailScreen(productId: '896')
        // home: GrocarysScreen(),
        // home: JobssScreen(),
        // home: ServicesScreen(),
        home:  SplashScreen()
      ),
    );
  }
}
