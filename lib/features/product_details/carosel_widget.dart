import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';

class CarsoselWidget extends StatefulWidget {
  const CarsoselWidget({Key? key, required this.items, int? dots})
      : dots = dots ?? items.length, // Sets dots to a stable value
        super(key: key);

  final List<String> items;
  final int dots;

  @override
  State<CarsoselWidget> createState() => _CarsoselWidgetState();
}

class _CarsoselWidgetState extends State<CarsoselWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Positioned(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 300.0.h, // Responsive height
              viewportFraction: 1.0,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: widget.items.map((item) {
              return SizedBox(
                width: double.infinity,
                child: Image.network(
                  item,
                  fit: BoxFit.fill,
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
          left: 200.w,
          bottom: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.dots, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentIndex == index
                      ? 16.0
                      : 12.0, // Larger dot for active index
                  height: currentIndex == index ? 16.0 : 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? const Color.fromARGB(255, 83, 81, 81)
                        : Colors.white,
                  ),
                ),
              );
            }),
          ),
        ),
         Positioned(
          left: 20.w,

          bottom: 5,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 1),
                   padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10.h),
            decoration: const BoxDecoration(
              color: ColorConstant.whiteColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30)
              )
            ),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Image.asset("assets/images/tire.png",
            
                     
            color: ColorConstant.blackColor,
            ),
             SizedBox(width: 7.w,),
            Text("3.8K",
            style: headerstyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorConstant.blackColor
            ),
            
            ),
            SizedBox(width: 20.w,),
             Image.asset("assets/images/Frame.png",
             color: ColorConstant.blackColor,
             height: 30,
             width: 30,
             ),
             SizedBox(width: 7.w,),
            Text("120",
             style: headerstyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorConstant.blackColor
            ),
            
            ),
                       SizedBox(width: 20.w,),

             Image.asset("assets/icon/Frame.png"),
             SizedBox(width: 7.w,),
            Text("4.5",
             style: headerstyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorConstant.blackColor
            ),
            )
           ],
          ),
              ),
              Container(

                
                   padding: EdgeInsets.symmetric(vertical: 5.h),
            decoration: const BoxDecoration(
              color: ColorConstant.whiteColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),
              bottomRight: Radius.circular(30)
              )
            ),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                                        SizedBox(width: 10.w,),

                    Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Image.asset('assets/images/wave.png',
                                         
                        
                        ),
                        Text("ASk",
                        style: headerstyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xff362677)
                        ),
                        )
                      ],
                    ),
                    SizedBox(width: 10.w,),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/group.png"),
                    ),
                                        SizedBox(width: 5.w,),

                  ],
                ),
              )
            ],
          ),
        ),
      ],
    )

        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     CarouselSlider(
        //       options: CarouselOptions(
        //         height: 250.0.h, // Responsive height
        //         viewportFraction: 1.0,
        //         initialPage: 0,
        //         onPageChanged: (index, reason) {
        //           setState(() {
        //             currentIndex = index;
        //           });
        //         },
        //       ),
        //       items: widget.items.map((item) {
        //         return SizedBox(
        //           width: double.infinity,
        //           child: Image.network(
        //             item,
        //             fit: BoxFit.fill,
        //           ),
        //         );
        //       }).toList(),
        //     ),
        //     SizedBox(height: 10.h),
        //     // Dots representing the current index
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: List.generate(widget.dots, (index) {
        //         return GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               currentIndex = index;
        //             });
        //           },
        //           child: AnimatedContainer(
        //             duration: const Duration(milliseconds: 300),
        //             width: currentIndex == index
        //                 ? 16.0
        //                 : 12.0, // Larger dot for active index
        //             height: currentIndex == index ? 16.0 : 12.0,
        //             margin: const EdgeInsets.symmetric(
        //                 vertical: 8.0, horizontal: 4.0),
        //             decoration: BoxDecoration(
        //               shape: BoxShape.circle,
        //               color: currentIndex == index
        //                   ? const Color.fromARGB(255, 83, 81, 81)
        //                   : Colors.grey,
        //             ),
        //           ),
        //         );
        //       }),
        //     ),
        //   ],
        // ),
        );
  }
}
