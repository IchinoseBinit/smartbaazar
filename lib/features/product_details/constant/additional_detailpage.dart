import 'package:flutter/material.dart';

class AdditonalDetailsWidget extends StatelessWidget {
  final String title;
  final String desp;

  // Constructor to require title and description parameters
  AdditonalDetailsWidget({
    super.key,
    required this.title,
    required this.desp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      color: const Color(0xFFf9fbfe),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title), // Directly use title without checking null
          Wrap(
            children: [Text(desp)], // Directly use desp without checking null
          ),
        ],
      ),
    );
  }
}
