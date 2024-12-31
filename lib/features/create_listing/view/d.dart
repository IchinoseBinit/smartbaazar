// class CalendarWithTime extends StatefulWidget {
//   const CalendarWithTime({super.key});

//   @override
//   _CalendarWithTimeState createState() => _CalendarWithTimeState();
// }

// class _CalendarWithTimeState extends State<CalendarWithTime> {
//   DateTime? selectedDateTime;

//   void _onDateSelected(DateTime? date) {
//     if (date != null) {
//       setState(() {
//         selectedDateTime = date;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             selectedDateTime != null
//                 ? "Selected Date & Time: $selectedDateTime"
//                 : "No Date Selected",
//             style: const TextStyle(fontSize: 18),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () async {
//               final pickedDate = await showDialog<DateTime>(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AdoptiveCalendar(
//                     initialDate: DateTime.now(), // Default current date
//                     action: true, // Enable action buttons (Confirm/Cancel)
//                   );
//                 },
//               );
//               _onDateSelected(pickedDate);
//             },
//             child: const Text("Open Calendar"),
//           ),
//         ],
//       ),
//     );
//   }
// }