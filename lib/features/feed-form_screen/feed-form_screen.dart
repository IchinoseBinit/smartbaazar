import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/feed-form_screen/api/offers_dropdown_api.dart';
import 'package:smartbazar/features/feed-form_screen/api/products_feed_dropdown_api.dart';
import 'package:smartbazar/features/feed-form_screen/api/submit_feed_form.dart';
import 'package:smartbazar/features/feed-form_screen/model/products_feed_dropdown.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class FeedFormScreen extends ConsumerStatefulWidget {
  const FeedFormScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FeedFormScreenState();
}

class _FeedFormScreenState extends ConsumerState<FeedFormScreen> {
  List<TextEditingController> selectProductController = [
    TextEditingController()
  ];

  TextEditingController captionTitleController = TextEditingController();
  TextEditingController captionController = TextEditingController();
  TextEditingController offersController = TextEditingController();
  bool isSubmitting = false;
  List<String> selectedIds = []; // Local list to store selected product IDs
  List<String?> selectedValues = [null];
  List<File> imageFiles = []; // Update to a list of images
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ChooseFileWidgetState> _imageWidgetKey =
      GlobalKey<ChooseFileWidgetState>();

  // void _updateImage(File? image) {
  //   setState(() {
  //     imageFile = image;
  //   });
  // }

  void submitForm() async {
    bool isFormValid = _formKey.currentState!.validate();

    setState(() => isSubmitting = true);
    if (!isFormValid || imageFiles == null) {
      // If form is invalid or image is not selected
      String errorMessage = '';
      if (!isFormValid) {
        errorMessage += 'Please fill all fields. ';
      }
      if (imageFiles == null) {
        errorMessage += 'Please select an image.';
      }
      setState(() => isSubmitting = false); // Ensure to reset the state
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage.trim())),
      );
      return;
    }
    _formKey.currentState!.save();

    final captionTitle = captionTitleController.text.trim();
    final caption = captionController.text.trim();
    final offersId = offersController.text.trim();
    final productsIds = selectedIds;

    ref
        .read(postFeedFormProvider(
      captionTitle,
      caption,
      offersId,
      productsIds,
      imageFiles[0],
    ).future)
        .then((success) {
      if (success) {
        _resetForm();
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Success'),
            content: const Text('Feed submitted successfully!'),
            actions: [
              TextButton(
                onPressed: () {
                  navigateToPage(
          context: context,
          page: MainScreen(),
          ref: ref,
          showNavBar: true, // Hide bottom navbar
        );

                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }).catchError((error) {
      setState(() => isSubmitting = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error')),
      );
    }).whenComplete(() {
      setState(() => isSubmitting = false);
    });
  }

  void _resetForm() {
    captionTitleController.clear();
    captionController.clear();
    offersController.clear();
    imageFiles = [];
    selectProductController = [TextEditingController()];
    setState(() {});
    // _imageWidgetKey.currentState?.resetImage();
  }

  @override
  Widget build(BuildContext context) {
    final productsFeedAsync = ref.watch(getProductsFeedDropdownProvider);
    final offersAsync = ref.watch(getOffersModelDropdownProvider);

    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
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
                        border: Border.all(
                            width: 1, color: const Color(0xffEDECEC))),
                    child: productsFeedAsync.when(
                      data: (productsFeedDropdown) {
                        final products = productsFeedDropdown.products ?? [];
                        print(
                            'Number of products received: ${products.length}');
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Recommended Size 1080px* 1080px",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 10.sp),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              ChooseFileWidget(
                                key: _imageWidgetKey, // Assign the key here
                                textColor: Colors.red,
                                onImagesSelected: (images) {
                                  setState(() {
                                    imageFiles = images;
                                  });
                                },
                              ),
                              // ChooseFile(
                              //   showbtn: false,
                              //   textColor: Colors.red,
                              //   onFileSelected: (file) async {
                              //     // This assumes that StoreProductImportProvider returns an AsyncValue
                              //   },
                              // ),
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
                              TextFormField(
                                controller: captionTitleController,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xFFEDECEC)
                                        .withOpacity(0.3),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD9D9D9)))),
                                validator: (value) => value!.isEmpty
                                    ? "Enter caption title"
                                    : null,
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
                              TextFormField(
                                controller: captionController,
                                textInputAction: TextInputAction.next,
                                maxLines: 5,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xFFEDECEC)
                                        .withOpacity(0.3),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFD9D9D9)))),
                                validator: (value) => value!.isEmpty
                                    ? "Enter your post Description"
                                    : null,
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
                              Card(
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade50,
                                  ),
                                  child: offersAsync.when(
                                    data: (offersDropDown) {
                                      final offers = offersDropDown.data;
                                      return DropdownButton<String>(
                                        alignment: Alignment.center,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        isExpanded: true,
                                        underline: const SizedBox(),
                                        elevation: 0,
                                        // menuWidth: 10,
                                        hint: Text(
                                          "Select Offers",
                                          style: headerstyle.copyWith(
                                              color: const Color.fromARGB(
                                                  255, 108, 93, 93),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // controller: selectProductController[index],
                                        value: offersController.text.isNotEmpty
                                            ? offersController.text
                                            : null,
                                        items: offers!.map((offer) {
                                              return DropdownMenuItem<String>(
                                                value: offer.id,
                                                child: Text(
                                                  offer.offers!,
                                                  style: TextStyle(
                                                      fontSize: 12.sp),
                                                ),
                                              );
                                            }).toList() ??
                                            [],
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            offersController.text = newValue!;
                                          });
                                        },
                                      );
                                    },
                                    loading: () =>
                                        const CircularProgressIndicator(),
                                    error: (error, stack) => const Text(
                                      'Please login',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
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
                                  color: Color(0xff36383C),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Card(
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade50,
                                  ),
                                  child: TextFormField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFD9D9D9))),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFD9D9D9))),
                                        hintText: selectedIds.isEmpty
                                            ? 'Select Products'
                                            : 'Products selected',
                                        filled: true,
                                        fillColor: const Color(0xFFEDECEC)
                                            .withOpacity(0.3),
                                        enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFD9D9D9)))),
                                    onTap: () async {
                                      final selected =
                                          await showDialog<List<String>>(
                                        context: context,
                                        builder: (context) => MultiSelectDialog(
                                          products: products,
                                          initiallySelected: selectedIds,
                                        ),
                                      );

                                      if (selected != null) {
                                        setState(() {
                                          selectedIds = selected;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ]);
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
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GeneralTextButton(
                      onPressed: isSubmitting ? null : submitForm,
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
            ),
          ),
        ),
      ),
    );
  }
}

class MultiSelectDialog extends StatefulWidget {
  final List<Product> products;
  final List<String> initiallySelected;

  const MultiSelectDialog({
    Key? key,
    required this.products,
    required this.initiallySelected,
  }) : super(key: key);

  @override
  _MultiSelectDialogState createState() => _MultiSelectDialogState();
}

class _MultiSelectDialogState extends State<MultiSelectDialog> {
  late List<String> selectedIds;

  @override
  void initState() {
    super.initState();
    selectedIds = List.from(widget.initiallySelected);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Products'),
      content: SingleChildScrollView(
        child: Column(
          children: widget.products.map((product) {
            final String productId = product.id ?? ""; // Keep as String

            return CheckboxListTile(
              title: Text(product.title ?? "Unknown"),
              value: selectedIds.contains(productId),
              onChanged: (bool? checked) {
                setState(() {
                  if (checked == true) {
                    selectedIds.add(productId);
                  } else {
                    selectedIds.remove(productId);
                  }
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context, selectedIds),
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class ChooseFileWidget extends StatefulWidget {
  final Function(List<File>) onImagesSelected;
  final Color? textColor;
  final List<File>? initialImages;

  const ChooseFileWidget({
    super.key,
    required this.onImagesSelected,
    this.textColor,
    this.initialImages,
  });

  @override
  State<ChooseFileWidget> createState() => ChooseFileWidgetState();
}

class ChooseFileWidgetState extends State<ChooseFileWidget> {
  List<File> _selectedImages = [];

  @override
  void initState() {
    super.initState();
    _selectedImages = widget.initialImages ?? [];
  }

  @override
  void didUpdateWidget(covariant ChooseFileWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialImages != widget.initialImages) {
      setState(() {
        _selectedImages = widget.initialImages ?? [];
      });
    }
  }

  Future<void> pickImages() async {
    final pickedFiles = await ImagePicker().pickMultiImage();
    if (pickedFiles.isNotEmpty) {
      setState(() {
        _selectedImages = pickedFiles.map((e) => File(e.path)).toList();
        widget.onImagesSelected(_selectedImages);
      });
    }
  }

  void removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
      widget.onImagesSelected(_selectedImages);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: pickImages,
          child: Center(
            child: Container(
              width: 150.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(width: 1, color: const Color(0xffADADAD)),
              ),
              child: Column(
                children: [
                  // First image takes full width
                  _selectedImages.isNotEmpty
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Image.file(
                                _selectedImages.first,
                                width: 150.w,
                                height: 150.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              right: 4,
                              top: 4,
                              child: GestureDetector(
                                onTap: () => removeImage(0),
                                child: const Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          width: 150.w,
                          height: 100.h,
                          margin: const EdgeInsets.only(top: 30),
                          child: Center(
                            child: Text(
                              'Add Images',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffADADAD),
                              ),
                            ),
                          ),
                        ),
                  // Remaining images in a grid
                  if (_selectedImages.length > 1)
                    Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Wrap(
                        spacing: 10.w,
                        runSpacing: 10.h,
                        children: _selectedImages
                            .sublist(1) // Skip the first image
                            .asMap()
                            .entries
                            .map((entry) {
                          int index = entry.key + 1; // Adjust index
                          File image = entry.value;
                          return Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Image.file(
                                  image,
                                  width: 60.w,
                                  height: 60.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                right: 4,
                                top: 4,
                                child: GestureDetector(
                                  onTap: () => removeImage(index),
                                  child: const Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        GestureDetector(
          onTap: pickImages,
          child: Container(
            padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: const Color(0xffEDECEC),
            ),
            child: Row(
              children: [
                Text(
                  'Choose Files',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff36383C),
                  ),
                ),
                SizedBox(width: 7.w),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffADADAD),
                  ),
                ),
                SizedBox(width: 11.w),
                Text(
                  _selectedImages.isEmpty
                      ? 'No Files Chosen'
                      : '${_selectedImages.length} Files Selected',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: widget.textColor ?? const Color(0xff36383C),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
