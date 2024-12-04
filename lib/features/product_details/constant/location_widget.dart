
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';


class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius:BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(colors: [
        Colors.white,
        Color(0xFFf3f3f3)
      ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text("Deliver to",
                  style: headerstyle.copyWith(
                    color: Colors.black87,
                    fontSize: 15
                  ),
                  ),
                  SizedBox(height: 3.h,),
                  Container(
                    width: 300.w,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color(0xffD9D9D9))),
                    child:  Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                        children: [
                           Icon(Icons.location_on),
                        SizedBox(width: 10,),
                        Text("Durbarmarg,Kathmandu"),
                        ],
                       ),
                         SizedBox(width: 10,),
                        
                        Image.asset("assets/images/point.png")
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/pathao.png")
            ],
          ),
            SizedBox(
      height: 10.h,
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.w,
              ),
                                         Icon(Icons.location_on),

              SizedBox(
                width: 10.w,
              ),
              const Text("2.5KM"),
              SizedBox(
                width: 10.w,
              ),
             Image.asset('assets/images/clock.png'),
             SizedBox(width: 5.w,),
              const Text("24 to 48 hours"),
              const Spacer(),
              Image.asset("assets/images/upaye.png")
            ],
          ),
            SizedBox(
      height: 10.h,
    ),
        ],
      ),
    );
  }
}