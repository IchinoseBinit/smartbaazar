import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/buy_or_win_form/api/buy_or_win_form_api.dart';
import 'package:smartbazar/features/feed-form_screen/api/products_feed_dropdown_api.dart';
import 'package:smartbazar/utils/custom_toast.dart';

class BuyOrWinFormScreen extends ConsumerStatefulWidget {
  const BuyOrWinFormScreen({super.key});

  @override
  ConsumerState<BuyOrWinFormScreen> createState() => _BuyOrWinFormScreenState();
}

class _BuyOrWinFormScreenState extends ConsumerState<BuyOrWinFormScreen> {
  List<String?> selectedValues = [null];
  bool isSubmitting = false;

  List<TextEditingController> selectProductController = [
    TextEditingController()
  ];
  TextEditingController qtycontroller = TextEditingController();
  void _addProductField() {
    setState(() {
      selectProductController.add(TextEditingController());
      selectedValues.add(null);
    });
  }

  void _removeProductField(int index) {
    if (selectProductController.length > 1) {
      setState(() {
        selectProductController.removeAt(index);
        selectedValues.removeAt(index);
      });
    }
  }

  void _resetForm() {
    setState(() {
      selectedValues = [null];
      selectProductController = [TextEditingController()];
    });
  }

  @override
  Widget build(BuildContext context) {
    final productsFeedAsync = ref.watch(getProductsFeedDropdownProvider);

    return Scaffold(
      extendBody: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Buy Or Win Form',
                  style: headerstyle.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: ColorConstant.blackColor),
                ),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Go back",
                      style: headerstyle.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: const Color(0xff888888)),
                    ))
              ],
            ),
            const Divider(thickness: 1, height: 2, color: Color(0xffD9D9D9)),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD9D9D9))),
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  const SizedBox(height: 5),
                  productsFeedAsync.when(
                    data: (data) {
                      final products = data.products ?? [];
                      return Row(
                        children: [
                          Text(
                            "Products",
                            style: TextStyle(
                              fontFamily: GoogleFonts.quicksand().fontFamily,
                              color: const Color(0xff36383C),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 300,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: selectProductController.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                      elevation: 3,
                                      color: Colors.grey.shade50,
                                      child: DropdownButton<String>(
                                        borderRadius: BorderRadius.circular(5),
                                        alignment: Alignment.center,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        isExpanded: true,
                                        underline: const SizedBox(),
                                        hint: Text(
                                          products.isEmpty
                                              ? "No Product"
                                              : "Select Product",
                                          style: const TextStyle(
                                            color: Color(0xff36383C),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        value: selectedValues[index],
                                        items: products.map((product) {
                                          return DropdownMenuItem<String>(
                                            value: product.id,
                                            child: Container(
                                              margin: EdgeInsets.only(top: 5.h),
                                              height: 60.h,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade50,
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                product.title ?? '',
                                                style:
                                                    TextStyle(fontSize: 11.sp),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValues[index] = newValue;
                                          });
                                        },
                                        menuMaxHeight: 800.h,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                    error: (error, stackTrace) =>
                       const Center(child: Text("please login")),
                    loading: () => const CircularProgressIndicator(),
                  ),
                  Row(
                    children: [
                      Text(
                        "Enter qty",
                        style: TextStyle(
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                          color: const Color(0xff36383C),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                            const BoxShadow(
                              color: Colors.white,
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          child: SizedBox(
                            height: 40.h,
                            width: 150.w,
                            child: TextField(
                              expands: false,
                              controller: qtycontroller,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade50,
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GeneralTextButton(
                      onPressed: isSubmitting
                          ? null
                          : () async {
                              // print("raja ${selectedValues}");

                              ref
                                  .watch(postBuyOrWinProvider(
                                      selectedValues[0]!, qtycontroller.text))
                                  .whenData(
                                (value) {
                                  showCustomToast(context, value);
                                },
                              );
                              qtycontroller.text = '';
                            },
                      marginH: 0,
                      height: 28.h,
                      width: 130.w,
                      isSmallText: true,
                      fgColor: Colors.white,
                      bgColor: const Color(0xff362677),
                      title: isSubmitting ? 'Submitting...' : 'Add',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
