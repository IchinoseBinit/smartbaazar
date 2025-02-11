// class ReturnPolicyWidget extends StatefulWidget {
//   final dynamic phoneresp;

//   const ReturnPolicyWidget({Key? key, required this.phoneresp})
//       : super(key: key);

//   @override
//   _ReturnPolicyWidgetState createState() => _ReturnPolicyWidgetState();
// }

// class _ReturnPolicyWidgetState extends State<ReturnPolicyWidget> {
//   Map<int, bool> _selectedOptions = {}; // Track selected options dynamically

//   @override
//   void initState() {
//     super.initState();
//     // Initialize the selected options map
//     for (var option in widget.phoneresp.result[4].options) {
//       _selectedOptions[option.id] = false; // Default to unchecked
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CreateListingCardWidget(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Return Policy',
//             style: TextStyle(
//               fontSize: 14.sp,
//               fontWeight: FontWeight.w600,
//               color: Colors.black,
//             ),
//           ),
//           ...widget.phoneresp.result[4].options.map<Widget>((option) {
//             return Row(
//               children: [
//                 Checkbox(
//                   value: _selectedOptions[option.id] ?? false,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       _selectedOptions[option.id] = value ?? false;
//                     });

//                     // Add logic to handle changes
//                     cf?.add([
//                       'cf.${widget.phoneresp.result[4]?.id}',
//                       option.id,
//                     ]);
//                   },
//                 ),
//                 Flexible(
//                   child: Text(
//                     option.value,
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           }).toList(),
//         ],
//       ),
//     );
//   }
// }
