// class CategoryProductList extends StatefulWidget {
//   @override
//   _CategoryProductListState createState() => _CategoryProductListState();
// }

// class _CategoryProductListState extends State<CategoryProductList> {
//   String selectedCategory = "PRODUCTS"; // Default category

//   // This method builds the product list for both categories
//   Widget buildProductList(List<BrandNewModel> productList) {
//     return SizedBox(
//       height: 340.h,
//       child: ListView.builder(
//         clipBehavior: Clip.antiAlias,
//         padding: const EdgeInsets.all(3),
//         scrollDirection: Axis.horizontal,
//         itemCount: productList.length,
//         itemBuilder: (context, index) {
//           BrandNewModel prod = productList[index];
//           return GestureDetector(
//             onTap: () {
//               // You can add onTap functionality if needed
//             },
//             child: ProductDetailWidget(
//               lefttile: "TradeHUb",
//               vendorname: prod.userdetails?.name ?? "",
//               Vimage: prod.userdetails?.photo ?? "",
//               avg_rating: prod.avg_rating ?? 0,
//               comment: prod.commentcount.toString(),
//               discounttedPrice: prod.discounted_price.toString(),
//               distance: double.tryParse(prod.shortestDistance ?? '0') ?? 0,
//               issponsored: prod.userdetails?.sponsored ?? false,
//               membershipColor: prod.userdetails?.membership_color ?? "",
//               membershipTitle: prod.userdetails?.membership_title ?? "",
//               offer: prod.wow,
//               price: prod.price ?? "",
//               productImage: prod.image ?? "",
//               shortestDistance: double.tryParse(prod.shortestDistance ?? '0') ?? 0,
//               similarproductCount: prod.similarProductCount ?? 0,
//               title: prod.title ?? "",
//               wow: prod.wow,
//             ),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Your category selection widget
//         SizedBox(
//           height: 40,
//           width: double.infinity,
//           child: ListView.builder(
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             itemCount: categories.length,
//             itemBuilder: (context, index) {
//               final isSelected = categories[index] == selectedCategory;
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedCategory = categories[index]; // Update selected category
//                   });
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.blue[100] : Colors.grey[200], // Change background color when selected
//                       border: Border.all(
//                         color: isSelected ? Colors.blue : Colors.grey.withOpacity(0.3), // Highlight border for selected item
//                         width: 1.0,
//                       ),
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     child: Text(
//                       categories[index],
//                       style: TextStyle(
//                         color: isSelected ? Colors.blue : Colors.black, // Change text color for selected item
//                         fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
        
//         // Display the appropriate product list based on selected category
//         if (selectedCategory == "PRODUCTS") 
//           buildProductList(data.brandnew!),

//         if (selectedCategory == "Used") 
//           buildProductList(data.used!),
//       ],
//     );
//   }
// }
