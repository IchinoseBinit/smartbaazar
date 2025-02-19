import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarWidget extends StatelessWidget {
  final int star; // Total stars (always 5 in this case)
  final double value; // Progress bar value
  final double width; // Width of the progress bar
  final int numStar; // Number of stars to display as numeric
  final int? staryouwant; // Number of highlighted stars (yellow)
  final int? indexs;

  const StarWidget(
      {super.key,
      required this.star,
      required this.value,
      required this.width,
      required this.staryouwant,
      required this.numStar,
      required this.indexs});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Dynamic stars with yellow highlighting
        Row(
          children: List.generate(
            indexs!, // Always generates 5 stars
            (index) => Icon(
              Icons.star,
              // Highlight the last N stars based on `staryouwant`
              color: (index < (indexs ?? 0)) ? const Color(0xffFFA500) : Colors.grey,
              size: 20.w, // Adjust the size of the stars if needed
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        // Progress bar
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
        // Numeric representation of stars
        Text(numStar.toString()),
      ],
    );
  }
}

// class StarWidgetDemo extends StatelessWidget {
//   const StarWidgetDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Star Widget Demo'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: List.generate(
//             5, // Generates rows for 5, 4, 3, 2, 1 yellow stars
//             (index) {
//               int staryouwant = 5 - index; // Dynamically decrease yellow stars
//               return Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: StarWidget(
//                   star: 5,
//                   value: staryouwant / 5, // Example progress bar value
//                   width: 200, // Example width for progress bar
//                   staryouwant: staryouwant,
//                   numStar: staryouwant, // Display the number of yellow stars
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
