
// existing code

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:smartbazar/features/feed_page/widget/story_screen.dart';
//
// class StoryAddWidget extends StatelessWidget {
//   final int index;
//   final bool? showgift;
//   final bool? addSearch;
//   final String? brandname;
//   final String? vImage;
//   final int? storyCount;
//
//   const StoryAddWidget({
//     super.key,
//     required this.index,
//     this.showgift = false,
//     this.addSearch = false,
//     this.brandname,
//     this.vImage,
//     this.storyCount,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         GestureDetector(
//           onTap: () {
//             if (addSearch == true) {
//               _showSearchPopup(context); // Show popup if addSearch is true
//             } else {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => StoryScreen(author: 'Author ${index + 1}'),
//                 ),
//               );
//             }
//           },
//           //
//           //
//           // () {
//           //   Navigator.push(
//           //     context,
//           //     MaterialPageRoute(
//           //       builder: (_) => StoryScreen(author: 'Author ${index + 1}'),
//           //     ),
//           //   );
//           // },
//           child: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 5.w),
//                 width: 95.r,
//                 height: 95.r,
//                 decoration: BoxDecoration(
//                   border:
//                       Border.all(width: 3.w, color: const Color(0xffEACACB)),
//                   shape: BoxShape.circle,
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 1.w, color: Colors.black),
//                   shape: BoxShape.circle,
//                 ),
//                 child: CircleAvatar(
//                   radius: 38.r,
//                   backgroundColor: const Color(0x7F7F7F73).withOpacity(0.45),
//                   backgroundImage: NetworkImage(vImage ??
//                       'https://smartbazaar.jianjun-rnd.com.np/storage/files/np/947/11ce743037dbc695f81557faf3d959de.png'),
//                 ),
//               ),
//               Positioned(
//                 bottom: -25.h,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 10.h),
//                     SizedBox(
//                       width: 100.w,
//                       child: Text(
//                         brandname ?? '',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 11.sp,
//                         ),
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.center,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               addSearch!
//                   ? Positioned(
//                       bottom: -5.h,
//                       right: 0,
//                       left: 0,
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                         ),
//                         padding: EdgeInsets.all(2.r),
//                         child: Icon(
//                           Icons.search,
//                           color: const Color(0xffAA0018),
//                           size: 24.r,
//                         ),
//                       ),
//                     )
//                   : showgift!
//                       ? Positioned(
//                           bottom: -5.h,
//                           right: 0,
//                           left: 0,
//                           child: Container(
//                             decoration: const BoxDecoration(
//                               color: Colors.white,
//                               shape: BoxShape.circle,
//                             ),
//                             padding: EdgeInsets.all(2.r),
//                             child: Icon(
//                               Icons.card_giftcard,
//                               color: Colors.amber,
//                               size: 24.r,
//                             ),
//                           ),
//                         )
//                       : const SizedBox(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
// void _showSearchPopup(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         title: const Text('Search Feature'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('This is a popup for the search functionality.'),
//             SizedBox(height: 20.h),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Search',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text('Close'),
//           ),
//         ],
//       );
//     },
//   );
// }
//
//
//
//










import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/widget/story_screen.dart';

class StoryAddWidget extends StatelessWidget {
  final int index;
  final bool? showgift;
  final bool? addSearch;
  final String? brandname;
  final String? vImage;
  final int? storyCount;
  final VoidCallback? onTap; // Add onTap callback

  const StoryAddWidget({
    super.key,
    required this.index,
    this.showgift = false,
    this.addSearch = false,
    this.brandname,
    this.vImage,
    this.storyCount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            if (addSearch == true) {
              onTap?.call(); // Trigger custom onTap
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StoryScreen(author: 'Author ${index + 1}'),
                ),
              );
            }
          },
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                width: 95.r,
                height: 95.r,
                decoration: BoxDecoration(
                  border: Border.all(width: 3.w, color: const Color(0xffEACACB)),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: Colors.black),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 38.r,
                  backgroundColor: const Color(0x7F7F7F73).withOpacity(0.45),
                  backgroundImage: NetworkImage(vImage ??
                      'https://smartbazaar.jianjun-rnd.com.np/storage/files/np/947/11ce743037dbc695f81557faf3d959de.png'),
                ),
              ),
              Positioned(
                bottom: -22.h,
                child: Column(
                  children: [
                    SizedBox(height: 5.h),
                    SizedBox(
                      width: 100.w,
                      child: Text(
                        brandname ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              addSearch!
                  ? Positioned(
                bottom: -5.h,
                right: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(2.r),
                  child: Icon(
                    Icons.search,
                    color: const Color(0xffAA0018),
                    size: 24.r,
                  ),
                ),
              )
                  : showgift!
                  ? Positioned(
                bottom: -5.h,
                right: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(2.r),
                  child: Icon(
                    Icons.card_giftcard,
                    color: Colors.amber,
                    size: 24.r,
                  ),
                ),
              )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}