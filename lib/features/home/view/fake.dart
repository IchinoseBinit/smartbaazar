// class CategorySelector extends StatefulWidget {
//   @override
//   _CategorySelectorState createState() => _CategorySelectorState();
// }

// class _CategorySelectorState extends State<CategorySelector> {
//   int selectedIndex = 0; // State variable for selected index

//   @override
//   Widget build(BuildContext context) {
//     // Map category labels to their respective product lists
//     List<String> categories = _services.map((e) => e['label'] as String).toList();

//     return SizedBox(
//       width: double.infinity,
//       height: 420.h,
//       child: Column(
//         children: [
//           // Category Selector Row
//           SizedBox(
//             width: double.infinity,
//             height: 50.h,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: categories.length,
//               itemBuilder: (context, index) {
//                 bool isSelected = index == selectedIndex;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedIndex = index; // Update selected index
//                     });
//                   },
//                   child: Container(
//                     alignment: Alignment.center,
//                     margin: const EdgeInsets.all(5),
//                     width: 100.w,
//                     decoration: BoxDecoration(
//                       color: isSelected
//                           ? const Color(0xFF681b4e)
//                           : const Color(0xffA5A5A5),
//                     ),
//                     child: Text(
//                       categories[index],
//                       style: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w700,
//                         color: ColorConstant.whiteColor,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),

//           // Spacer
//           SizedBox(height: 5.h),

//           // Display Products for the selected category
//           category.when(
//             data: (data) {
//               // Define the products list corresponding to each category
//               List<List<CategoryProduct>> productsList = [
//                 data.new_products, // Corresponds to SHOPZONE
//                 data.b2b_products, // Corresponds to HOB
//                 data.services, // Corresponds to SERVICES
//                 data.used_products, // Corresponds to TRADEHUB
//                 data.jobs, // Corresponds to USED
//                 data.event, // Corresponds to USED
//                 data.grocarry
//               ];

//               // Ensure the index is valid
//               List<CategoryProduct> products = productsList[selectedIndex];
//               return SizedBox(
//                 height: 359.h,
//                 child: ListView.builder(
//                   clipBehavior: Clip.antiAlias,
//                   padding: EdgeInsets.all(3),
//                   scrollDirection: Axis.horizontal,
//                   itemCount: products.length,
//                   itemBuilder: (context, index) {
//                     CategoryProduct prod = products[index];
//                     return InkWell(
//                       onTap: () {}, // Handle onTap if needed
//                       child: ProductDetailWidget(
//                         lefttile: categories[selectedIndex],
//                         vendorname: prod.user.name,
//                         discounttedPrice: prod.discounted_price,
//                         Vimage: prod.user.photo,
//                         price: prod.price,
//                         title: prod.title,
//                         productImage: prod.image,
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//             error: (error, stackTrace) => Text("Error: $error"),
//             loading: () => const CircularProgressIndicator(),
//           ),
//         ],
//       ),
//     );
//   }
// }
