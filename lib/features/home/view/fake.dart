// class YourWidgetState extends State<YourWidget> {
//   // Initialize selectedIndex to 0 to select SHOPZONE by default
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
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
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Text(
//                       categories[index],
//                       style: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white,
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
//                 data.new_products, // SHOPZONE
//                 data.b2b_products, // TRADEHUB
//                 data.services, // SERVICES
//                 data.used_products, // USED
//                 data.jobs, // JOB
//                 data.event, // EVENT
//                 data.grocery, // GROCERY
//               ];

//               // Ensure selectedIndex is valid and get products
//               List<CategoryProduct> products = productsList[selectedIndex];
//               return SizedBox(
//                 height: 340.h,
//                 child: ListView.builder(
//                   padding: const EdgeInsets.all(3),
//                   scrollDirection: Axis.horizontal,
//                   itemCount: products.length,
//                   itemBuilder: (context, index) {
//                     CategoryProduct prod = products[index];
//                     return InkWell(
//                       onTap: () {
//                         // Handle product click if needed
//                       },
//                       child: ProductDetailWidget(
//                         lefttile: categories[selectedIndex],
//                         vendorname: prod.user.name,
//                         discounttedPrice: prod.discounted_price,
//                         Vimage: prod.user.photo,
//                         price: prod.price,
//                         title: prod.title,
//                         productImage: prod.image,
//                         membershipColor: prod.user.membercolor,
//                         similarproductCount: prod.similarproductCount,
//                         membershipTitle: prod.user.membershipTitle,
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//             error: (error, stackTrace) =>
//                 Center(child: Text("Error: $error")),
//             loading: () => const Center(child: CircularProgressIndicator()),
//           ),
//         ],
//       ),
//     );
//   }
// }
