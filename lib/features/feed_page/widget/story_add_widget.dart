import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/widget/story_screen.dart';

class StoryAddWidget extends StatelessWidget {
  final int index;
  bool? showgift;
  bool? addSearch;
  StoryAddWidget({
    super.key,
    required this.index,
    this.showgift = false,
    this.addSearch=false
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Author 1 Button

        Stack(
          clipBehavior: Clip.none, // This prevents clipping of child widgets
          children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  border: Border.all(width: 4, color: const Color(0xffEACACB)),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Positioned(child: Container())
            Positioned(
              left: 1,
              bottom: 0,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              StoryScreen(author: 'Author ${index + 1}'),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor:
                          const Color(0x7F7F7F73).withOpacity(0.45),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage(
                          "assets/images/reebok.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      "Seller name ",
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
           addSearch!?
           Positioned(
                    bottom: 15,
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(2),
                      child: const Icon(
                        Icons.search,
                        color: Color(0xffAA0018),
                        size: 24, // Set the size of the icon
                      ),
                    ),
                  ):


            showgift!
                ? Positioned(
                    bottom: 15,
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(2),
                      child: const Icon(
                        Icons.card_giftcard,
                        color: Colors.amber,
                        size: 24, // Set the size of the icon
                      ),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ],
    );
  }
}
