// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class BottomInfo extends StatefulWidget {
//   const BottomInfo({super.key});

//   @override
//   _BottomInfoState createState() => _BottomInfoState();
// }

// class _BottomInfoState extends State<BottomInfo> {
//   bool isChecked = false; // To track the state of the checkbox

//   static const String logoPath = 'assets/images/adidas.png';

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             //** checkbox
//             Checkbox(
//               value: isChecked,
//               onChanged: (bool? value) {
//                 setState(() {
//                   isChecked = value ?? false; // Update the checkbox state
//                 });
//               },
//               activeColor: const Color(0xFF362677), // Color when checked
//             ),

//             //** sized box widget for terms and conditions check
//             SizedBox(
//               width: 300.w,
//               child: RichText(
//                 text: TextSpan(
//                   children: [
//                     const TextSpan(
//                       text: 'I agree on the ',
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     WidgetSpan(
//                       child: GestureDetector(
//                         onTap: () {
//                           // _showMessage(context, 'Terms & Conditions clicked!');
//                         },
//                         child: const Text(
//                           'terms & conditions',
//                           style: TextStyle(
//                             color: Color(0xFF362677),
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const TextSpan(
//                       text: ' of ',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     WidgetSpan(
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: const Text(
//                           'Scratch & Win',
//                           style: TextStyle(
//                             color: Color(0xFF362677),
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // column for the the counts and the logo
//         Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildInfoTile('Total gifts worth', '500,000'),
//                   _buildInfoTile('Participants', '10,000'),
//                   _buildInfoTile('Total prizes', '1,000'),
//                 ],
//               ),
//             ),

//             //** grid view builder widget for logos
//             GridView.builder(
//               shrinkWrap: true, // Important to use inside a Column
//               physics:
//                   const NeverScrollableScrollPhysics(), // Disable scrolling for GridView
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4, // Number of items in a row
//                 crossAxisSpacing: 3, // Space between items horizontally
//                 mainAxisSpacing: 1.0, // Space between items vertically
//               ),
//               itemCount: 4, // Number of items
//               itemBuilder: (context, index) {
//                 return _buildLogo(logoPath);
//               },
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   //** widget for info tile for total gifts , participants and total prize
//   Widget _buildInfoTile(String title, String value) {
//     return Column(
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 13,
//             color: Colors.black,
//             fontWeight: FontWeight.w900,
//           ),
//         ),
//         Text(
//           value,
//           style: const TextStyle(
//             fontSize: 14, // fontsize is 20
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }

//   //** build logo widgte for grid view builder widget for logos
//   Widget _buildLogo(String path) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: Container(
//         width: 100, // Set width to 100
//         height: 100, // Set height to 100
//         color: const Color(0xFFEDECEC), // Background color for each grid item
//         padding: const EdgeInsets.all(8),
//         child: Padding(
//           padding: const EdgeInsets.all(15), // padding
//           child: Image.asset(
//             path,
//             width: 40,
//             height: 40,
//             fit: BoxFit.contain,
//           ),
//         ),
//       ),
//     );
//   }
// }

// //   children: [
// //     Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceAround,
// //       children: [
// //         _buildInfoTile('Total gifts worth', '500,000'),
// //         _buildInfoTile('Participants', '10,000'),
// //         _buildInfoTile('Total prizes', '1,000'),
// //       ],
// //     ),
// //     SizedBox(height: 20),
// //     Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceAround,
// //       children: [
// //         _buildLogo('assets/images/adidas.png', Color(0xFFEDECEC)),
// //         _buildLogo('assets/images/adidas.png', Color(0xFFEDECEC)),
// //         _buildLogo('assets/images/adidas.png', Color(0xFFEDECEC)),
// //         _buildLogo('assets/images/adidas.png', Color(0xFFEDECEC)),
// //       ],
// //     ),
// //   ],
// // )

// //       Widget _buildLogo(String path, Color backgroundColor) {
// //   return Expanded(
// //     child: Container(
// //       margin: EdgeInsets.symmetric(horizontal: 2), // Gutter between images
// //       height: 70,
// //       width: 100,
// //         color: backgroundColor,
// //       child: Image.asset(
// //         path,
// //       ),
// //     ),
// //   );
// // }
