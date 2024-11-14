import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';

class CategoryField extends StatefulWidget {
  final Function(Category?) onCategorySelected;
  final Function(Category?)
      onSubCategorySelected; // New callback for subcategory selection

  const CategoryField({
    super.key,
    required this.onCategorySelected,
    required this.onSubCategorySelected,
  });

  @override
  State<CategoryField> createState() => _CategoryFieldState();
}

class _CategoryFieldState extends State<CategoryField> {
  List<Category> categoryListItems = [];
  Category? selectedCategory;
  Category? selectedSubCategory;
  List<Category> subCategoryListItems = [];

  @override
  void initState() {
    super.initState();
    _fetchCategoryList();
  }

  Future<void> _fetchCategoryList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<Category> fetchedCategories = await repository.fetchCategoryList();
      setState(() {
        categoryListItems = fetchedCategories;
      });
    } catch (e) {
      print('Failed to load categories: $e');
    }
  }

  Future<void> _fetchSubCategoryList(Category category) async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<Category> fetchedSubCategories =
          await repository.fetchSubCategoryList(category.id);
      setState(() {
        subCategoryListItems = fetchedSubCategories;
        selectedSubCategory =
            null; // Reset selected subcategory when category changes
      });
    } catch (e) {
      print('Failed to load subcategories: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CreateListingCardWidget(
          child: Row(
            children: [
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                ' *',
                style: TextStyle(
                  color: const Color(0xffD33636),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              Expanded(
                child: CustomDropdownButton<Category>(
                  items: categoryListItems,
                  dropdownValue: selectedCategory,
                  onChanged: (Category? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedCategory = newValue;
                        widget.onCategorySelected(
                            newValue); // Notify parent of selected category
                      });
                      _fetchSubCategoryList(selectedCategory!);
                    }
                    print("Category selected: ${selectedCategory?.id}");
                  },
                  getItemLabel: (Category item) => item.name,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        if (subCategoryListItems.isNotEmpty)
          CreateListingCardWidget(
            child: Row(
              children: [
                Text(
                  'Subcategory',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  ' *',
                  style: TextStyle(
                    color: const Color(0xffD33636),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
                Expanded(
                  child: CustomDropdownButton<Category>(
                    items: subCategoryListItems,
                    dropdownValue: selectedSubCategory,
                    onChanged: (Category? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedSubCategory = newValue;
                          widget.onSubCategorySelected(
                              newValue); // Notify parent of selected subcategory
                        });
                      }
                    },
                    getItemLabel: (Category item) => item.name,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
