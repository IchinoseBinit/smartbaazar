import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/widget/story_screen.dart';

class StoryAddWidget extends StatelessWidget {
  final int index;
  final bool? showgift;
  final bool? addSearch;
  final String? brandname;
  final String? vImage;

  const StoryAddWidget({
    super.key,
    required this.index,
    this.showgift = false,
    this.addSearch = false,
    this.brandname,
    this.vImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          clipBehavior: Clip.none, // Prevents clipping of child widgets
          children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w), // Make margin responsive
                padding: EdgeInsets.all(40.r), // Padding made responsive
                decoration: BoxDecoration(
                  border: Border.all(width: 4.w, color: const Color(0xffEACACB)),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: -1.w,
              bottom: 3.5.w,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => StoryScreen(author: 'Author ${index + 1}'),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 40.r, // Responsive radius
                      backgroundColor: const Color(0x7F7F7F73).withOpacity(0.45),
                      child: CircleAvatar(
                        radius: 38.r, // Responsive radius
                        backgroundImage: NetworkImage(vImage ??
                            'https://smartbazaar.jianjun-rnd.com.np/storage/files/np/947/11ce743037dbc695f81557faf3d959de.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h), // Responsive spacing
                  SizedBox(
                    width: 100.w, // Responsive width
                    child: Text(
                      brandname ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp, // Responsive font size
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            addSearch!
                ? Positioned(
                    bottom: 15.h, // Responsive bottom position
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(2.r), // Responsive padding
                      child:  Icon(
                        Icons.search,
                        color: const Color(0xffAA0018),
                        size: 24.r, // Responsive icon size
                      ),
                    ),
                  )
                : showgift!
                    ? Positioned(
                        bottom: 15.h, // Responsive bottom position
                        right: 0,
                        left: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(2.r), // Responsive padding
                          child:  Icon(
                            Icons.card_giftcard,
                            color: Colors.amber,
                            size: 24.r, // Responsive icon size
                          ),
                        ),
                      )
                    : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
