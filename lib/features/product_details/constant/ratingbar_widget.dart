import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarWidget extends StatelessWidget {
  final int star;
  final double value;
  final double width;
  final int numStar;
  final int? staryouwant;

  const StarWidget(
      {super.key,
      required this.star,
      required this.value,
      required this.width,
      required this.staryouwant,
      required this.numStar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(-1.0, 1.0), // Flip horizontally
          child: RatingBar.builder(
            ignoreGestures: true, // Disable user interaction
            tapOnlyMode: true,
            initialRating: 5,
            minRating: 0, // Minimum rating is 0
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: staryouwant!, // Total stars to display
            itemSize: 25,
            itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => const Icon(Icons.star,
                color: Color(0xffFFA500)), // Default yellow stars
            onRatingUpdate: (rating) {},
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: width.w,
          height: 8,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value: value,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
              backgroundColor: const Color(0xffD6D6D6),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(numStar.toString())
      ],
    );
  }
}



class ImageCarousel extends StatefulWidget {
  final List<Item> items; // Your list of items containing image_url

  const ImageCarousel({super.key, required this.items});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          
        ],
      ),
    );
  }
}

class Item {
  final String image_url;

  Item({required this.image_url});
}
