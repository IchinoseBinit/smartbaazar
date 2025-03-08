  // ref
  //         .read(postCheckoutFormProvider(
  //       userName,
  //       address,
  //       email,
  //       widget.selectedPaymentMethod,
  //       widget.selectedDeliveryOption,
  //       widget.hyper,
  //       // widget.selectedCity,
  //       widget.selectedStreet.description,
  //       widget.deliverychareg.data?.discountAmount.toString() ?? '0',
  //       widget.selectedCoupon,
  //       postIds,
  //       widget.selectedProductIds,
  //       postName,
  //       quantities,
  //       [finallyRate.toStringAsFixed(2)],
  //       gettoal(widget.totalfromtop,
  //               widget.deliverychareg.data?.estimatedFare ?? 0)
  //           .toStringAsFixed(2),
  //       //from delivery
  //       widget.bizLoginResponseparams!.data!.token!,
  //       widget.deliverychareg.data!.zoneId!,
  //       [widget.pickuplatitutevednor, widget.pickuplongitutevendor], //pickup
  //       [widget.pickuplatitutevednor, widget.pickuplongitutevendor], //cusomer
  //       [widget.pickuplatitutevednor, widget.pickuplongitutevendor], //customer
  //       [
  //         widget.selectedStreet.latitude,
  //         widget.selectedStreet.longitude
  //       ], //destination
  //       widget.deliverychareg.data!.estId!,
  //       widget.deliverychareg.data!.estimatedFare!.toDouble(),
  //       widget.deliverychareg.data!.estimatedDistance!,
  //       double.parse(widget.deliverychareg.data!.estimatedDuration!
  //           .replaceAll(RegExp(r'[^0-9.]'), '')),

  //       widget.senderaddress,
  //       widget.selectedStreet.description, //m

  //       widget.vendorid,
  //       "parcel",
  //       widget.deliverychareg.data!.returnFee!.toDouble(), //return fee
  //       widget.deliverychareg.data!.cancellationFee!.toDouble(),
  //       widget.sendername,
  //       widget.senderPhone,
  //       widget.senderaddress,
  //       widget.name,
  //       widget.receiverphone,
  //       widget.selectedStreet.description,
  //       widget.deliverychareg.data!.fare!.first.parcelCategoryId!,
  //       widget.weight,
  //       "sender",
  //     ).future)
  //         .then((success) {
  //       if (success) {
  //         const message =
  //             "Congratulations, your order has been placed successfully! Please check your email or view My Orders for order details to Track Your Order.";
  //         showDialog(
  //           context: context,
  //           barrierDismissible: false, // Prevents dismissal on outside tap
  //           builder: (_) => AlertDialog(
  //             title: Center(
  //               child: Text(
  //                 'Successfull!',
  //                 style: TextStyle(
  //                     fontSize: 20.sp,
  //                     fontWeight: FontWeight.bold,
  //                     color: const Color(0xFF362677)),
  //               ),
  //             ),
  //             content: Text(
  //               message,
  //               style: TextStyle(fontSize: 12.sp),
  //             ),
  //             actions: [
  //               Center(
  //                 child: TextButton(
  //                   onPressed: () {
  //                     // Navigate to the BottomNavigationScreen when the user clicks "OK"
  //                     Navigator.pop(context);
  //                     Navigator.pushReplacement(
  //                         context,
  //                         MaterialPageRoute(
  //                             builder: (context) =>
  //                                 const OnlineTransactionRecordScreen()));
  //                   },
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       const Text('OK'),
  //                       SizedBox(width: 8.w),
  //                       const Icon(
  //                         Icons.check_circle,
  //                         color: Color(0xFF362677),
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(
  //               content: Text('Failed to place order. Please try again.')),
  //         );
  //       }
  //     },
  //     );
  //   } catch (e) {
  //     // Handle any error that occurred during submission
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //           content: Text('Failed to submit the order. Please try again.')),
  //     );
  //   }