// class AutoCompleteExample extends StatefulWidget {
//   @override
//   _AutoCompleteExampleState createState() => _AutoCompleteExampleState();
// }

// class _AutoCompleteExampleState extends State<AutoCompleteExample> {
//   String selectedpickup = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Search Location"), backgroundColor: Colors.blue),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GooglePlaceAutoCompleteTextField(
//               textEditingController: controller,
//               googleAPIKey: "YOUR_API_KEY", // Replace with actual API key
//               debounceTime: 800,
//               countries: ["np"],
//               isLatLngRequired: true,
//               itemClick: (Prediction prediction) {
//                 setState(() {
//                   controller.text = prediction.description ?? "";
//                   selectedpickup = prediction.description ?? "";
//                 });
//               },
//             ),
//             if (selectedpickup.isNotEmpty) ...[
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Card(
//                   elevation: 3,
//                   child: Row(
//                     children: [
//                       Icon(Icons.location_on, color: Colors.blue),
//                       SizedBox(width: 10),
//                       Expanded(child: Text(selectedpickup)),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//             CreateListingCardWidget(
//               child: Row(
//                 children: [
//                   Text('Pickup Location', style: TextStyle(fontSize: 14)),
//                   Expanded(
//                     child: CustomDropdownButton<String>(
//                       optionname: "Select location",
//                       items: [selectedpickup],
//                       dropdownValue: selectedpickup,
//                       onChanged: (newValue) {
//                         setState(() => selectedpickup = newValue ?? '');
//                       },
//                       getItemLabel: (item) => item,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
