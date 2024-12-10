// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:smartbazar/constant/image_constant.dart';

// class homehawa extends StatefulWidget {
//   const homehawa({super.key});

//   @override
//   State<homehawa> createState() => _homehawaState();
// }

// class _homehawaState extends State<homehawa>
//     with SingleTickerProviderStateMixin {
//   final GlobalKey<ScaffoldState> _key = GlobalKey();
//   final TextEditingController _searchController = TextEditingController();
//   final _debouncer = BehaviorSubject<String>();
//   late TabController tabController;
//   final ScrollController _scrollController = ScrollController();
//   bool _isSectionsVisible = true;
//   double _lastScrollOffset = 0;
//   Offset _initialDragPosition = Offset.zero; // Track initial drag position
//   int? selectedIndex;
//   late PageController _pageController;

//   // final List<Map<String, dynamic>> items = [
//   //   {"icon": "assets/icon1.svg", "label": "Item 1", "screen": Placeholder()},
//   //   {"icon": "assets/icon2.svg", "label": "Item 2", "screen": Placeholder()},
//   //   {"icon": "assets/icon3.svg", "label": "Item 3", "screen": Placeholder()},
//   //   {"icon": "assets/icon4.svg", "label": "Item 4", "screen": Placeholder()},
//   //   {"icon": "assets/icon5.svg", "label": "Item 5", "screen": Placeholder()},
//   // ];

//   void _onPageChanged(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();

//     selectedIndex = 2; // Default selected index (Item 3)

//     _pageController = PageController(
//       viewportFraction: 0.3,
//       initialPage: selectedIndex!,
//     );

//     tabController = TabController(length: 3, vsync: this);

//     _searchController.addListener(() {
//       _debouncer.add(_searchController.text);
//     });

//     _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
//       debugPrint("Search query: $query");
//       setState(() {
//         // _showSearchResults = query.isNotEmpty;
//       });
//     });

//     _scrollController.addListener(_handleScroll);
//   }

//   void _handleScroll() {
//     final scrollOffset = _scrollController.offset;

//     if (scrollOffset > _lastScrollOffset && scrollOffset > 100) {
//       setState(() {
//         _isSectionsVisible = false;
//       });
//     } else if (scrollOffset < _lastScrollOffset && scrollOffset < 50) {
//       setState(() {
//         _isSectionsVisible = true;
//       });
//     }

//     _lastScrollOffset = scrollOffset;
//   }

//   void _onDragUpdate(DragUpdateDetails details) {
//     final dragDistance = details.globalPosition.dy - _initialDragPosition.dy;
//     if (dragDistance > 50 && !_isSectionsVisible) {
//       setState(() {
//         _isSectionsVisible = true;
//       });
//     } else if (dragDistance < -50 && _isSectionsVisible) {
//       setState(() {
//         _isSectionsVisible = false;
//       });
//     }
//   }

//   void _onDragStart(DragStartDetails details) {
//     _initialDragPosition = details.globalPosition;
//   }

//   @override
//   void dispose() {
//     _debouncer.close();
//     _searchController.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _key,
//       resizeToAvoidBottomInset: false,
//       backgroundColor: const Color(0xffF6F1F1),
//       body: Stack(children: [
//         SingleChildScrollView(
//           controller: _scrollController,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(50),
//                     bottomRight: Radius.circular(50),
//                   ),
//                   gradient: LinearGradient(
//                     colors: [
//                       Color(0xFF392574),
//                       Color(0xFF681b4e),
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     const SizedBox(height: 40),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Image.asset('assets/images/group.png'),
//                         Expanded(
//                           child: SizedBox(
//                             height: 50,
//                             child: TextField(
//                               controller: _searchController,
//                               decoration: InputDecoration(
//                                 hintText: "Search...",
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                    SizedBox(
//   height: 80,
//   child: PageView.builder(
//     controller: _pageController,
//     onPageChanged: _onPageChanged,
//     itemCount: items.length,
//     itemBuilder: (context, index) {
//       Map<String, dynamic> data = items[index];
//       bool isActive = index == selectedIndex;

//       // Scale the selected item to make it stand out.
//       final double scale = isActive ? 1.2 : 0.8;
//       final double opacity = isActive ? 1.0 : 0.5;

//       return GestureDetector(
//         onTap: () {
//           setState(() {
//             selectedIndex = index;
//           });
//           _pageController.animateToPage(
//             index,
//             duration: const Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//           );
//         },
//         child: Transform.scale(
//           scale: scale,
//           child: Opacity(
//             opacity: opacity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if (data['icon'].toString().endsWith('.svg'))
//                   SvgPicture.asset(
//                     data['icon'],
//                     color: isActive ? Colors.amber : Colors.grey,
//                     width: 40,
//                     height: 40,
//                   )
//                 else
//                   Image.asset(
//                     data['icon'],
//                     color: isActive ? Colors.amber : Colors.grey,
//                     width: 40,
//                     height: 40,
//                   ),
//                 const SizedBox(height: 8),
//                 Text(
//                   data['label'],
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w700,
//                     color: isActive ? Colors.amber : Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   ),
// ),

//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }
