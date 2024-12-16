import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedFormScreen extends ConsumerWidget {
  FeedFormScreen({super.key});
  String? dropdownvalue;
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GenericSafeArea(
      child: Scaffold(
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
                    border:
                        Border.all(width: 1, color: const Color(0xffEDECEC))),
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
                      "Caption",
                      style: headerstyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xff36383C)),
                    ),
                    const TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffD9D9D9),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffD9D9D9)))),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 1,
                          child: Container(
                            padding: EdgeInsets.zero,
                            width: 190.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: DropdownButton<String>(
                              alignment: Alignment.center,
                              icon: const Icon(Icons.arrow_drop_down),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              isExpanded: true,
                              underline: const SizedBox(),
                              elevation: 0,
                              // menuWidth: 10,
                              hint: Text(
                                "select Product",
                                style: headerstyle.copyWith(
                                    color:
                                        const Color.fromARGB(255, 108, 93, 93),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              value: dropdownvalue,
                              items: items.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff362677)),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 1,
                          child: Container(
                            padding: EdgeInsets.zero,
                            width: 190.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: DropdownButton<String>(
                              alignment: Alignment.center,
                              icon: const Icon(Icons.arrow_drop_down),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              isExpanded: true,
                              underline: const SizedBox(),
                              elevation: 0,
                              // menuWidth: 10,
                              hint: Text(
                                "select Product",
                                style: headerstyle.copyWith(
                                    color:
                                        const Color.fromARGB(255, 108, 93, 93),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              value: dropdownvalue,
                              items: items.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff362677)),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff362677)),
                          child: const Icon(
                            Icons.delete_outline_sharp,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 1,
                          child: Container(
                            padding: EdgeInsets.zero,
                            width: 190.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: DropdownButton<String>(
                              alignment: Alignment.center,
                              icon: const Icon(Icons.arrow_drop_down),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              isExpanded: true,
                              underline: const SizedBox(),
                              elevation: 0,
                             // menuWidth: 10,
                              hint: Text(
                                "select Product",
                                style: headerstyle.copyWith(
                                    color:
                                        const Color.fromARGB(255, 108, 93, 93),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              value: dropdownvalue,
                              items: items.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff362677)),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff362677)),
                          child: const Icon(
                            Icons.delete_outline_sharp,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
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
