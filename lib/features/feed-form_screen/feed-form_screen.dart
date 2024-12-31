import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/feed-form_screen/api/products_feed_dropdown_api.dart';
import 'package:smartbazar/features/prodcut_import/product_import_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedFormScreen extends ConsumerStatefulWidget {
  const FeedFormScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FeedFormScreenState();
}

class _FeedFormScreenState extends ConsumerState<FeedFormScreen> {
  List<String?> selectedValues = [null];
  List<TextEditingController> selectProductController = [
    TextEditingController()
  ];
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
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
    final productsFeedAsync = ref.watch(getProductsFeedDropdownProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
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
                      child: Text(
                        'Go back',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff888888),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2.w, color: const Color(0xffD9D9D9)),
                const SizedBox(height: 10),

                // Form Section
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(width: 1, color: const Color(0xffEDECEC))),
                  child: productsFeedAsync.when(
                    data: (productsFeedDropdown) {
                      final products = productsFeedDropdown.products ?? [];
                      print('Number of products received: ${products.length}');
                      return Column(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              isExpanded: true,
                              underline: const SizedBox(),
                              elevation: 0,
                              // menuWidth: 10,
                              hint: Text(
                                "select offers",
                                style: headerstyle.copyWith(
                                    color:
                                        const Color.fromARGB(255, 108, 93, 93),
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
                          const Text(
                            "Products",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xff36383C),
                            ),
                          ),
                          const SizedBox(height: 5),
                          ...List.generate(
                            selectProductController.length,
                            (index) => SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: DropdownButton<String>(
                                          alignment: Alignment.center,
                                          icon:
                                              const Icon(Icons.arrow_drop_down),
                                          isExpanded: true,
                                          underline: const SizedBox(),
                                          hint: Text(
                                            "Select Product",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 108, 93, 93),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          value: selectedValues[index],
                                          items: products.map((product) {
                                            print(
                                                'Number of products: ${products.length}');

                                            return DropdownMenuItem<String>(
                                              value: product.id,
                                              child: Container(
                                                height: 60,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  product.title ?? '',
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedValues[index] = newValue;
                                            });
                                          },
                                          menuMaxHeight: 800
                                              .h, // Adjust the dropdown menu height here.
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      if (index == 0)
                                        GestureDetector(
                                          onTap: _addProductField,
                                          child: const Icon(
                                            Icons.add_circle,
                                            color: Color(0xFF362677),
                                          ),
                                        )
                                      else
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: _addProductField,
                                              child: const Icon(
                                                Icons.add_circle,
                                                color: Color(0xFF362677),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            GestureDetector(
                                              onTap: () =>
                                                  _removeProductField(index),
                                              child: const Icon(
                                                Icons.delete,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, stack) => Text(
                      'Failed to load products: $error',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
