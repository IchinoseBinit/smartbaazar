import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/scratch_win/model/subscribe_and_win_model.dart';

class PostCard extends StatelessWidget {
  final String photo, image, subscribers, caption, name;
  bool? isLive;
  PostCard(
      {super.key,
      required this.image,
      required this.photo,
      required this.caption,
      required this.name,
      this.isLive = false,
      required this.subscribers});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 10.h,
      // padding: const EdgeInsets.all(2),
      margin: EdgeInsets.only(left: 5.w),
      width: MediaQuery.sizeOf(context).width * 0.65,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color(0xfD9D9D9)),
          color: ColorConstant.whiteColor,
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(photo)),
                  border: Border.all(color: Color(0xffBDB6B6)),
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name ?? 'name',
                      style: headerstyle.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: ColorConstant.blackColor)),
                  Row(
                    children: [
                      Text("$subscribers subscribers",
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color(0xff808080))),
                      const SizedBox(width: 15),
                      const Text(
                        "•",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${subscribers}h",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Image.network(
            image,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text.rich(
            textDirection: TextDirection.ltr,
            TextSpan(
              text: caption,
              style: TextStyle(fontSize: 12),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5),
            child: Divider(
              height: 0.3,
              color: Color(0xff808080),
            ),
          ),
          SizedBox(
            height: 50.h,
            width: MediaQuery.sizeOf(context).width * 0.65,
            child: Row(
              children: [
                SizedBox(
                  width: 9.w,
                ),
                Icon(Icons.favorite_border,
                    color: ColorConstant.blackColor.withOpacity(0.7)),
                SizedBox(
                  width: 9.w,
                ),
                Icon(Icons.comment_outlined,
                    color: ColorConstant.blackColor.withOpacity(0.7)),
                SizedBox(
                  width: 9.w,
                ),
                Icon(Icons.share_outlined,
                    color: ColorConstant.blackColor.withOpacity(0.7)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
