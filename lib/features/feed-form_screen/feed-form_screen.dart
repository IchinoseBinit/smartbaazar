import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedFormScreen extends ConsumerStatefulWidget {
  const FeedFormScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FeedFormScreenState();
}

class _FeedFormScreenState extends ConsumerState<FeedFormScreen> {
  List<String?> selectedValues = [null];
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<TextEditingController> selectProductController = [
    TextEditingController()
  ];
  TextEditingController captionTitleController = TextEditingController();
  TextEditingController captionController = TextEditingController();
  TextEditingController offersController = TextEditingController();
  void _addProductField() {
    setState(() {
      selectProductController.add(TextEditingController());
      selectedValues.add(null);
    });
  }

  void _removeProductField(int index) {
    setState(() {
      selectProductController.removeAt(index);
      selectedValues.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Feed Upload Form',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Text('Go back',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff888888))),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2.w,
                    color: const Color(0xffD9D9D9),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: const Color(0xffEDECEC))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ChooseFile(
                          showbtn: false,
                          textColor: Colors.red,
                          onFileSelected: (file) async {
                            // This assumes that StoreProductImportProvider returns an AsyncValue
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Caption Title",
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xff36383C)),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFEDECEC).withOpacity(0.3),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFD9D9D9)))),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Caption",
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xff36383C)),
                        ),

                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFEDECEC).withOpacity(0.3),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFD9D9D9)))),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Offers",
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xff36383C)),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: 190.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: DropdownButton<String>(
                            alignment: Alignment.center,
                            icon: const Icon(Icons.arrow_drop_down),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            isExpanded: true,
                            underline: const SizedBox(),
                            elevation: 0,
                            // menuWidth: 10,
                            hint: Text(
                              "select offers",
                              style: headerstyle.copyWith(
                                  color: const Color.fromARGB(255, 108, 93, 93),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            // controller: selectProductController[index],
                            value: items.contains(offersController.text)
                                ? offersController.text
                                : null,
                            items: items.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                offersController.text = newValue!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Products",
                          style: headerstyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xff36383C)),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        ...List.generate(
                          selectProductController.length,
                          (index) => Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.zero,
                                      width: 190.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: DropdownButton<String>(
                                        alignment: Alignment.center,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        isExpanded: true,
                                        underline: const SizedBox(),
                                        elevation: 0,
                                        // menuWidth: 10,
                                        hint: Text(
                                          "select Product",
                                          style: headerstyle.copyWith(
                                              color: const Color.fromARGB(
                                                  255, 108, 93, 93),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // controller: selectProductController[index],
                                        value: items
                                                .contains(selectedValues[index])
                                            ? selectedValues[index]
                                            : null,

                                        items: items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValues[index] = newValue;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  // if (index == branchControllers.length - 1)
                                  //   IconButton(
                                  //     onPressed: _addProductField,
                                  //     icon: const Icon(Icons.add_circle,
                                  //         color: Colors.green),
                                  //   ),
                                  // IconButton(
                                  //   onPressed: () {
                                  //     _removeBranchField(index);
                                  //   },
                                  //   icon: const Icon(Icons.remove_circle,
                                  //       color: Colors.red),
                                  // ),
                                  if (index == 0)
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFFADADAD)),
                                      ),
                                      child: GestureDetector(
                                        onTap: _addProductField,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              4.0), // Adjust padding to control the gap
                                          child: Icon(Icons.add_circle,
                                              color: Color(0xFF362677)),
                                        ),
                                      ),
                                    )
                                  else ...[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFFADADAD)),
                                      ),
                                      child: GestureDetector(
                                        onTap: _addProductField,
                                        child: const Padding(
                                          padding: EdgeInsets.all(
                                              4.0), // Adjust padding to control the gap
                                          child: Icon(Icons.add_circle,
                                              color: Color(0xFF362677)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFFADADAD)),
                                      ),
                                      child: GestureDetector(
                                        onTap: () => _removeProductField(index),
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(Icons.delete,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                              SizedBox(height: 10.2.h),
                            ],
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     Card(
                        //       elevation: 1,
                        //       child: Container(
                        //         padding: EdgeInsets.zero,
                        //         width: 190.w,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(10),
                        //             color: Colors.white),
                        //         child: DropdownButton<String>(
                        //           alignment: Alignment.center,
                        //           icon: const Icon(Icons.arrow_drop_down),
                        //           padding:
                        //               const EdgeInsets.symmetric(horizontal: 5),
                        //           isExpanded: true,
                        //           underline: const SizedBox(),
                        //           elevation: 0,
                        //           // menuWidth: 10,
                        //           hint: Text(
                        //             "select Product",
                        //             style: headerstyle.copyWith(
                        //                 color:
                        //                     const Color.fromARGB(255, 108, 93, 93),
                        //                 fontSize: 15,
                        //                 fontWeight: FontWeight.w500),
                        //           ),
                        //           value: dropdownvalue,
                        //           items: items.map((String value) {
                        //             return DropdownMenuItem<String>(
                        //               value: value,
                        //               child: Text(value),
                        //             );
                        //           }).toList(),
                        //           onChanged: (_) {},
                        //         ),
                        //       ),
                        //     ),
                        //     Container(
                        //       margin: EdgeInsets.only(left: 5.w),
                        //       decoration: const BoxDecoration(
                        //           shape: BoxShape.circle, color: Color(0xff362677)),
                        //       child: const Icon(
                        //         Icons.add,
                        //         size: 20,
                        //         color: Colors.white,
                        //       ),
                        //     )
                        //   ],
                        // ),

                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GeneralTextButton(
                              onPressed: () {},
                              marginH: 0,
                              height: 28.h,
                              width: 100.w,
                              isSmallText: true,
                              fgColor: Colors.white,
                              bgColor: const Color(0xff362677),
                              title: 'Add'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
