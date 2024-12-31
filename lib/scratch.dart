// class ScratchCard extends StatefulWidget {
//   const ScratchCard({Key? key}) : super(key: key);

//   @override
//   State<ScratchCard> createState() => _ScratchCardState();
// }

// class _ScratchCardState extends State<ScratchCard> {
//   late ConfettiController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller =  ConfettiController(
//       duration:  const Duration(seconds: 2),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Scratch card")),
//       body: Center(
//         child: Scratcher(
//           brushSize: 50,
//           threshold: 75,
//           color: Colors.red,
//           image: Image.asset(
//             "assets/images/smartbazarlogo.png",
//             fit: BoxFit.fill,
//           ),
//           onChange: (value) => print("Scratch progress: $value%"),
//           onThreshold: () => _controller.play(),
//           child: Container(
//             height: 300,
//             width: 300,
//             color: Colors.purple,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//             Text("scrartch and win"),
//                 Column(
//                   children: [
//                     ConfettiWidget(
//                       blastDirectionality: BlastDirectionality.explosive,
//                       confettiController: _controller,
//                       particleDrag: 0.05,
//                       emissionFrequency: 0.05,
//                       numberOfParticles: 100,
//                       gravity: 0.05,
//                       shouldLoop: false,
//                       colors: const [
//                         Colors.green,
//                         Colors.red,
//                         Colors.yellow,
//                         Colors.blue,
//                         Colors.purple
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }