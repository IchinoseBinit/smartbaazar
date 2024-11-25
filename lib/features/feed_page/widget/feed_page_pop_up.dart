import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Color(0xFF30343F),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
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
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Adidas",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 15.w),
                                      Text(
                                        "PRIZE CONTRIBUTOR",
                                        style: TextStyle(fontSize: 8.sp),
                                      ),
                                      SizedBox(width: 5.w),
                                      const Icon(
                                        Icons.waving_hand,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      SizedBox(width: 15.w),
                                      const Icon(
                                        Icons.outlined_flag_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        "GLOBAL BRAND",
                                        style: TextStyle(fontSize: 8.sp),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 11.sp),
                                          ),
                                          Text(
                                            "PRIZES",
                                            style: TextStyle(fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 15.w),
                                      Column(
                                        children: [
                                          Text(
                                            "RS 40,000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 11.sp),
                                          ),
                                          Text(
                                            "TOTAL CONTRIBUTION",
                                            style: TextStyle(fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 15.w),
                                      Column(
                                        children: [
                                          Text(
                                            "5.5K",
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
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset("assets/images/poster.png",
                      width: 168.w, height: 242.h),
                  Container(
                    color: Color(0xFF5D5062),
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.card_giftcard,
                              size: 28,
                              color: Color(0xFFFF0078),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'S',
                                              style: TextStyle(
                                                fontSize: 14
                                                    .sp, // Larger font size for 'S'
                                                color: Colors
                                                    .pink, // Pink color for 'S'
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'ubscribe and ',
                                              style: TextStyle(
                                                fontSize:
                                                    12.sp, // Default font size
                                                color: Colors
                                                    .white, // Default color
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'W',
                                              style: TextStyle(
                                                fontSize: 14
                                                    .sp, // Larger font size for 'W'
                                                color: Colors
                                                    .pink, // Pink color for 'W'
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'in',
                                              style: TextStyle(
                                                fontSize:
                                                    12.sp, // Default font size
                                                color: Colors
                                                    .white, // Default color
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text("Connect,Scratch and Win!",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp))
                                    ],
                                  ),
                                  SizedBox(height: 8), // Add some spacing
                                  Text(
                                    "Visit & ‘Subscribe’ to any Smartbazaar VendorBizSpace for upto 5 daily ‘FREE Scratch & Win’ chances",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Colors.white,
                                    ),
                                    softWrap: true, // Allow text wrapping
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              child: Text(
                                "How To Play",
                                style: TextStyle(color: Colors.white,),
                              ),
                              onPressed: () {},
                            ),
                            OutlinedButton(
                              child: Text(
                                "View Rules",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                            OutlinedButton(
                              child: Text(
                                "Suscribe & Win",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}
