import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';

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
        home: const SplashScreen(),
      ),
    );
  }
}

// class hohoh extends StatelessWidget {
 
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Comment Bottom Sheet')),
//       body: Center(
//         child: GestureDetector(
//           onTap: () => _showCommentBottomSheet(context),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(Icons.chat_bubble_outline, color: Colors.blue, size: 24),
//               SizedBox(width: 8),
//               Text(
//                 'Add Comment',
//                 style: TextStyle(color: Colors.blue, fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }