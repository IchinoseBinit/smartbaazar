import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';

class PeopleReviewsWidget extends StatelessWidget {
  final List<RatingComment> rate;
  const PeopleReviewsWidget({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h, // Fixed height
      padding: const EdgeInsets.all(3),
      width: double.infinity,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: rate.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          RatingComment value = rate[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            elevation: 4,
            child: Container(
              width: 200.w, // Fixed width for each review card
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: const Color(0xffD9D9D9)),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(value.photo),
                          radius: 20,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.name.length > 7
                                ? '${value.name.substring(0, 7)}...' // Show first 6 characters + "..."
                                : value
                                    .name, // Show full name if <= 6 characters
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          RatingBar.builder(
                            initialRating:
                                double.tryParse(value.ratingStar) ?? 0,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemSize: 15.w,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(Icons.star,
                                color: Color(0xFFffa500)),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  // Fixed height TextBox to limit long text
                  SizedBox(
                    height: 40.h, // Adjust height as needed
                    child: Text(
                      value.comment,
                      style: TextStyle(fontSize: 12.sp, color: Colors.black),
                      maxLines: 2, // Limit text to 2 lines
                      overflow:
                          TextOverflow.ellipsis, // Show "..." for overflow
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
