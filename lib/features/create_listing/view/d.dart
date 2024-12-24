// import 'package:flutter/material.dart';
// import 'package:textfield_tags/textfield_tags.dart';

// class TagsExample extends StatefulWidget {
//   const TagsExample({Key? key}) : super(key: key);

//   @override
//   _TagsExampleState createState() => _TagsExampleState();
// }

// class _TagsExampleState extends State<TagsExample> {
//   late TextfieldTagsController _controller;
//   List<String> somethingHere = [];

//   @override
//   void initState() {
//     super.initState();
//     _controller = TextfieldTagsController();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void onDelete(int index) {
//     setState(() {
//       somethingHere.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Simple Textfield Tags Example'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(14.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               const SizedBox(height: 12.0),
//               const Text(
//                 'In just a few words, what are 3 positive things about dogs? (optional)',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16.0,
//                 ),
//               ),
//               Padding(
//                   padding: const EdgeInsets.only(top: 16.0),
//                   child: TextFieldTags(
//                     textfieldTagsController: _controller,
                    
//                     inputFieldBuilder: (context, textFieldTagValues) {
//                       return Container(
                        
//                       );
//                     },
//                   )),
//               Wrap(
//                 spacing: 6.0,
//                 children: somethingHere.map((tag) {
//                   return Chip(
//                     label: Text(tag),
//                     onDeleted: () {
//                       setState(() {
//                         somethingHere.remove(tag);
//                       });
//                     },
//                   );
//                 }).toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
