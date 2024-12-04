import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/product_item_widget.dart';


class dotted_widget extends StatelessWidget {
  const dotted_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: DottedBorder(
      radius: const Radius.circular(4),
        
      padding: const EdgeInsets.all(5),
        color: const Color(0xff362677),
        child: Column(
        children: [
          SizedBox(height: 10.h,),
      
          Image.asset("assets/images/ear.png"),
      SizedBox(height: 6.h,),
      Container(
        padding: const EdgeInsets.all(4),
        alignment: Alignment.center,
        width: 100.w,
        decoration: BoxDecoration(
          color: const Color(0xff362677),
          borderRadius: BorderRadius.circular(4)
        ),
        child: Text("50 % OFF",
        style: headerstyle,
        )),
        SizedBox(height: 5.h,),
      
      
        ],
      )),
    );
  }
}