import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/bar.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp())); // ProviderScope to allow Riverpod to work
}

class MyApp extends ConsumerWidget {  // Change to ConsumerWidget
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static ProviderContainer globalRef = ProviderContainer();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Here you can use ref to watch providers, for example:
    // final currentScreen = ref.watch(currentScreenProvider);
    
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
        // You can replace the home screen dynamically based on some condition like:
        // home: currentScreen == NavigationState.splash ? const SplashScreen() : const HomeScreen(),
        home:  MainScreen(),  // Example: Home Screen or Splash Screen depending on your logic
      ),
    );
  }
}
