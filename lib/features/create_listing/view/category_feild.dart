import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';

class CategoryFeild extends StatefulWidget {
  const CategoryFeild({super.key});

  @override
  State<CategoryFeild> createState() => _CategoryFeildState();
}

class _CategoryFeildState extends State<CategoryFeild> {
  List<Category> categoryListItems = [];
  List<Category> subCategoryListItems = [];
  Category? selectedCategory;
  Category? selectedSubCategory;

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

  Future<void> _fetchSubCategoryList(int parentId) async {
    try {
      NewListingRepository repository = NewListingRepository();
      List<Category> fetchedSubCategories = await repository.fetchSubCategoryList(parentId);
      setState(() {
        subCategoryListItems = fetchedSubCategories;
        selectedSubCategory = null; // Reset the subcategory selection
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
                        _fetchSubCategoryList(selectedCategory!.id);
                      });
                    }
                  },
                  getItemLabel: (Category item) => item.name,
                ),
              ),
            ],
          ),
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
                        });
                      }
                    },
                    getItemLabel: (Category item) => item.name,
                  ),
                ),
              ],
            ),
          ),
        if (selectedCategory != null && selectedSubCategory != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${selectedCategory!.name} >> ${selectedSubCategory!.name}',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}