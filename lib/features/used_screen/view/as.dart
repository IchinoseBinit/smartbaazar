// Stack(
//   children: [
//     Positioned(
//       child: SizedBox(
//         height: 40,
//         child: NewSearchWidget(
//           index: 2,
//           onSearchFocusChanged: _onSearchFocusChanged,
//           searchController: _searchController,
//           ontapped: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => BusinessTabScreen(
//                   query: _searchController.text,
//                 ),
//               ),
//             );
//           },
//           onchnage: (value) {},
//         ),
//       ),
//     ),
//     if (_showSearchProductModels)
//       Positioned(
//         top: 50, // Adjust this to position the search results below the search bar
//         left: 16, // Add padding if necessary
//         right: 16, // Add padding if necessary
//         child: Container(
//           width: double.infinity,
//           color: Colors.white,
//           child: SearchProductModels.when(
//             data: (results) {
//               if (results.isEmpty) {
//                 return const SizedBox(
//                   child: Text('No result found'),
//                 ); // No results
//               }
//               return Card(
//                 elevation: 8,
//                 child: ListView.separated(
//                   padding: EdgeInsets.zero,
//                   shrinkWrap: true,
//                   primary: false,
//                   itemCount: results.length,
//                   itemBuilder: (context, index) {
//                     final product = results[index];
//                     return ListTile(
//                       title: Text(product.title),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => BusinessTabScreen(
//                               query: _searchController.text,
//                             ),
//                           ),
//                         );
//                         setState(() {
//                           _showSearchProductModels = false;
//                           FocusScope.of(context).unfocus();
//                         });
//                       },
//                     );
//                   },
//                   separatorBuilder: (context, index) => const Divider(),
//                 ),
//               );
//             },
//             loading: () {
//               return const Center(child: CircularProgressIndicator());
//             },
//             error: (error, stack) {
//               return const Center(child: Text('Error loading results'));
//             },
//           ),
//         ),
//       ),
//   ],
// ),
