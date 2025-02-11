// CreateListingCardWidget(
//   child: Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Type',
//             style: TextStyle(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black),
//           ),
//           Text(
//             ' *',
//             style: TextStyle(
//                 color: const Color(0xffD33636),
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14.sp),
//           )
//         ],
//       ),
//       const Spacer(),
//       Expanded(
//         child: CustomDropdownButton(
//           items: typeListItems,
//           dropdownValue: dropdownvalue,
//           onChanged: (TypeList? newValue) {
//             setState(() {
//               dropdownvalue = newValue!;
//             });
//           },
//           getItemLabel: (TypeList item) => item.typeName,
//         ),
//       ),
//     ],
//   ),
// )