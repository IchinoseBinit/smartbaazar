// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:smartbazar/features/product_details/constant/all_product_detail_widget.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_card_api.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/model/vendor_profile_name.dart';
// import 'package:smartbazar/features/vendor/vendor_profile/view/vendor_home_screen.dart';

// final subscribedProvider = StateProvider<bool>((ref) => false);

// class Practice extends ConsumerWidget {
//   final int vid;

//   const Practice({super.key, required this.vid});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final vendorCardAsync = ref.watch(getVendorCardProvider(vid)); // Corrected watch syntax

//     return Scaffold(
//       body: Stack(
//         children: [
//           vendorCardAsync.when(
//             data: (vendorcard) {
//               final vendorData = vendorcard.data?.vendor_card;

//               if (vendorData == null) {
//                 return const Center(child: Text("No vendor data available"));
//               }

//               return SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 5),
//                       child: DottedContainer(
//                         firstImage: vendorData.photo,
//                         deals: vendorcard.data?.deals ?? [],
//                         vname: vendorData.name ?? "Unknown Vendor",
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: BigContainer(
//                         storycount: '9',
//                         ondoenload: () {}, // Placeholder function
//                         onsubscribed: () {
//                           ref.read(subscribedProvider.state).state =
//                               !ref.read(subscribedProvider.state).state; // Toggle subscription state

//                           // Manually force a refresh by invalidating the provider
//                           ref.invalidate(getVendorCardProvider(vid)); // Invalidate provider to refresh the data
//                         },
//                         lat: double.tryParse(vendorData.latitude ?? '0') ?? 0.0,
//                         long: double.tryParse(vendorData.longitude ?? '0') ?? 0.0,
//                         id: vid.toString(),
//                         title: vendorData.name ?? "Vendor",
//                         logo: vendorData.photo ?? "",
//                         contact: vendorData.phone ?? "N/A",
//                         storyCount: vendorData.storycount?.toString() ?? "0",
//                         membershipTitle: vendorData.membership_title ?? "N/A",
//                         total_connections: vendorData.subscribers?.toString() ?? "0",
//                         total_prize_worth: vendorData.prize_worth?.toString() ?? "0",
//                         location: vendorData.nearestbranch ?? "Unknown",
//                         Cnumber: vendorData.phone ?? "",
//                         issubbed: vendorcard.data?.subscribed == 1,
//                         memebertitle: vendorData.membership_title ?? "N/A",
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             error: (error, stackTrace) {
//               return Center(child: Text('Error: $error'));
//             },
//             loading: () {
//               return const Center(child: CircularProgressIndicator());
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
