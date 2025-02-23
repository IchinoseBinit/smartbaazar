// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final scrollToTopProvider = StateProvider<bool>((ref) => false);
// final sliverAppBarVisibilityProvider = StateProvider<bool>((ref) => true);

// class TestScreen extends ConsumerStatefulWidget {
//   final String productId;
//   TestScreen({super.key, required this.productId});

//   final ScrollController _totopscrollController = ScrollController();

//   @override
//   ConsumerState<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends ConsumerState<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final scrollToTop = ref.watch(scrollToTopProvider);
//     final isSliverAppBarVisible = ref.watch(sliverAppBarVisibilityProvider);

//     // Scroll to top when triggered
//     if (scrollToTop) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         widget._totopscrollController.animateTo(
//           0,
//           duration: const Duration(seconds: 1),
//           curve: Curves.easeInOut,
//         );
//         ref.read(scrollToTopProvider.notifier).state = false; // Reset state
//       });
//     }

//     return Scaffold(
//       body: NotificationListener<ScrollNotification>(
//         onNotification: (notification) {
//           if (notification is ScrollUpdateNotification &&
//               notification.metrics.axis == Axis.vertical) {
//             if (notification.metrics.pixels > 100) {
//               if (isSliverAppBarVisible) {
//                 ref.read(sliverAppBarVisibilityProvider.notifier).state = false;
//               }
//             } else {
//               if (!isSliverAppBarVisible) {
//                 ref.read(sliverAppBarVisibilityProvider.notifier).state = true;
//               }
//             }
//           }
//           return true;
//         },
//         child: Stack(
//           children: [
//             CustomScrollView(
//               controller: widget._totopscrollController,
//               slivers: [
//                 SliverAppBar(
//                   expandedHeight: 200.0,
//                   floating: false,
//                   pinned: true,
//                   title: Text("SliverAppBar"),
//                   backgroundColor: Colors.blue,
//                 ),
//                 SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                     (context, index) => ListTile(title: Text('Item $index')),
//                     childCount: 80,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.read(scrollToTopProvider.notifier).state = true; // Trigger scroll to top
//         },
//         child: const Icon(Icons.arrow_upward),
//       ),
//     );
//   }
// }
