import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/product_details/constant/product_detail_widget.dart';
import 'package:smartbazar/features/product_details/product_deatials_screen.dart';

class HeaderBannerWidget extends StatelessWidget {
  const HeaderBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Color(0xFf8c8c8c)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/images/product_logo.png"),
              SizedBox(
                width: 5.w,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "NIC Asia Capital",
                    style: headerstyle.copyWith(
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Icon(Icons.logout)
                ],
              ),
            ],
          ),
          Text(
            "GLOBAL BRAND ",
            style: headerstyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}