import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/feed_page/widget/feed_page_pop_up.dart';

class FeedContainer extends StatelessWidget {
  const FeedContainer({
    super.key,
    required this.vendorImage,
    required this.vendorName,
    required this.suscribers,
    required this.productCount,
    required this.livePrize,
    required this.distance,
    // this.userDetails,
    required this.interested,
    required this.engagement,
    required this.views,
    required this.feedDetailImage,
    required this.membershipTitle,
    required this.membershipId,
  });
  final String? vendorImage;
  final String? vendorName;
  final String? suscribers;
  final String? productCount;
  final String? livePrize;
  final String? distance;
  final String? interested;
  final String? engagement;
  final String? views;
  final String? feedDetailImage;
  final String? membershipTitle;
  final String? membershipId;

  // final UserDetail? userDetails;
  // final Interested? interested;
  // final FeedDetail? feedDetail;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showCustomBottomSheet(context);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 90.h, // Set your desired height
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor:
                          const Color(0x7F7F7F73).withOpacity(0.45),
                      child: ClipOval(
                          child: vendorImage != null && vendorImage!.isNotEmpty
                              ? Image.network(
                                  vendorImage!,
                                  fit: BoxFit.cover,
                                  width: 36,
                                  height: 36,
                                )
                              : Icon(
                                  Icons.person,
                                  size: 24.sp,
                                )),
                    ),
                  ),
                ),
                // SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Text(
                                    vendorName ?? 'N/A',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Image.asset(
                                  "assets/images/back.png",
                                  height: 16.h,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                _getMembershipImage(membershipId),
                                width: 16.w,
                                height: 16.h,
                                color: Colors.black45,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  membershipTitle ?? '',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                suscribers ?? '0',
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
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              Text(
                                productCount ?? '0',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11.sp),
                              ),
                              Text(
                                "PRODUCTS",
                                style: TextStyle(fontSize: 8.sp),
                              ),
                            ],
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            children: [
                              Text(
                                livePrize ?? '0',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11.sp),
                              ),
                              Text(
                                "LIVE PRIZES",
                                style: TextStyle(fontSize: 8.sp),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 12.h,
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                '${distance ?? '0'} km',
                                style: TextStyle(fontSize: 8.sp),
                              ),
                            ],
                          ),
                          SizedBox(width: 5.w,)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
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
                child: Image.network(
                  feedDetailImage ?? '',
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
                          imagePath: feedDetailImage ?? '',
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
                      child: Icon(Icons.share, color: Colors.white, size: 20.h),
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
                                  "${interested ?? '0'} Interested",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
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
                                  "${engagement ?? '0'} Engagement",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
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
                                  "${views ?? '0'}  views",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
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
        )
      ],
    );
  }

  // Function to get membership image
  String _getMembershipImage(String? membershipId) {
    switch (membershipId) {
      case '1':
        return 'assets/icon/basic_seller.png';
      case '2':
        return 'assets/icon/spotlight_seller.png';
      case '3':
        return 'assets/icon/domestic_brand.png';
      case '25':
        return 'assets/icon/global_brand.png';
      default:
        return 'assets/icon/global_brand.png'; // Default image
    }
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
              child: Image.network(
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
