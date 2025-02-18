import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  final ValueNotifier<bool> showSideBar = ValueNotifier(false);
  final bool isSectionsVisible = true;
  final String userPhoto =
      "https://via.placeholder.com/150"; // Placeholder image
  bool isSliverAppBarVisible = true; // Track the visibility of SliverAppBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            // Check if the SliverAppBar is completely off-screen
            if (notification.metrics.pixels > 100) {
              if (isSliverAppBarVisible) {
                setState(() {
                  isSliverAppBarVisible = false;
                });
                print("SliverAppBar disappeared");
              }
            } else {
              if (!isSliverAppBarVisible) {
                setState(() {
                  isSliverAppBarVisible = true;
                });
                print("SliverAppBar visible");
              }
            }
          }
          return true; // Allow the scroll event to propagate
        },
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  floating: false,
                  delegate: _StickyHeaderDelegate(filteredSuggestions: []),
                ),
                const SliverAppBar(
                  pinned: false,
                  flexibleSpace: SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: ColoredBox(color: Colors.red),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(title: Text('Item $index')),
                    childCount: 50,
                  ),
                ),
              ],
            ),

            // Sidebar Floating Button
            ValueListenableBuilder<bool>(
              valueListenable: showSideBar,
              builder: (context, value, child) {
                return Positioned(
                  top: 300,
                  right: 0,
                  child: value ? _buildSidebar() : _buildFloatingButton(),
                );
              },
            ),

            // Search Suggestions Box (Placeholder)
            Positioned(
              top: 65,
              left: 48,
              child: Container(
                width: MediaQuery.of(context).size.width - 48, // Add width constraint
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Text("index $index");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Floating button to toggle the sidebar
  Widget _buildFloatingButton() {
    return InkWell(
      onTap: () {
        showSideBar.value = true;
      },
      child: Hero(
        tag: 'profileHero',
        child: Container(
          margin: EdgeInsets.only(right: 3.w),
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 0.7),
          ),
          child: CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(userPhoto),
          ),
        ),
      ),
    );
  }

  /// Sidebar with navigation options
  Widget _buildSidebar() {
    return Container(
      width: 70.w,
      padding: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
        color: const Color(0xffE2DAE5).withOpacity(0.9),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 6.h),
          _sidebarButton(Icons.person, "Profile", () {}),
          _sidebarButton(Icons.qr_code, "Scan", () {}),
          _sidebarButton(Icons.shopping_cart, "Cart", () {}),
          _sidebarButton(Icons.add, "Sell", () {}),
          _sidebarButton(Icons.list, "Orders", () {}),
          _sidebarButton(Icons.close, "Close", () {
            showSideBar.value = false;
          }),
        ],
      ),
    );
  }

  /// Helper function to build sidebar buttons
  Widget _sidebarButton(IconData icon, String text, VoidCallback onTap) {
    return IconButton(
      onPressed: onTap,
      icon: Column(
        children: [
          Icon(icon, size: 15, color: const Color(0xff918994)),
          Text(
            text,
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

/// Sticky Header for Search
class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final List<String> filteredSuggestions;
  final double defaultHeight = 100.0;
  final double expandedHeight = 150.0;

  _StickyHeaderDelegate({required this.filteredSuggestions});

  @override
  double get minExtent => defaultHeight;
  @override
  double get maxExtent =>
      filteredSuggestions.isNotEmpty ? expandedHeight : defaultHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: maxExtent,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff651c50), Color(0xff54225f)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      child: const Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage:
                AssetImage('assets/images/Smartbazaar-Icon-for-QR.png'),
          ),
          SizedBox(width: 10),
          Expanded(
              child: TextField(
                  decoration: InputDecoration(hintText: "Search..."))),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _StickyHeaderDelegate oldDelegate) {
    return oldDelegate.filteredSuggestions != filteredSuggestions;
  }
}
