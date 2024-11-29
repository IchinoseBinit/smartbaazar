import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/widget/story_screen.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';

class StoryAddWidget extends StatelessWidget {
  final int index;
   StoryAddWidget({super.key, required this.index,});

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
                      radius: 30,
                      backgroundColor:
                          const Color(0x7F7F7F73).withOpacity(0.45),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/reebok.png",
                          fit: BoxFit.cover,
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
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
            Positioned(
              top: 41,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.card_giftcard,
                  color: Colors.amber,
                  size: 24, // Set the size of the icon
                ),
              ),
            ),
          
          ],
        ),
      ],
    );
  }
}
