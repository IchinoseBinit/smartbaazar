
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';

import 'package:smartbazar/features/product_details/product_deatials_screen.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      decoration: const BoxDecoration(
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
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.location_on),
                        Text("Durbarmarg,Kathmandu"),
                        Icon(Icons
                            .share_location_rounded)
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/fone.png")
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
              Icon(Icons.location_on_outlined),
              SizedBox(
                width: 10.w,
              ),
              Text("2.5KM"),
              SizedBox(
                width: 10.w,
              ),
              Icon(Icons.speed_outlined),
              Text("24 to 48 hours"),
              Spacer(),
              Image.asset("assets/images/fone.png")
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