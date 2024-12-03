import 'package:flutter/material.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';

import 'package:smartbazar/features/product_details/product_deatials_screen.dart';

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
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white, Color(0xFFf3f3f3)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 2),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
                border: Border.all(
                    width: 1, color: const Color.fromARGB(255, 88, 85, 85))),
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
                    width: 1, color: const Color.fromARGB(255, 88, 85, 85))),
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
                    width: 1, color: const Color.fromARGB(255, 88, 85, 85))),
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
                    width: 1, color: const Color.fromARGB(255, 88, 85, 85))),
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
