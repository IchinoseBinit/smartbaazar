import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotStoryWidget extends StatelessWidget {
  final int index;
  final bool? showgift;
  final bool? addSearch;
  final String? brandname;
  final String? vImage;
  final int? storyCount;

  const NotStoryWidget({
    super.key,
    required this.index,
    this.showgift = false,
    this.addSearch = false,
    this.brandname,
    this.vImage,
    this.storyCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => StoryScreen(author: 'Author ${index + 1}'),
            //   ),
            // );
          },
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                width: 85.r,
                height: 85.r,
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 0.1.w, color: const Color(0xff8c8c8c)),
                  shape: BoxShape.circle,
                ),
              ),
              CircleAvatar(
                radius: 37.r,
                backgroundColor: const Color(0x7F7F7F73).withOpacity(0.45),
                backgroundImage: NetworkImage(vImage ??
                    'https://smartbazaar.jianjun-rnd.com.np/storage/files/np/947/11ce743037dbc695f81557faf3d959de.png'),
              ),
              Positioned(
                left: 5.w,
                bottom: -20.h,
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
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
