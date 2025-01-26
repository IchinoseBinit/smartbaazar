import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';

class PeopleReviewsWidget extends StatelessWidget {
  final List<RatingComment> rate;
  const PeopleReviewsWidget({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    print("pinky ${rate.first.name}");
    return SizedBox(
      height: 150.h,
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
              width: 200.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: const Color(0xffD9D9D9))),
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(value.photo),
                          radius: 20,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      Column(
                        children: [
                          Text(value.name),
                          SizedBox(
                            height: 5.h,
                          ),
                          RatingBar.builder(
                            initialRating: double.tryParse(value.ratingStar) ??
                                0, // Fallback to 0 if parsing fails
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating:
                                false, // Set to false if half ratings are not needed
                            itemCount: 5,
                            itemSize: 15.w, // Responsive size
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(Icons.star,
                                color: Color(0xFFffa500)),
                            onRatingUpdate:
                                (rating) {}, // No action needed for updates in this case
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Flexible(
                    child: Text(
                      value.comment, // Truncate text after 20 characters

                      style: TextStyle(fontSize: 12.sp, color: Colors.black),
                      maxLines: null, // Allow text to wrap to multiple lines
                      overflow: TextOverflow
                          .ellipsis, // Show "..." if the text overflows
                      softWrap: true, // Allow text to wrap to next line
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
