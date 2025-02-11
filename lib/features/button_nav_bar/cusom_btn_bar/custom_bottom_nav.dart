import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';

// Global state provider for managing the current selected index of the bottom nav bar
final currentScreenProvider = StateProvider<int>((ref) => 3);

// List of screens for navigation
final List<Widget> _screens = [
  const HomeScreen(),
 const MySubscribeAndWinPage(), 

  const MessageViewScreen(),
    const FeedScreen(),
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
    // Watch the current selected index
    final selectedIndex = ref.watch(currentScreenProvider);

    // Decide whether to show the bottom navigation bar
    bool showBottomNavBar = selectedIndex < _screens.length;

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
                print('ramk $index');
                if (index == selectedIndex) {
                  // Reset the navigation stack of the current tab if tapped again
                  _navigatorKeys[index]
                      .currentState
                      ?.popUntil((route) => route.isFirst);
                } else {
                  // Update the selected tab index
                  ref.read(currentScreenProvider.notifier).state = index;
                }
              },
            )
          : null,
    );
  }
}

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
                onTap: () {
                  onTabChanged(index);
                }, // Trigger the callback
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xff362677)
                        : const Color(0xfff5f2f6),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          isSelected ? const Color(0xff362677) : Colors.black,
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
