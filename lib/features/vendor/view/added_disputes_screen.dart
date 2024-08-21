import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/vendor/view/my_listing_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class AddNewDisputes extends StatefulWidget {
  const AddNewDisputes({super.key});

  @override
  State<AddNewDisputes> createState() => _AddNewDisputesState();
}

class _AddNewDisputesState extends State<AddNewDisputes> {
  TypeList? dropdownvalue;
  List<TypeList> typeListItems = [];

   @override
  void initState() {
    super.initState();
    _fetchTypeList(); // Fetch the types when the widget is initialized
  }

  Future<void> _fetchTypeList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<TypeList> fetchedTypes = await repository.fetchTypeList();
      setState(() {
        typeListItems = fetchedTypes;
      });
    } catch (e) {
      // Handle error, maybe show a message to the user
      print('Failed to load types: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.mic),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Disputes',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const Spacer(),
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
              ),
              const Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              SizedBox(
                height: 20.h,
              ),
              CreateListingCardWidget(
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vendor Name',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    // const Spacer(),

                    CustomDropdownButton(
                      items: typeListItems,
                      dropdownValue: dropdownvalue,
                      onChanged: (TypeList? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                                              getItemLabel: (TypeList item) => item.typeName,

                    ),
                  ],
                ),
              ),
              CreateListingCardWidget(
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subject/Issue',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    // const Spacer(),

                    CustomDropdownButton(
                      items: typeListItems,
                      dropdownValue: dropdownvalue,
                      onChanged: (TypeList? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                                              getItemLabel: (TypeList item) => item.typeName,

                    ),
                  ],
                ),
              ),
              CreateListingCardWidget(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Message',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'Describe your issue',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xffADADAD))),
                  ),
                ],
              )),
              CreateListingCardWidget(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select of the issue',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xffEDECEC)),
                    child: Row(
                      children: [
                        Text(
                          'Choose File',
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff36383C)),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          "|",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffADADAD)),
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        Text(
                          'No File Chosen',
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 20.h,
              ),
              const Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
              ),
              SizedBox(
                height: 20.h,
              ),
              GeneralTextButton(
                width: MediaQuery.of(context).size.width,
                fgColor: Colors.white,
                bgColor: const Color(0xff362677),
                title: 'Submit',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const MyListingScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReturnOrderDetails extends StatelessWidget {
  const ReturnOrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff00000040).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 7.w,
              ),
              const Text('Tech Store'),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xffADADAD),
              ),
              const Spacer(),
              SvgPicture.asset(deleteIcon)
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 7.w,
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: 15.h, left: 8.w, right: 8.w, bottom: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xffF6F1F1),
                  ),
                  child: Image.asset(
                    ImageConstant.laptopImage,
                    height: 70.h,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acer Aspire 5 A515-56-32DK Intel Core i3, 11th Gen/15.6 FHD',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'Order ID: 12345',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rs 60,000',
                        style: TextStyle(
                            color: const Color(0xff36383C),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      Text(
                        'Return Date: 2023-01-02',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            color: const Color(0xff36383C),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
