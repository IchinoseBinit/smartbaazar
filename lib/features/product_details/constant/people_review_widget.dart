import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PeopleReviewsWidget extends StatelessWidget {
  const PeopleReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  // color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(
                        
                      
                      6),
                      border: Border.all(color: Colors.grey)
                      ),
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.start,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      Column(
                        children: [
                          Text("Sushma Singh"),
                          SizedBox(
                            height: 5.h,
                          ),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            itemPadding:
                                const EdgeInsets
                                    .symmetric(
                                    horizontal: 1.0),
                            itemBuilder: (context, _) =>
                                const Icon(Icons.star,
                                    color: Color(
                                        0xFFffa500)),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                      "I really like the fit and\n the comfort ")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
