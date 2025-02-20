import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratcher/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/scratch_win/api/lottery_scratch_api.dart';
import 'package:smartbazar/features/scratch_win/widget/scratch_area.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String logoPath = 'assets/images/adidas.png';

class ScratchCard extends ConsumerStatefulWidget {
  const ScratchCard({super.key});

  @override
  _ScratchCardState createState() => _ScratchCardState();
}

class _ScratchCardState extends ConsumerState<ScratchCard> {
  bool _checked = false;
  ConfettiController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final cardWidth = screenWidth;
    final cardHeight = screenHeight * 0.798;

    final scratchrespo = ref.watch(getscratchdataProvider);

    return Scaffold(
      backgroundColor: const Color.fromARGB(134, 56, 51, 51),
      body: scratchrespo.when(
        data: (data) {
          return Center(
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipPath(
                      // clipper: PerfectTicketClipper(), // this is previous
                      clipper: ScallopedWithGapsClipper(),
                      child: SizedBox(
                        width: 334.w,
                        height: 164.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Scratcher widget for the scratch functionality
                            Scratcher(
                              enabled: _checked,
                              color: const Color(0xFFF5BF05),
                              threshold: 60,
                              brushSize: 50,
                              onChange: (value) =>
                                  print("Scratch progress: $value%"),
                              onThreshold: () {
                                // Trigger confetti when scratch threshold is reached
                                _controller?.play();
                              },
                              image: Image.asset(
                                "assets/images/scratch_here_three.png",
                                fit: BoxFit.scaleDown,
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Image.network(
                                      data.data!.gifts!.image!,
                                      height: 80.h,
                                      width: 80.w,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      data.data!.gifts!.name!,
                                      style: GoogleFonts.greatVibes(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //**Confetti widget for the confetti animation
                            ConfettiWidget(
                              confettiController: _controller!,
                              blastDirectionality:
                                  BlastDirectionality.explosive,
                              particleDrag: 0.05,
                              emissionFrequency: 0.05,
                              numberOfParticles: 100,
                              gravity: 0.1,
                              shouldLoop: false,
                              colors: const [
                                Colors.green,
                                Colors.red,
                                Colors.yellow,
                                Colors.blue,
                                Colors.purple,
                              ],
                            ),
                          ],
                        ),
                      ),
                    ), // Assuming ScratchArea is already implemented
                  ),
                  Container(
                    width: double.infinity,
                    // height: 215,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //** checkbox
                            Checkbox(
                              value: _checked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _checked = value ??
                                      false; // Update the checkbox state
                                });
                              },
                              activeColor:
                                  const Color(0xFF362677), // Color when checked
                            ),

                            //** sized box widget for terms and conditions check
                            SizedBox(
                              width: 300.w,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'I agree on the ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: GestureDetector(
                                        onTap: () {
                                          // _showMessage(context, 'Terms & Conditions clicked!');
                                        },
                                        child: const Text(
                                          'terms & conditions',
                                          style: TextStyle(
                                            color: Color(0xFF362677),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const TextSpan(
                                      text: ' of ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: const Text(
                                          'Scratch & Win',
                                          style: TextStyle(
                                            color: Color(0xFF362677),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        // column for the the counts and the logo
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildInfoTile('Total gifts worth',
                                      data.data!.gifts!.worth!),
                                  _buildInfoTile('Participants',
                                      data.data!.total_participants!.total!),
                                  _buildInfoTile('Total prizes',
                                      data.data!.gifts!.total_worth!),
                                ],
                              ),
                            ),

                            //** grid view builder widget for logos
                            GridView.builder(
                              shrinkWrap:
                                  true, // Important to use inside a Column
                              physics:
                                  const NeverScrollableScrollPhysics(), // Disable scrolling for GridView
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4, // Number of items in a row
                                crossAxisSpacing:
                                    3, // Space between items horizontally
                                mainAxisSpacing:
                                    1.0, // Space between items vertically
                              ),
                              itemCount: 4, // Number of items
                              itemBuilder: (context, index) {
                                return _buildLogo(logoPath);
                              },
                            ),
                          ],
                        ),
                      ],
                    ), // Assuming BottomInfo is already implemented
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return Scaffold(
            body: Center(
                child: Text(
              "please login and try again",
              style: headerstyle,
            )),
          );
        },
        loading: () => Center(
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: 500.w,
              height: 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    );
  }
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

// Bottom Info (Terms and Ads)

Widget _buildInfoTile(String title, String value) {
  return Column(
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
      Text(
        value,
        style: const TextStyle(
          fontSize: 14, // fontsize is 20
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget _buildLogo(String path) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      width: 100, // Set width to 100
      height: 100, // Set height to 100
      color: const Color(0xFFEDECEC), // Background color for each grid item
      padding: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(15), // padding
        child: Image.asset(
          path,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
