  // showDialog(
  //                                       context: context,
  //                                       builder: (ctx) {
  //                                         return SizedBox(
  //                                           height: 300.h,
  //                                           child: Form(
  //                                             key: _formKey,
  //                                             child: SimpleDialog(
  //                                               titlePadding: EdgeInsets.zero,
  //                                               contentPadding:
  //                                                   const EdgeInsets.all(10),
  //                                               children: [
  //                                                 Row(
  //                                                   mainAxisAlignment:
  //                                                       MainAxisAlignment
  //                                                           .spaceBetween,
  //                                                   crossAxisAlignment:
  //                                                       CrossAxisAlignment.center,
  //                                                   children: [
  //                                                     const Text(
  //                                                       'Message',
  //                                                       style: TextStyle(
  //                                                           fontSize: 13),
  //                                                     ),
  //                                                     IconButton(
  //                                                       icon: const Icon(
  //                                                           Icons.close,
  //                                                           size: 15),
  //                                                       onPressed: () {
  //                                                         Navigator.of(ctx)
  //                                                             .pop(); // Close the dialog
  //                                                       },
  //                                                     ),
  //                                                   ],
  //                                                 ),
  //                                                 const Text(
  //                                                   'Contact Author',
  //                                                   style: TextStyle(
  //                                                     fontSize: 20,
  //                                                     color: Color.fromARGB(
  //                                                         255, 1, 139, 251),
  //                                                     fontWeight: FontWeight.bold,
  //                                                   ),
  //                                                 ),
  //                                                 const SizedBox(height: 10),
  //                                                 Container(
  //                                                   height: 50,
  //                                                   decoration: BoxDecoration(
  //                                                     border: Border.all(
  //                                                         color: Colors.brown),
  //                                                     borderRadius:
  //                                                         BorderRadius.circular(
  //                                                             8),
  //                                                   ),
  //                                                   padding: const EdgeInsets.all(
  //                                                       8.0), // Add padding for better appearance
  //                                                   child: Row(
  //                                                     crossAxisAlignment:
  //                                                         CrossAxisAlignment.end,
  //                                                     mainAxisAlignment:
  //                                                         MainAxisAlignment
  //                                                             .spaceBetween,
  //                                                     children: [
  //                                                       const Text(
  //                                                         "Phone Number",
  //                                                         style: TextStyle(
  //                                                           fontSize: 14,
  //                                                         ),
  //                                                       ),
  //                                                       const SizedBox(
  //                                                           width:
  //                                                               10), // Add some spacing between text and field
  //                                                       Container(
  //                                                         height: 50,
  //                                                         width: 100.w,
  //                                                         alignment:
  //                                                             Alignment.topCenter,
  //                                                         child: TextFormField(
  //                                                           controller:
  //                                                               phonecontroller,
  //                                                           decoration:
  //                                                               const InputDecoration(
  //                                                             hintText:
  //                                                                 "+977 1245783645",
  //                                                             hintStyle:
  //                                                                 TextStyle(
  //                                                                     fontSize:
  //                                                                         14),
  //                                                             border: InputBorder
  //                                                                 .none, // Remove the inner border for simplicity
  //                                                           ),
  //                                                           keyboardType:
  //                                                               TextInputType
  //                                                                   .phone,
  //                                                         ),
  //                                                       ),
  //                                                     ],
  //                                                   ),
  //                                                 ),
  //                                                 Container(
  //                                                   height: 200.h,
  //                                                   width: 50.w,
  //                                                   margin: const EdgeInsets.only(
  //                                                       top: 5, bottom: 5),
  //                                                   decoration: BoxDecoration(
  //                                                     border: Border.all(
  //                                                         color: Colors.brown),
  //                                                     borderRadius:
  //                                                         BorderRadius.circular(
  //                                                             8),
  //                                                   ),
  //                                                   padding: const EdgeInsets.all(
  //                                                       8.0), // Add padding for better appearance
  //                                                   child: Column(
  //                                                     crossAxisAlignment:
  //                                                         CrossAxisAlignment
  //                                                             .start,
  //                                                     children: [
  //                                                       const Text(
  //                                                         "Phone Number",
  //                                                         style: TextStyle(
  //                                                           fontSize: 13,
  //                                                         ),
  //                                                       ),
  //                                                       TextFormField(
  //                                                         controller:
  //                                                             msgcontroller,
  //                                                         decoration:
  //                                                             const InputDecoration(
  //                                                           hintText:
  //                                                               "This ia a message to the seller",
  //                                                           border: InputBorder
  //                                                               .none, // Remove the inner border for simplicity
  //                                                         ),
  //                                                         keyboardType:
  //                                                             TextInputType.text,
  //                                                       ),
  //                                                     ],
  //                                                   ),
  //                                                 ),
  //                                                 const SizedBox(
  //                                                   height: 5,
  //                                                 ),
  //                                                 GeneralEelevatedButton(
  //                                                   text: 'Send Message',
  //                                                   onPresssed: () async {
  //                                                     if (phonecontroller
  //                                                             .text.isEmpty ||
  //                                                         msgcontroller
  //                                                             .text.isEmpty) {
  //                                                       ScaffoldMessenger.of(
  //                                                               context)
  //                                                           .showSnackBar(
  //                                                         const SnackBar(
  //                                                             content: Text(
  //                                                                 "Fields cannot be empty!")),
  //                                                       );
  //                                                     } else {
  //                                                       // Call the contactSeller provider and wait for the response
  //                                                       final success =
  //                                                           await ref.read(
  //                                                         contactSellerProvider(
  //                                                           name!,
  //                                                           phonecontroller.text,
  //                                                           msgcontroller.text,
  //                                                           int.tryParse(id!)!,
  //                                                         ).future,
  //                                                       );
                                            
  //                                                       // Handle the response based on success or failure
  //                                                       if (success) {
  //                                                         ScaffoldMessenger.of(
  //                                                                 context)
  //                                                             .showSnackBar(
  //                                                           const SnackBar(
  //                                                               duration:
  //                                                                   Duration(
  //                                                                       seconds:
  //                                                                           3),
  //                                                               content: Text(
  //                                                                   "Message sent successfully!")),
  //                                                         );
  //                                                         Navigator.pop(context);
  //                                                       } else {
  //                                                         ScaffoldMessenger.of(
  //                                                                 context)
  //                                                             .showSnackBar(
  //                                                           const SnackBar(
  //                                                               duration:
  //                                                                   Duration(
  //                                                                       seconds:
  //                                                                           3),
  //                                                               content: Text(
  //                                                                   "Failed to send the message!")),
  //                                                         );
  //                                                       }
  //                                                     }
  //                                                   },
  //                                                 )
  //                                               ],
  //                                             ),
  //                                           ),
  //                                         );
  //                                       },
  //                                     );