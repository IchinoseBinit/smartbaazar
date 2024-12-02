import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/feed_page/widget/feed_container.dart';
import 'package:smartbazar/features/feed_page/widget/promo_card.dart';
import 'package:smartbazar/features/feed_page/widget/story_add_widget.dart';
import 'package:smartbazar/features/home/view/header.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GenericSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 170,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF392574),
                    Color(0xFF681b4e),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(height: 50, child: NewSearchWidget()),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              openCart,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "Shopping",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              servicesIcon,
                              //  color: Colors.white,
                            ),
                            Text(
                              "Services",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              jobIcon,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "TradeHub",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                              child: Image.asset(
                                  fit: BoxFit.cover,
                                  height: 120,
                                  "assets/images/subscribe.png")),
                          Positioned(
                              bottom: 12,
                              right: 1,
                              left: 1,
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    // borderRadius: BorderRadius.circular(1)
                                  ),
                                  child: const Icon(Icons.add)))
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return StoryAddWidget(index: index);
                            }),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20.h,
              ),
              const FeedContainer(),
              const PromoCard(),
              SizedBox(
                height: 30.h,
              ),
              const FeedContainer(),
              const PromoCard(),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
