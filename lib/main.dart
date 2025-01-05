import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/features/b2b_screen/view/b2b_screen.dart';
import 'package:smartbazar/features/brand_bazar/brand_bazar_screen.dart';
import 'package:smartbazar/features/bussiness_tab_screen/view/business_tab_screen.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_screen.dart';
import 'package:smartbazar/features/events_screen/view/events_screen.dart';
import 'package:smartbazar/features/grocessary_screen/view/grocary_screen.dart';
import 'package:smartbazar/features/home/api/get_story_provider.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/hot_deals/view/hot_vew_screen.dart';
import 'package:smartbazar/features/jobs_screen/view/jobs_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/features/proceed_pay/view/proceed_to_pay_screen.dart';
import 'package:smartbazar/features/services_screen/service_screen.dart';
import 'package:smartbazar/features/socio_screen/view/socio_screen.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';
import 'package:smartbazar/features/used_screen/view/used_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';

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
          home: SplashScreen()),
    );
  }
}

// class DynamicRowExample extends StatefulWidget {
//   @override
//   _DynamicRowExampleState createState() => _DynamicRowExampleState();
// }

// class _DynamicRowExampleState extends State<DynamicRowExample> {
//   // List to store data for each row
//   List<Map<String, String>> rows = [{}];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dynamic Rows Example'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//           decoration: BoxDecoration(
//             color: const Color(0xffFDFDFE),
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.grey, width: 1),
//           ),
//           child: Column(
//             children: [
//               // Header for Pieces, Rate/piece, and Total
//               Row(
//                 children: [
//                   Expanded(
//                     child: Center(
//                       child: Text(
//                         "Pieces",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Center(
//                       child: Text(
//                         "Rate/piece",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Center(
//                       child: Text(
//                         "Total",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),

//               // Dynamic Rows
//               ...rows.asMap().entries.map((entry) {
//                 int index = entry.key;
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 5.0),
//                   child: Row(
//                     children: [
//                       // Pieces TextField
//                       Expanded(
//                         child: Material(
//                           elevation: 2,
//                           borderRadius: BorderRadius.circular(6),
//                           child: Container(
//                             height: 30.0,
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(6),
//                               color: const Color(0xffFDFDFE),
//                             ),
//                             child: TextField(
//                               onChanged: (value) {
//                                 rows[index]['pieces'] = value;
//                               },
//                               style: const TextStyle(
//                                   fontSize: 14, color: Colors.black),
//                               decoration: const InputDecoration(
//                                 border: InputBorder.none,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 6),
//                       // Rate/piece TextField
//                       Expanded(
//                         child: Material(
//                           elevation: 2,
//                           borderRadius: BorderRadius.circular(6),
//                           child: Container(
//                             height: 30.0,
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(6),
//                               color: const Color(0xffFDFDFE),
//                             ),
//                             child: TextField(
//                               onChanged: (value) {
//                                 rows[index]['rate'] = value;
//                               },
//                               style: const TextStyle(
//                                   fontSize: 14, color: Colors.black),
//                               decoration: const InputDecoration(
//                                 border: InputBorder.none,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 6),
//                       // Total TextField
//                       Expanded(
//                         child: Material(
//                           elevation: 2,
//                           borderRadius: BorderRadius.circular(6),
//                           child: Container(
//                             height: 30.0,
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(6),
//                               color: const Color(0xffFDFDFE),
//                             ),
//                             child: TextField(
//                               onChanged: (value) {
//                                 rows[index]['total'] = value;
//                               },
//                               style: const TextStyle(
//                                   fontSize: 14, color: Colors.black),
//                               decoration: const InputDecoration(
//                                 border: InputBorder.none,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       // Add/Delete buttons
//                       Row(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 rows.add({});
//                               });
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.all(4),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(color: Colors.grey),
//                               ),
//                               child: const CircleAvatar(
//                                 backgroundColor: Color(0xff362677),
//                                 radius: 12,
//                                 child: Icon(
//                                   Icons.add,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 10),
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 if (rows.length > 1) {
//                                   rows.removeAt(index);
//                                 }
//                               });
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.all(4),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(color: Colors.grey),
//                               ),
//                               child: const CircleAvatar(
//                                 backgroundColor: Color(0xff362677),
//                                 radius: 12,
//                                 child: Icon(
//                                   Icons.delete,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
