import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/splash_screen/splash_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_profile_screen.dart';

final currentScreenProvider = StateProvider<NavigationState>((ref) => NavigationState.splash);

enum NavigationState {
  splash,
  main,
}

final List<Widget> _screens = [
  const HomeScreen(),
  const FeedScreen(),
  const MessageViewScreen(),
  const VendorProfileScreen(),
];

class MainScreen extends ConsumerWidget {
  MainScreen({super.key});
  
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentScreen = ref.watch(currentScreenProvider);  // Watch currentScreenProvider

    if (currentScreen == NavigationState.splash) {
      return const SplashScreen(); // Show splash screen while it's in splash state
    }

    return Scaffold(
      body: IndexedStack(
        index: ref.watch(currentScreenProvider).index,  // Use currentScreen state for IndexedStack
        children: List.generate(
          _screens.length,
          (index) => Navigator(
            key: _navigatorKeys[index],
            onGenerateRoute: (_) => MaterialPageRoute(
              builder: (context) => _screens[index],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: ref.watch(currentScreenProvider).index, // Update selected index based on provider
        onTabChanged: (index) {
          // Update state when tab changes to reflect the proper screen
          ref.read(currentScreenProvider.notifier).state = NavigationState.main;
        },
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onTabChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 8.h),
      child: Card(
        elevation: 5,
        shape: const StadiumBorder(),
        color: const Color(0xfff5f2f6),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              final isSelected = index == selectedIndex;
              final iconPaths = [
                'assets/icon/home.png',
                'assets/icon/news.png',
                'assets/icon/message.png',
                'assets/icon/wifi.png',
              ];
              return GestureDetector(
                onTap: () => onTabChanged(index), // Trigger the callback
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xff362677)
                        : const Color(0xfff5f2f6),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? const Color(0xff362677) : Colors.black,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    iconPaths[index],
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
