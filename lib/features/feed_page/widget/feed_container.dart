import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/widget/feed_page_pop_up.dart';

class FeedContainer extends StatelessWidget {
  const FeedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              showCustomBottomSheet(context);
            },
            child: Container(
              width:
                  MediaQuery.of(context).size.width, // Set your desired width
              height: 150.h, // Set your desired height
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFFFFF), // White
                    Color(0xFFDDDDDD), // Light Gray
                    Color(0xFF888888), // Dark Gray
                  ],
                  stops: [0.19, 0.554, 1.0], // Define the gradient stops
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
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
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Adidas",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp),
                                ),
                                SizedBox(width: 5.w),
                                ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF41246e), // Dark purple
                                        Color(0xFF721844), // Dark red
                                      ],
                                    ).createShader(bounds);
                                  },
                                  blendMode: BlendMode.srcIn,
                                  child: const Icon(
                                    Icons.login,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "4.5k",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11.sp),
                                    ),
                                    Text(
                                      "SUBSCRIBERS",
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "1.5k",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11.sp),
                                    ),
                                    Text(
                                      "PRODUCTS",
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.public),
                                Text(
                                  "GLOBAL BRAND",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "8",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11.sp),
                                    ),
                                    Text(
                                      "LIVE PRIZES",
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 12.h,
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      "2.4 KM",
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 300.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                // Image Section
                ClipRRect(
                  //  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    "assets/images/rerbok_shoes.jpg",
                    width: double.infinity,
                    height: double.infinity, // Make the image take full height
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 5.0,
                  // left: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullscreenImageView(
                            imagePath:
                                "assets/images/rerbok_shoes.jpg", // Pass your image path
                          ),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.black54,
                      height: 35,
                      width: 35,
                      child: Icon(Icons.zoom_out_map_rounded,
                          color: Colors.white, size: 20.h),
                    ),
                  ),
                ),

                // Icons Section (Like, Comment, Share) positioned above the image
                Positioned(
                  bottom: 50.0, // Positioned higher so it's above the image
                  right: 10.0,
                  left: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Like Icon
                      GestureDetector(
                        onTap: () {
                          print("Liked!");
                        },
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border_outlined,
                                color: Colors.white, size: 20.h),
                            SizedBox(width: 4.w),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      // Comment Icon
                      GestureDetector(
                        onTap: () {
                          print("Commented!");
                        },
                        child: Row(
                          children: [
                            Icon(Icons.chat_bubble_outline,
                                color: Colors.white, size: 20.h),
                            SizedBox(width: 4.w),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      // Comment Icon
                      GestureDetector(
                        onTap: () {
                          print("Commented!");
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_outward_outlined,
                                color: Colors.white, size: 20.h),
                            SizedBox(width: 4.w),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      // Share Icon
                      GestureDetector(
                        onTap: () {
                          print("Shared!");
                        },
                        child:
                            Icon(Icons.share, color: Colors.white, size: 20.h),
                      ),
                    ],
                  ),
                ),

                // Interested, Engagement, and Views Section (above the image)
                Positioned(
                  //  top: 4,
                  bottom: 0.0, // Adjust position as needed
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      height: 40.h,
                      width: MediaQuery.of(context).size.width * 0.8,
                      // padding: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(
                            0.9), // Slight opacity to blend with image
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Interested
                            GestureDetector(
                              onTap: () {
                                print("Interested!");
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "1.2k Interested",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const VerticalDivider(
                              thickness: 2,
                              color: Colors.black,
                            ),
                            // Engagement
                            GestureDetector(
                              onTap: () {
                                print("Engagement!");
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "345 Engagement",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const VerticalDivider(
                              thickness: 2,
                              color: Colors.black,
                            ),
                            // Views
                            GestureDetector(
                              onTap: () {
                                print("Views!");
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "2.3k views",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FullscreenImageView extends StatelessWidget {
  final String imagePath;

  const FullscreenImageView({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onVerticalDragEnd: (details) {
          // Check if the drag was downward
          if (details.primaryVelocity != null && details.primaryVelocity! > 0) {
            Navigator.pop(context);
          }
        },
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 0,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
