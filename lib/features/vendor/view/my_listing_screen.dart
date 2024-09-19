import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/vendor/view/update_listing_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MyListingScreen extends StatelessWidget {
  const MyListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.mic),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'My Listing',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Text('Go back',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff888888))),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, int index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: const MyListinDetails(),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 14.h,
                      ),
                  itemCount: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class MyListinDetails extends StatelessWidget {
  const MyListinDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff00000040).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 7.w,
              ),
              const Text('Options'),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => UpdateListing()));
                },
                child: const Icon(
                  Icons.edit,
                  color: Color(0xffADADAD),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Icon(
                Icons.visibility_off,
                color: Color(0xffADADAD),
              ),
              SizedBox(
                width: 10.w,
              ),
              SvgPicture.asset(deleteIcon)
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 3.w,
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xffF6F1F1),
                  ),
                  child: Image.asset(
                    ImageConstant.laptopImage,
                    height: 55.h,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acer Aspire 5 A515-56-32DK Intel Core i3, 11th Gen/15.6 FHD',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Icon(
                            Icons.visibility,
                             size: 16.sp,
                            color: const Color(0xff888888),
                                                 ),
                                                 Text(
                            '2k Views',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 9.sp,
                              color: const Color(0xff888888),
                            ),
                                                 ),
                         ],
                       ),
                      Row(
                        children: [
                          Icon(
                            Icons.lock_clock,
                            size: 16.sp,
                            color: const Color(0xff888888),
                          ),
                          Text(
                            '2 weeks ago',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 9.sp,
                              color: const Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                       Row(
                         children: [
                           Icon(
                            Icons.location_on,
                             size: 16.sp,
                            color: const Color(0xff888888),
                                                 ),
                                                 Text(
                            'kathamandu',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 9.sp,
                              color: const Color(0xff888888),
                            ),
                                                 ),
                         ],
                       ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Rs 60,000',
                    style: TextStyle(
                        color: const Color(0xff36383C),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
