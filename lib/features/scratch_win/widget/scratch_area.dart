import 'package:flutter/material.dart';

// class ScratchArea extends StatefulWidget {
//   const ScratchArea({super.key});

//   @override
//   _ScratchAreaState createState() => _ScratchAreaState();
// }

// class _ScratchAreaState extends State<ScratchArea> {
//   late ConfettiController _controller;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize ConfettiController
//     _controller = ConfettiController(duration: const Duration(seconds: 2));
//   }

//   @override
//   void dispose() {
//     // Dispose the ConfettiController
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       // clipper: PerfectTicketClipper(), // this is previous
//       clipper: ScallopedWithGapsClipper(),
//       child: SizedBox(
//         width: 334,
//         height: 164,
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             // Scratcher widget for the scratch functionality
//             Scratcher(
//               enabled: false,
//               color: const Color(0xFFF5BF05),
//               threshold: 60,
//               brushSize: 50,
//               onChange: (value) => print("Scratch progress: $value%"),
//               onThreshold: () {
//                 // Trigger confetti when scratch threshold is reached
//                 _controller.play();
//               },
//               image: Image.asset(
//                 "assets/images/scratch_here_three.png",
//                 fit: BoxFit.scaleDown,
//               ),
//               child: Center(
//                 child: Text(
//                   'Congratulations!\nYou revealed the prize!',
//                   style: GoogleFonts.greatVibes(
//                     fontSize: 40,
//                     color: const Color.fromARGB(255, 255, 255, 255),
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),

//             //**Confetti widget for the confetti animation
//             ConfettiWidget(
//               confettiController: _controller,
//               blastDirectionality: BlastDirectionality.explosive,
//               particleDrag: 0.05,
//               emissionFrequency: 0.05,
//               numberOfParticles: 100,
//               gravity: 0.1,
//               shouldLoop: false,
//               colors: const [
//                 Colors.green,
//                 Colors.red,
//                 Colors.yellow,
//                 Colors.blue,
//                 Colors.purple,
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ** for scallopededge deign gpt
class ScallopedWithGapsClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 8.0; // Smaller radius for each semicircle
    double diameter = radius * 2;
    double gap = 15.0; // Adjusted gap between each scallop
    double totalStep = diameter + gap; // Total space taken by one scallop + gap
    double remainingHeight = size.height % totalStep; // To center vertically

    Path path = Path();

    // Start from the top-left corner
    path.moveTo(0, 0);

    // Top edge (straight line)
    path.lineTo(size.width, 0);

    // Right edge with scallops and gaps
    double currentY = remainingHeight / 2; // Center the pattern vertically
    while (currentY + diameter <= size.height) {
      // Draw a scallop (arc)
      path.arcToPoint(
        Offset(size.width, currentY + diameter),
        radius: Radius.circular(radius),
        clockwise: false,
      );

      currentY += diameter;

      // Draw a straight line for the gap
      if (currentY + gap <= size.height) {
        path.lineTo(size.width, currentY + gap);
        currentY += gap;
      }
    }

    // Bottom edge (straight line)
    path.lineTo(0, size.height);

    // Left edge with scallops and gaps
    currentY = size.height - (remainingHeight / 2); // Start from the bottom
    while (currentY - diameter >= 0) {
      // Draw a scallop (arc)
      path.arcToPoint(
        Offset(0, currentY - diameter),
        radius: Radius.circular(radius),
        clockwise: false,
      );

      currentY -= diameter;

      // Draw a straight line for the gap
      if (currentY - gap >= 0) {
        path.lineTo(0, currentY - gap);
        currentY -= gap;
      }
    }

    // Close the path
    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}




// ** for design pattern of the scratch card 
// class PerfectTicketClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double radius = 15; // Radius of each scallop (semi-circle)
//     double scallopWidth = radius * 2; // Full width of each scallop
//     double spacing = 10.0; // Space between scallops

//     Path path = Path();

//     // Start from top-left corner
//     path.moveTo(0, 0);

//     // Top edge (straight line)
//     path.lineTo(size.width, 0);

//     // Right edge with scallops
//     double currentY = 0;
//     while (currentY < size.height) {
//       if (currentY + scallopWidth > size.height) break;

//       path.arcToPoint(
//         Offset(size.width, currentY + scallopWidth),
//         radius: Radius.circular(radius),
//         clockwise: false,
//       );
//       currentY += scallopWidth + spacing;
//     }

//     // Bottom-right corner
//     path.lineTo(size.width, size.height);

//     // Bottom edge (straight line)
//     path.lineTo(0, size.height);

//     // Left edge with scallops
//     currentY = size.height;
//     while (currentY > 0) {
//       if (currentY - scallopWidth < 0) break;

//       path.arcToPoint(
//         Offset(0, currentY - scallopWidth),
//         radius: Radius.circular(radius),
//         clockwise: false,
//       );
//       currentY -= scallopWidth + spacing;
//     }

//     // Bottom-left corner
//     path.lineTo(0, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
