import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/vendor_details/view/my_subscription_screen.dart';

// Providers for navigation state management
final currentScreenProvider = StateProvider<int>((ref) => 3);
final showBottomNavBarProvider = StateProvider<bool>((ref) => true);

/// Function to navigate to another page while managing the BottomNavBar state
Future<void> navigateToPage({
  required BuildContext context,
  required Widget page,
  required WidgetRef ref,
  required bool showNavBar,
}) async {
  ref.read(showBottomNavBarProvider.notifier).state = showNavBar;

  await Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));

  // Restore BottomNavBar visibility after returning
  ref.read(showBottomNavBarProvider.notifier).state = true;
}

/// List of Screens for Bottom Navigation
final List<Widget> _screens = [
  const HomeScreen(),
  const MySubscriptionScreen(),
  const MessageViewScreen(),
  const FeedScreen(),
];

/// Main Screen with Bottom Navigation Bar
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
    final selectedIndex = ref.watch(currentScreenProvider);
    final showBottomNavBar = ref.watch(showBottomNavBarProvider);

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: selectedIndex,
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
      bottomNavigationBar: showBottomNavBar
          ? Customernavbar(
              selectedIndex: selectedIndex,
              onTabChanged: (index) {
                if (index == selectedIndex) {
                  _navigatorKeys[index]
                      .currentState
                      ?.popUntil((route) => route.isFirst);
                } else {
                  ref.read(currentScreenProvider.notifier).state = index;
                }
              },
            )
          : null,
    );
  }
}

/// Custom Bottom Navigation Bar
class Customernavbar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const Customernavbar({
    required this.selectedIndex,
    required this.onTabChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconPaths = [
      'assets/icon/home.png',
      'assets/icon/news.png',
      'assets/icon/message.png',
      'assets/icon/wifi.png',
    ];

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
            children: List.generate(iconPaths.length, (index) {
              final isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () => onTabChanged(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xff362677) : const Color(0xfff5f2f6),
                    shape: BoxShape.circle,
                    border: Border.all(color: isSelected ? const Color(0xff362677) : Colors.black),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(iconPaths[index], color: isSelected ? Colors.white : Colors.black),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
