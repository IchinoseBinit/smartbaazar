//  SizedBox(
//                               child: DropdownButton<String>(
//                                 items: products.map((product) {
//                                   return DropdownMenuItem<String>(
//                                     value: product.id,
//                                     child: Container(
//                                       height: 60,
//                                       color: Colors.grey.shade50,
//                                       alignment: Alignment.centerLeft,
//                                       child: Row(
//                                         children: [
//                                           // Checkbox to indicate selection
//                                           Checkbox(
//                                             value: selectedValues
//                                                 .contains(product.id),
//                                             onChanged: (bool? value) {
//                                               setState(() {
//                                                 if (value == true) {
//                                                   selectedValues.add(product.id);
//                                                 } else {
//                                                   selectedValues
//                                                       .remove(product.id);
//                                                 }
//                                               });
//                                             },
//                                           ),
//                                           // Product title
//                                           Expanded(
//                                             child: Text(
//                                               product.title ?? '',
//                                               style: TextStyle(
//                                                 fontSize: 11.sp,
//                                               ),
//                                               maxLines: 2,
//                                               overflow: TextOverflow.ellipsis,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 }).toList(),
//                                 onChanged: (String? newValue) {
//                                   // This is not needed anymore since the Checkbox handles selection
//                                 },
//                                 menuMaxHeight: 800,
//                                 // Display selected values as the hint
//                                 hint: Text(
//                                   selectedValues.isEmpty
//                                       ? 'Select products'
//                                       : 'Selected: ${selectedValues.length}',
//                                 ),
//                               ),
//                             )