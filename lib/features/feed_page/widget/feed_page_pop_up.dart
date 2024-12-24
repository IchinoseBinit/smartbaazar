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
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      decoration: const BoxDecoration(
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
                                    backgroundColor: const Color(0x7F7F7F73)
                                        .withOpacity(0.45),
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
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        SizedBox(width: 15.w),
                                        Text(
                                          "PRIZE CONTRIBUTOR",
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              color: Colors.white),
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
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.h),
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
                                                  fontSize: 11.sp,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "PRIZES",
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.white),
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
                                                  fontSize: 11.sp,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "TOTAL CONTRIBUTION",
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.white),
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
                                                  fontSize: 11.sp,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "SUBSCRIBERS",
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.white),
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
                  ],
                ),
              ),
            ),
            Container(
              color: const Color(0xFF5D5062),
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
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
                                            fontSize: 14.sp,
                                            color: Colors.pink,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'ubscribe and ',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.white),
                                        ),
                                        TextSpan(
                                          text: 'W',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.pink,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'in',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Connect, Scratch and Win!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.sp),
                                  )
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Visit & ‘Subscribe’ to any Smartbazaar VendorBizSpace for upto 5 daily ‘FREE Scratch & Win’ chances",
                                style: TextStyle(
                                    fontSize: 8.sp, color: Colors.white),
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          child: Text(
                            "How To Play",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                          onPressed: () {},
                        ),
                        OutlinedButton(
                          child: Text(
                            "View Rules",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                          onPressed: () {},
                        ),
                        OutlinedButton(
                          child: Text(
                            "Subscribe & Win",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
