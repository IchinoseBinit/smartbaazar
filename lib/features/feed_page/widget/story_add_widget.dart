import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/widget/story_screen.dart';

class StoryAddWidget extends StatelessWidget {
  final int index;
  bool? showgift;
  StoryAddWidget({
    super.key,
    required this.index,
    this.showgift = false,
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
                child: 
                
                Container(
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
              left: 4,
              bottom: 1,
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
                      radius: 39,
                      backgroundColor:
                          const Color(0x7F7F7F73).withOpacity(0.45),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/reebok.png",
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
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
                : Positioned(
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
                        color: Colors.red,
                        size: 24, // Set the size of the icon
                      ),
                    ),
                  )
          ],
        ),
      ],
    );
  }
}
