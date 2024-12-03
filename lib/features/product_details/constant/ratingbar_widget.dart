import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class star_widget extends StatelessWidget {
  double star;
  double value;
  double width;
  int numstar;

  star_widget(
      {super.key,
      required this.star,
      required this.value,
      required this.width,
      required this.numstar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        RatingBar.builder(
          initialRating: star,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: numstar,
          itemSize: 25,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) =>
              const Icon(Icons.star, color: Color(0xFFffa500)),
          onRatingUpdate: (rating) {},
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: width.w,
          height: 8,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value: value,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              backgroundColor: Color(0xffD6D6D6),
            ),
          ),
        ),
        SizedBox(width: 10.w,),
        Text(numstar.toString())
      ],
    );
  }
}