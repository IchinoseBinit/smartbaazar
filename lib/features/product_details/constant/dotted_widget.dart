import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';

class dotted_widget extends StatelessWidget {
  const dotted_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: DottedBorder(
      radius: Radius.circular(4),
        
      padding: EdgeInsets.all(5),
        color: Color(0xff362677),
        child: Column(
        children: [
          SizedBox(height: 10.h,),
      
          Image.asset("assets/images/ear.png"),
      SizedBox(height: 6.h,),
      Container(
        padding: EdgeInsets.all(4),
        alignment: Alignment.center,
        width: 100.w,
        decoration: BoxDecoration(
          color: Color(0xff362677),
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