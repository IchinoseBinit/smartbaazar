// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:smartbazar/constant/color_constant.dart';

// class asd extends StatelessWidget {
//   final String photo, image, subscribers, caption, name;
//   bool? isLive;
//   asd(
//       {super.key,
//       required this.image,
//       required this.photo,
//       required this.caption,
//       required this.name,
//       this.isLive = false,
//       required this.subscribers});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: 10.h,
//       padding: const EdgeInsets.all(5),
//       margin: EdgeInsets.only(left: 5.w),
//       width: MediaQuery.sizeOf(context).width * 0.65,
//       decoration: BoxDecoration(
//           color: ColorConstant.whiteColor,
//           borderRadius: BorderRadius.circular(20)),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Top Section with Avatar and Info
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   // Avatar
//                   Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.grey.shade300,
//                       ),
//                       child: Image.network(photo)),
//                   const SizedBox(width: 10),
//                   // Title and Info
//                    Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Tech Store",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 14),
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "$subscribers Subscribers",
//                             style: const TextStyle(fontSize: 10, color: Colors.grey),
//                           ),
//                           const SizedBox(width: 5),
//                           const Text(
//                             "•",
//                             style: TextStyle(fontSize: 10, color: Colors.grey),
//                           ),
//                           const SizedBox(width: 5),
//                           const Text(
//                             "20h",
//                             style: TextStyle(fontSize: 10, color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   // const Spacer(),
//                   // const Icon(Icons.more_vert, color: Colors.grey),
//                 ],
//               ),
//             ),
//             // Image Section
//             ClipRRect(
//               borderRadius: const BorderRadius.vertical(
//                 top: Radius.circular(0),
//                 bottom: Radius.circular(0),
//               ),
//               child: Image.network(
//                 image,
//                 height: 70,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             // Description Section
//             const Padding(
//               padding: EdgeInsets.all(5.0),
//               child: Text.rich(
//                 TextSpan(
//                   text:
//                       "The company's product portfolio includes footwear, apparel accessories such as ad bags, sunglasses ",
//                   style: TextStyle(fontSize: 12),
//                   children: [
//                     TextSpan(
//                       text: "More",
//                       style: TextStyle(color: Colors.blue, fontSize: 12),
//                     ),
//                   ],
//                 ),
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//             // Action Section (like, comment, share)
//            isLive!? 
//            Container(
//             child: Row(
//               children: [
//                 Text("leadingText",
//                 style: headerstyle.copyWith(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 12,

//                 ),
//                 ),
//                  Text("nonoon",
//                 style: headerstyle.copyWith(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 12,

//                 ),
//                 ),
//               ],
//             ),
//            ):
           
           
           
//              Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.favorite_border, color: Colors.grey),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon:
//                         const Icon(Icons.comment_outlined, color: Colors.grey),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.share_outlined, color: Colors.grey),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
