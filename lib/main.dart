import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/api/create_new_listing_providers.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';
import 'package:smartbazar/features/product_screen/view/product_screen.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';

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
          home: HomeScreen()
          // HomeScreen()

          // home: BusinessTabScreen(
          //   query: 'acer',
          // apple ois a bababaa
          // )
          // home:  VendorHomeScreen(vendorName: 'clubhousesiphal',vid: 165,),
          ),
    );
  }
}


// class YourWidget extends StatefulWidget {
//   @override
//   _YourWidgetState createState() => _YourWidgetState();
// }

// class _YourWidgetState extends State<YourWidget>
//     with SingleTickerProviderStateMixin {
//   late TabController dynamictabController;

//   @override
//   void initState() {
//     super.initState();
//     dynamictabController = TabController(length: 3, vsync: this);

//     // Add a listener to rebuild the widget on tab change
//     dynamictabController.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     dynamictabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Calculate dynamic height based on the current tab
//     double dynamicHeight;
//     if (dynamictabController.index == 1) {
//       dynamicHeight = 400; // Height for second tab
//     } else if (dynamictabController.index == 2) {
//       dynamicHeight = 500; // Height for third tab
//     } else {
//       dynamicHeight = 100; // Default height for first tab
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dynamic Height Test'),
//         bottom: TabBar(
//           controller: dynamictabController,
//           tabs: const [
//             Tab(text: "First Tab"),
//             Tab(text: "Second Tab"),
//             Tab(text: "Third Tab"),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           AnimatedContainer(
//             duration: const Duration(milliseconds: 300),
//             height: dynamicHeight, // Use dynamic height
//             width: double.infinity,
//             color: Colors.blueGrey[100], // Visual aid to see height
//             child: TabBarView(
//               controller: dynamictabController,
//               children: [
//                 Center(child: Text("Content for First Tab")),
//                 Center(child: Text("Content for Second Tab")),
//                 Center(child: Text("Content for Third Tab")),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text(
//                 "This space is outside the AnimatedContainer.",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
