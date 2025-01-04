// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class HorizontalListView extends StatefulWidget {
//   const HorizontalListView({super.key});

//   @override
//   _HorizontalListViewState createState() => _HorizontalListViewState();
// }

// class _HorizontalListViewState extends State<HorizontalListView> {
//   int selectedIndex = 0; // Track selected index for taps

//   List<Map<String, dynamic>> items = [
//     {'icon': 'assets/icon1.svg', 'label': 'TradeHub', 'screen': Container()},
//     {'icon': 'assets/icon2.svg', 'label': 'Item 2', 'screen': Container()},
//     {'icon': 'assets/icon3.svg', 'label': 'Item 3', 'screen': Container()},
//     {'icon': 'assets/icon4.svg', 'label': 'Item 4', 'screen': Container()},
//     {'icon': 'assets/icon5.svg', 'label': 'Item 5', 'screen': Container()},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 80.0, // Height of the list view
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           Map<String, dynamic> data = items[index];
          
//           // Set active when tapped
//           bool isActive = selectedIndex == index;

//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedIndex = index; // Set selected index on tap
//               });
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => data['screen'],
//                 ),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   if (data['icon'].toString().endsWith('.svg'))
//                     SvgPicture.asset(
//                       data['icon'],
//                       color: isActive
//                           ? Colors.amber
//                           : const Color(0xffD9D9D9).withOpacity(0.5),
//                       width: 20,
//                       height: 20,
//                     )
//                   else
//                     Image.asset(
//                       data['icon'],
//                       color: isActive
//                           ? Colors.amber
//                           : const Color(0xffD9D9D9).withOpacity(0.5),
//                       width: 20,
//                       height: 20,
//                     ),
//                   const SizedBox(height: 8),
//                   Text(
//                     data['label'],
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w700,
//                       color: isActive
//                           ? Colors.amber
//                           : const Color(0xffD9D9D9).withOpacity(0.5),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
