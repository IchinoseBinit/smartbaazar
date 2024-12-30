import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/feed_page/model/feed_gift_card_model.dart';
import 'package:smartbazar/features/home/view/custom_card_backclipper.dart';

void showCustomBottomSheet(
    BuildContext context, FeedGiftCardModel feedGiftCard) {
  String getMembershipImage(String? membershipId) {
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
        return 'assets/icon/global_brand.png';
    }
  }

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
                                      child: Image.network(
                                        feedGiftCard.userDetail!.vendorName ??
                                            '',
                                        fit: BoxFit.cover,
                                        width: 60,
                                        height: 60,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          feedGiftCard
                                                  .userDetail?.vendorImage ??
                                              '',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(width: 15.w),
                                        Text(
                                          feedGiftCard
                                                  .buyOrWinCard?.first.name ??
                                              '',
                                          style: TextStyle(
                                              fontSize: 7.sp,
                                              color: Colors.white),
                                        ),
                                        SizedBox(width: 5.w),
                                        const Icon(
                                          Icons.waving_hand,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                        SizedBox(width: 15.w),
                                        Image.asset(
                                          getMembershipImage(feedGiftCard
                                              .userDetail?.membershipId),
                                          width: 16.w,
                                          height: 16.h,
                                          color: Colors.black45,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          feedGiftCard.userDetail
                                                  ?.membershipTitle ??
                                              '',
                                          style: TextStyle(
                                              fontSize: 7.sp,
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
                                              '${feedGiftCard.userDetail!.livePrizes ?? 0}',
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
                                              feedGiftCard.userDetail!
                                                      .totalContribution ??
                                                  '',
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
                                              '${feedGiftCard.userDetail!.subscribers ?? 0}',
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
                    //i think this should be in list and scrollable horizontally
                    // Image.asset("assets/images/poster.png",
                    //     width: 168.w, height: 242.h),
                    SizedBox(
                      height: 280.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: feedGiftCard.buyOrWinCard!.length,
                        itemBuilder: (context, index) {
                          return PopUpDiscountImageCard(
                            feedGiftCard: feedGiftCard.buyOrWinCard![index],
                          );
                        },
                      ),
                    )
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

class PopUpDiscountImageCard extends StatelessWidget {
  const PopUpDiscountImageCard({super.key, required this.feedGiftCard});
  final BuyOrWinCard feedGiftCard;
  @override
  Widget build(BuildContext context) {
    print(feedGiftCard.image);
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 10),
      child: Card(
        elevation: 8,
        child: Container(
            // margin: const EdgeInsets.only(top: 5),
            height: 240.h,
            width: 260.w,
            // padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: ClipPath(
                    clipper: CustomCardBackgroundClipper(),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 300.w,
                      height: 200.h,
                      color: const Color(0xffA50157),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            feedGiftCard.name ?? '',
                            style: headerstyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "worth  ",
                                style: headerstyle.copyWith(
                                  fontSize: 11,
                                )),
                            TextSpan(
                                text: "${feedGiftCard.worth} x25",
                                style: headerstyle.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ]))
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 60.h,
                    bottom: 100.h,
                    child: CircleAvatar(
                      radius: 75.sp,
                      backgroundColor: const Color(0xffA50157),
                    )),
                Positioned(
                    left: 55.h,
                    bottom: 100.h,
                    child: CircleAvatar(
                      radius: 75.sp,
                      backgroundImage: feedGiftCard.image != null &&
                              feedGiftCard.image!.isNotEmpty
                          ? NetworkImage(feedGiftCard.image!)
                          : const AssetImage('assets/images/smartbazarlogo.png')
                              as ImageProvider,
                    )),
                Positioned(
                  top: 40.h,
                  left: 135.h,
                  child: CircleAvatar(
                      radius: 28.5.sp,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("x25",
                                style: headerstyle.copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffEC325D))),
                            Text("PRIZES",
                                style: headerstyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
                                )),
                          ],
                        ),
                      )),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // CircleAvatar(
                              //   backgroundImage: NetworkImage(vendorImage),
                              //   radius: 20.0,
                              // ),
                              SizedBox(
                                width: 35.w,
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                // Thickness of the border
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey, // Border color
                                    width: 2.0, // Border width
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(feedGiftCard.vendorName!),
                                  radius:
                                      18.0, // Adjust radius based on padding
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              // Text("by $vendorname"),

                              // Text(
                              //   "by $vendorname",
                              //   style: headerstyle.copyWith(
                              //     fontSize: 12.sp, // Adjust font size if needed
                              //   ),
                              //   textAlign: TextAlign.center, // Centers the text
                              //   overflow: TextOverflow.ellipsis, // Truncates text with ellipsis
                              //   maxLines: 1, // Ensures a single line with ellipsis if overflowed
                              //   softWrap: false, // Prevents wrapping to a new line
                              // ),

                              // SizedBox(
                              //   width: 200.w, // Fixed width for the text box
                              //   child: Text(
                              //     "by ${vendorname.length > 12 ? vendorname.substring(0, 12) + '...' : vendorname}",
                              //     style: headerstyle.copyWith(
                              //       fontSize: 12.sp, // Adjust font size if needed
                              //     ),
                              //     textAlign: TextAlign.center, // Centers the text
                              //     overflow: TextOverflow.ellipsis, // Truncates text with ellipsis
                              //     maxLines: 1, // Keeps the text on a single line
                              //   ),
                              // ),

                              Text(
                                "by ${feedGiftCard.vendorImage!.length > 15 ? '${feedGiftCard.vendorImage!.substring(0, 12)}...' : feedGiftCard.vendorImage}",
                                style: const TextStyle(
                                  fontSize: 14,
                                  // Use a fixed font size for debugging
                                  color: Colors.black, // Ensure visible text
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icon/jobIcon.svg",
                                height: 10,
                                width: 10,
                                color: const Color(0xff831F67),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                '${feedGiftCard.winners ?? 0} ',
                                style: headerstyle.copyWith(
                                    color: const Color(0xff831F67),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "WINNERS",
                                style: headerstyle.copyWith(
                                    color: const Color(0xff831F67),
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/icon/Vector.png",
                                color: const Color(0xff831F67),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                '${feedGiftCard.wow ?? 0}k ',
                                style: headerstyle.copyWith(
                                    color: const Color(0xff831F67),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "ENQUIRE",
                            style: headerstyle.copyWith(
                                color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "|",
                            style: headerstyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "WIN",
                            style: headerstyle.copyWith(
                                color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "|",
                            style: headerstyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "BUY",
                            style: headerstyle.copyWith(
                                color: Colors.black, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            )),
      ),
    );
  }
}
