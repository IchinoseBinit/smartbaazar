import 'package:flutter/material.dart';
import 'package:smartbazar/constant/color_constant.dart';


class PerksWidget extends StatelessWidget {
  String first;
  String second;
  String third;
  String fourth;
  PerksWidget({
    super.key,
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      // padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, Color(0xFFf3f3f3)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          // margin: EdgeInsets.only(left: 10.w),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
                border: Border.all(
                    width: 1, color: const Color(0xffD9D9D9))),
            child: Text(
              first,
              style: headerstyle.copyWith(fontSize: 13, color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
               border: Border.all(
                    width: 1, color: const Color(0xffD9D9D9))),
            child: Text(
              second,
              style: headerstyle.copyWith(fontSize: 13, color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
               border: Border.all(
                    width: 1, color: const Color(0xffD9D9D9))),
            child: Text(
              third,
              style: headerstyle.copyWith(fontSize: 13, color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
                border: Border.all(
                    width: 1, color: const Color(0xffD9D9D9))),
            child: Text(
              fourth,
              style: headerstyle.copyWith(fontSize: 13, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
