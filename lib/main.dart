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
          home:CreateNewListinScreen()
          // home: BusinessTabScreen(
          //   query: 'acer',
            // apple ois a bababaa
          // )
          // home:  VendorHomeScreen(vendorName: 'clubhousesiphal',vid: 165,),
          ),
    );
  }
}

// class TagInput extends StatefulWidget {
//   const TagInput({Key? key}) : super(key: key);

//   @override
//   _TagInputState createState() => _TagInputState();
// }

// class _TagInputState extends State<TagInput> {
//   final TextEditingController _controller = TextEditingController();
//   final List<String> _tags = [];
//   String _inputText = "";

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Stack(
//           children: [
//             // TextField with the placeholder for typing
//             TextField(
//               controller: _controller,
//               onChanged: (text) {
//                 setState(() {
//                   _inputText = text;
//                 });
//               },
//               onSubmitted: (value) {
//                 if (value.isNotEmpty) {
//                   _addTag(value);
//                 }
//               },
//               decoration: InputDecoration(
//                 hintText: "Enter tags",
//                 border: OutlineInputBorder(),
//                 contentPadding: const EdgeInsets.all(8.0),
//               ),
//             ),
//             // Positioned tags that appear inside the TextField
//             Positioned(
//               left: 8.0,
//               top: 1.0,
//               bottom: 0,
//               child: Wrap(
                
//                 spacing: 1,
//                 runSpacing: 2,
//                 children: _tags.map((tag) {
//                   return Chip(
//                     label: Text(tag),
//                     deleteIcon: const Icon(Icons.clear),
//                     onDeleted: () => _removeTag(tag),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
        
//       ],
//     );
//   }

//   // Add a tag to the list

// }