// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:smartbazar/features/auth/view/login_screen.dart';
// import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/bar.dart';
// import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
// import 'package:smartbazar/features/home/view/home_screen.dart';
// import 'package:smartbazar/features/message/view/message_view_screen.dart';
// import 'package:smartbazar/features/splash_screen/splash_screen.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';
// import 'package:smartbazar/features/vendor_details/view/my_subscription_screen.dart';

// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends ConsumerWidget {
//   static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ScreenUtilInit(
//       designSize: const Size(430, 690),
//       splitScreenMode: true,
//       child: MaterialApp(
//         navigatorKey: navKey,
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           fontFamily: GoogleFonts.quicksand().fontFamily,
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: MyNavHome(),
//       ),
//     );
//   }
// }

// final iconPaths = [
//   'assets/icon/home.png',
//   'assets/icon/news.png',
//   'assets/icon/message.png',
//   'assets/icon/wifi.png',
// ];

// // Provider to manage the selected index
// final bottomNavIndexProvider =
//     StateNotifierProvider<BottomNavIndexNotifier, int>(
//   (ref) => BottomNavIndexNotifier(),
// );

// class BottomNavIndexNotifier extends StateNotifier<int> {
//   BottomNavIndexNotifier() : super(0);

//   void setIndex(int index) {
//     state = index;
//   }
// }

// class MyNavHome extends ConsumerWidget {
//   const MyNavHome({super.key});

//   static final List<GlobalKey<NavigatorState>> navigatorKeys = [
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//   ];

//   Future<bool> _systemBackButtonPressed(
//       BuildContext context, int selectedIndex) async {
//     final NavigatorState? currentNavigator =
//         navigatorKeys[selectedIndex].currentState;

//     if (currentNavigator?.canPop() == true) {
//       currentNavigator?.pop();
//       return false;
//     } else {
//       return await _showExitDialog(context) ?? false;
//     }
//   }

//   Future<bool?> _showExitDialog(BuildContext context) {
//     return showDialog<bool>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Exit App'),
//           content: const Text('Are you sure you want to exit?'),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(false),
//               child: const Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () => SystemNavigator.pop(),
//               child: const Text('Exit'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedIndex = ref.watch(bottomNavIndexProvider);

//     return WillPopScope(
//       onWillPop: () async {
//         return _systemBackButtonPressed(context, selectedIndex);
//       },
//       child: Scaffold(
//         extendBody: true,
//         resizeToAvoidBottomInset: true,
//         bottomNavigationBar: Consumer(
//           builder: (context, ref, child) {
//             final selectedIndex = ref.watch(bottomNavIndexProvider);
//             return Container(
//               margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: Colors.black, width: 1),
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: BottomNavigationBar(
//                     type: BottomNavigationBarType.fixed,
//                     elevation: 1,
//                     selectedFontSize: 0,
//                     unselectedFontSize: 0,
//                     items: List.generate(iconPaths.length, (index) {
//                       bool isSelected = index == selectedIndex;
//                       return BottomNavigationBarItem(
//                         label: '',
//                         icon: Container(
//                           height: isSelected ? 50 : 40,
//                           decoration: BoxDecoration(
//                             color: isSelected
//                                 ? Colors.black
//                                 : const Color(0xfff5f2f6),
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               color: isSelected
//                                   ? Colors.blue
//                                   : const Color(0xff362677),
//                               width: isSelected ? 3 : 1,
//                             ),
//                           ),
//                           padding: const EdgeInsets.all(10),
//                           child: Image.asset(
//                             iconPaths[index],
//                             color: isSelected ? Colors.white : Colors.black,
//                           ),
//                         ),
//                       );
//                     }),
//                     currentIndex: selectedIndex,
//                     onTap: (int index) {
//                       final currentIndex = ref.read(bottomNavIndexProvider);

//                       if (index == 0) {
//                         // If already on Home tab, reset the stack to HomeScreenA
//                         if (currentIndex == 0) {
//                           print(
//                               'Already on Home tab. Resetting stack to HomeScreenA.');
//                           navigatorKeys[0].currentState?.pushAndRemoveUntil(
//                                 MaterialPageRoute(
//                                     builder: (_) => const HomeScreenA()),
//                                 (route) => false, // Remove all previous routes
//                               );
//                         } else {
//                           print('Switching to Home tab.');
//                           ref.read(bottomNavIndexProvider.notifier).setIndex(0);
//                         }
//                       } else {
//                         // Switch to the tapped tab
//                         print('Switching to tab $index');
//                         ref
//                             .read(bottomNavIndexProvider.notifier)
//                             .setIndex(index);
//                       }
//                     }),
//               ),
//             );
//           },
//         ),
//         body: IndexedStack(
//           index: selectedIndex,
//           children: [
//             NavigatorWrapper(
//                 navigatorKey: navigatorKeys[0], child: const HomeScreen()),
//             NavigatorWrapper(
//                 navigatorKey: navigatorKeys[1], child: const FeedScreen()),
//             NavigatorWrapper(
//                 navigatorKey: navigatorKeys[2],
//                 child: const MessageViewScreen()),
//             NavigatorWrapper(
//                 navigatorKey: navigatorKeys[3],
//                 child: const MySubscriptionScreen()),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NavigatorWrapper extends StatelessWidget {
//   final GlobalKey<NavigatorState> navigatorKey;
//   final Widget child;

//   const NavigatorWrapper(
//       {super.key, required this.navigatorKey, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: navigatorKey,
//       onGenerateRoute: (RouteSettings settings) {
//         return MaterialPageRoute(builder: (_) => child);
//       },
//     );
//   }
// }

// /// Home Tab Navigator Wrapper
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings) {
//         // Define initial route and navigation for home screens
//         Widget page;
//         switch (settings.name) {
//           case '/homeB':
//             page = const HomeScreenB();
//             break;
//           case '/homeC':
//             page = const HomeScreenC();
//             break;
//           case '/':
//           default:
//             page = const HomeScreenA();
//         }

//         return MaterialPageRoute(
//           builder: (context) => page,
//         );
//       },
//     );
//   }
// }

// // Screen A (Default)
// class HomeScreenA extends StatelessWidget {
//   const HomeScreenA({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home Screen A')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('This is Home Screen A'),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/homeB');
//               },
//               child: const Text('Go to Home Screen B'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/homeC');
//               },
//               child: const Text('Go to Home Screen C'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Screen B
// class HomeScreenB extends StatelessWidget {
//   const HomeScreenB({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen B'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('This is Home Screen B'),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/homeC');
//               },
//               child: const Text('Go to Home Screen C'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Screen C
// class HomeScreenC extends StatelessWidget {
//   const HomeScreenC({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen C'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: const Center(
//         child: Text('This is Home Screen C'),
//       ),
//     );
//   }
// }

// class FeedScreen extends StatelessWidget {
//   const FeedScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Feed Screen'));
//   }
// }

// class MessageViewScreen extends StatelessWidget {
//   const MessageViewScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('Message View Screen'));
//   }
// }

// class MySubscriptionScreen extends StatelessWidget {
//   const MySubscriptionScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('My Subscription Screen'));
//   }
// }
