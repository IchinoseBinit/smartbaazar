// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:smartbazar/features/feed_page/view/feed_page_screen.dart';
// import 'package:smartbazar/features/home/view/home_screen.dart';
// import 'package:smartbazar/features/message/view/message_view_screen.dart';
// import 'package:smartbazar/features/vendor/view/my_subscribe_and_win_page.dart';

// class BottomNavigationScreen extends StatefulWidget {
//   const BottomNavigationScreen({super.key});

//   @override
//   _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
// }

// class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
//   int _selectedIndex = 1;

//   // List of screens for navigation
//   final List<Widget> _screens = [
//     const HomeScreen(),
//     const FeedScreen(),
//     const MessageViewScreen(),
//     const MySubscribeAndWinPage(),
//   ];

//   void _onTabChanged(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: _screens,
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         selectedIndex: _selectedIndex,
//         onTabChanged: _onTabChanged,
//       ),
//     );
//   }
// }

