// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:smartbazar/features/create_listing/api/get_location_provider.dart';
// import 'package:smartbazar/features/create_listing/model/places_model.dart';

// class loaaaaaa extends ConsumerStatefulWidget {
//   const loaaaaaa({super.key});

//   @override
//   ConsumerState<loaaaaaa> createState() => _loaaaaaaState();
// }

// class _loaaaaaaState extends ConsumerState<loaaaaaa> {
//   List<Place>? _places = [];
//   Timer? _debounce;
//   String _searchTerm = "";  // Keeps track of the current search term

//   // Fetch places based on search term
//   Future<void> _fetchplace(String name) async {
//     try {
//       final value = await ref.read(getStreetAddressProvider(name).future);
//       if (value != null && value.places != null) {
//         setState(() {
//           _places = value.places;
//         });
//       } else {
//         setState(() {
//           _places = [];
//         });
//       }
//     } catch (e) {
//       print("Error fetching places: $e");
//       setState(() {
//         _places = [];
//       });
//     }
//   }

//   // Handle the search term change with debounce
//   void _onSearchChanged(String searchTerm) {
//     setState(() {
//       _searchTerm = searchTerm;
//     });

//     // Cancel the previous debounce timer if active
//     if (_debounce?.isActive ?? false) _debounce?.cancel();

//     // Start a new debounce timer
//     _debounce = Timer(const Duration(milliseconds: 500), () async {
//       if (searchTerm.isNotEmpty) {
//         await _fetchplace(searchTerm); // Fetch places based on the search term
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _debounce?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Create Listing')),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: "Search for location",
//                 hintText: "Enter location",
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (searchTerm) {
//                 _onSearchChanged(searchTerm); // Call debounce method
//               },
//             ),
//           ),
//           if (_places != null && _places!.isNotEmpty)
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _places!.length,
//                 itemBuilder: (context, index) {
//                   final place = _places![index];
//                   return ListTile(
//                     title: Text(place.description ?? "No description"),
//                     onTap: () {
//                       // Handle the selected place (e.g., store or update the value)
//                       print("Selected Location: ${place.description}");
//                     },
//                   );
//                 },
//               ),
//             ),
//           if (_places == null || _places!.isEmpty)
//             _searchTerm.isNotEmpty
//                 ? Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("No places found"),
//                   )
//                 : Container(),
//         ],
//       ),
//     );
//   }
// }
