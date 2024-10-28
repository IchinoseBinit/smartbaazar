// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:scratcher/widgets.dart';
// import 'package:smartbazar/features/product_details/api/scratch_and_win_provider.dart';

// class ScratchAndWinScreen extends ConsumerWidget {
//   const ScratchAndWinScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // Reference to the provider
//     final scratchAndWinResponse = ref.watch(getScratchAndWinResponseProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Scratch and Win'),
//         centerTitle: true,
//         backgroundColor: Colors.orange,
//       ),
//       body: AlertDialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30),
//         ),
//         title: Align(
//           alignment: Alignment.center,
//           child: Text(
//             "You Earned a Gift Card!",
//             style: TextStyle(
//               color: Colors.green,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         content: scratchAndWinResponse.when(
//           data: (data) {
//             return _ScratchCardContent(
//               gift: data,
//             );
//           },
//           error: (error, stackTrace) {
//             print("error $stackTrace");
//           },
//           loading: () {
//             return CircularProgressIndicator();
//           },
//         ),
//       ),
//     );
//   }
// }

