// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   ConsumerState<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   bool _isPopupVisible = false;
//   int currentPageIndex = 0;
//   int selectedIndexx = 0;
//   final ValueNotifier<bool> _showSideBar = ValueNotifier<bool>(true);
//   final GlobalKey<ScaffoldState> _key = GlobalKey();
//   final TextEditingController _searchController = TextEditingController();
//   final _debouncer = BehaviorSubject<String>();
//   bool _showSearchProductModels = false;
//   late TabController dynamictabController;
//   final ScrollController _scrollController = ScrollController();
//   bool _isSectionsVisible = true;
//   double _lastScrollOffset = 1;
//   Offset _initialDragPosition = Offset.zero; // Track initial drag position
//   PageController _pageController = PageController(viewportFraction: 0.3);
//   final List<Map<String, dynamic>> _items = [
//     // Add the screen items here
//   ];

//   @override
//   void initState() {
//     super.initState();
//     dynamictabController = TabController(length: 3, vsync: this);

//     // Initialize the PageController with the selected page
//     _pageController = PageController(
//       viewportFraction: 0.3,
//       initialPage: selectedIndex,
//     );

//     // Search debounce listener
//     _searchController.addListener(() {
//       _debouncer.add(_searchController.text);
//     });

//     _debouncer.debounceTime(const Duration(milliseconds: 300)).listen((query) {
//       debugPrint("Search query: $query");
//       ref.refresh(searchProvider(query));
//       setState(() {
//         _showSearchProductModels = query.isNotEmpty;
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

//   void _onDragStart(DragStartDetails details) {
//     _initialDragPosition = details.globalPosition;
//   }

//   @override
//   void dispose() {
//     dynamictabController.dispose();
//     _debouncer.close();
//     _searchController.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final SearchProductModels = ref.watch(searchProvider(_searchController.text));
//     return Scaffold(
//       extendBody: true,
//       key: _key,
//       resizeToAvoidBottomInset: false,
//       backgroundColor: ColorConstant.whiteColor,
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: SingleChildScrollView(
//               controller: _scrollController,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(50),
//                           bottomRight: Radius.circular(50)),
//                       gradient: LinearGradient(
//                         colors: [
//                           Color(0xFF392574),
//                           Color(0xFF681b4e),
//                         ],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                       ),
//                     ),
//                     child: Column(
//                       children: [
//                         const SizedBox(height: 40),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const VendorProfileScreen(),
//                                   ),
//                                 );
//                               },
//                               child: Image.asset('assets/images/group.png'),
//                             ),
//                             SizedBox(width: 2.w),
//                             SizedBox(
//                               height: 40,
//                               child: NewSearchWidget(
//                                 onSearchFocusChanged: _onSearchFocusChanged,
//                                 searchController: _searchController,
//                                 onTapped: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => BusinessTabScreen(
//                                         query: _searchController.text,
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
                
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
