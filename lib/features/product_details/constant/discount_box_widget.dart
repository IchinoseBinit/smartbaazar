import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class DiscountBoxWidget extends StatelessWidget {
  const DiscountBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
        return  Container(
        margin: const EdgeInsets.only(left: 5,top: 5),
            height: 95.h,
            width: 100.w,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("5*8 pieces"),
              SizedBox(height: 3.h,),
              const Text("Rs 45,000"),
              SizedBox(height: 3.h,),
              const Row(
                children: [
                  Icon(Icons.arrow_downward_rounded),
                  Text("30%")
                ],
              )
            ],
          ),
        );
        
      },),
    );
  }
}
