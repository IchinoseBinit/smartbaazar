import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/scratch_win/widget/bottom_info.dart';
import 'package:smartbazar/features/scratch_win/widget/scratch_area.dart';

class ScratchCard extends StatefulWidget {
  const ScratchCard({super.key});

  @override
  State<ScratchCard> createState() => _ScratchCardState();
}

class _ScratchCardState extends State<ScratchCard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Using a dynamic width and height for responsiveness
    // Set the card width to be 100% of the screen width to ensure it spans the entire width of the device
    final cardWidth = screenWidth * 1;
    // Set the card height to 71.1% of the screen height for a proportionate layout based on screen size
    final cardHeight = screenHeight * 0.788;

    return Scaffold(
      backgroundColor: const Color.fromARGB(134, 56, 51, 51),
      body: Center(
        child: Container(
          width: cardWidth,
          height: cardHeight.h,
          decoration: BoxDecoration(
            color: const Color(0xFF362677),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              _buildHeader(context),
              _buildThankYouText(),
              _buildImageWithText(),
              _buildScratchArea(),
              _buildBottomInfo(),
            ],
          ),
        ),
      ),
    );
  }

  // Header with Terms and Close button
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '*Terms and conditions apply.',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.5,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  // Thank You Text
  Widget _buildThankYouText() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        "Thank you for following us. Scratch and win to try your luck!",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }

  // Image and Text in a Row
  Widget _buildImageWithText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: Image.asset(
            'assets/images/scratch.png',
            fit: BoxFit.contain,
          ),
        ),
        const Column(
          children: [
            Text(
              'Daily prizes up for grabs',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Text(
              'Try your luck!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 33,
                color: Colors.white,
                height: 1.2,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ],
    );
  }

  // Scratch Area
  Widget _buildScratchArea() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: ScratchArea(), // Assuming ScratchArea is already implemented
    );
  }

  // Bottom Info (Terms and Ads)
  Widget _buildBottomInfo() {
    return Container(
      width: double.infinity,
      // height: 215,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: const BottomInfo(), // Assuming BottomInfo is already implemented
    );
  }
}
