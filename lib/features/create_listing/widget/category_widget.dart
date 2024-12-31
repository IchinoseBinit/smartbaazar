import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';

class CategoryField extends StatefulWidget {
  final Function(Category?) onCategorySelected;
  final Function(Category?) onSubCategorySelected;
  final Function(Category?)? onSubCategorySelected1;
  final Function(Category?)? onSubCategorySelected2;

  const CategoryField({
    Key? key,
    required this.onCategorySelected,
    required this.onSubCategorySelected,
    this.onSubCategorySelected1,
    this.onSubCategorySelected2,
  }) : super(key: key);

  @override
  State<CategoryField> createState() => _CategoryFieldState();
}

class _CategoryFieldState extends State<CategoryField> {
  List<Category> categoryListItems = [];
  List<Category> subCategoryListItems = [];
  List<Category> subCategoryListItems1 = [];
  List<Category> subCategoryListItems2 = [];

  Category? selectedCategory;
  Category? selectedSubCategory;
  Category? selectedSubCategory1;
  Category? selectedSubCategory2;

  @override
  void initState() {
    super.initState();
    _fetchCategoryList();
  }

  Future<void> _fetchCategoryList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      final categories = await repository.fetchCategoryList();
      setState(() {
        categoryListItems = categories;
      });
    } catch (e) {
      print('Failed to load categories: $e');
    }
  }

  Future<void> _fetchSubCategoryList(Category category, int level) async {
    try {
      NewListingRepository repository = NewListingRepository();
      final subCategories = await repository.fetchSubCategoryList(category.id);

      setState(() {
        switch (level) {
          case 1:
            subCategoryListItems = subCategories;
            subCategoryListItems1.clear();
            subCategoryListItems2.clear();
            selectedSubCategory1 = null;
            selectedSubCategory2 = null;
            break;
          case 2:
            subCategoryListItems1 = subCategories;
            subCategoryListItems2.clear();
            selectedSubCategory2 = null;
            break;
          case 3:
            subCategoryListItems2 = subCategories;
            break;
        }
      });
    } catch (e) {
      print('Failed to load subcategories: $e');
    }
  }

  Widget _buildDropdown(
      {required String label,
      required List<Category> items,
      required Category? selectedValue,
      required Function(Category?) onChanged}) {
    return CreateListingCardWidget(
      child: Row(
        children: [
          Text(
            label,
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
              items: items,
              dropdownValue: selectedValue,
              onChanged: onChanged,
              getItemLabel: (Category item) => item.name,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDropdown(
          label: 'Category',
          items: categoryListItems,
          selectedValue: selectedCategory,
          onChanged: (newValue) {
            setState(() {
              selectedCategory = newValue;
              widget.onCategorySelected(newValue);
            });
            if (newValue != null) {
              _fetchSubCategoryList(newValue, 1);
            }
          },
        ),
        if (subCategoryListItems.isNotEmpty)
          _buildDropdown(
            label: 'Subcategory',
            items: subCategoryListItems,
            selectedValue: selectedSubCategory,
            onChanged: (newValue) {
              setState(() {
                selectedSubCategory = newValue;
                widget.onSubCategorySelected(newValue);
              });
              if (newValue != null) {
                _fetchSubCategoryList(newValue, 2);
              }
            },
          ),
        if (subCategoryListItems1.isNotEmpty)
          _buildDropdown(
            label: 'Subcategory',
            items: subCategoryListItems1,
            selectedValue: selectedSubCategory1,
            onChanged: (newValue) {
              setState(() {
                selectedSubCategory1 = newValue;
                widget.onSubCategorySelected1?.call(newValue);
              });
              if (newValue != null) {
                _fetchSubCategoryList(newValue, 3);
              }
            },
          ),
        if (subCategoryListItems2.isNotEmpty)
          _buildDropdown(
            label: 'Subcategory',
            items: subCategoryListItems2,
            selectedValue: selectedSubCategory2,
            onChanged: (newValue) {
              setState(() {
                selectedSubCategory2 = newValue;
                widget.onSubCategorySelected2?.call(newValue);
              });
            },
          ),
      ],
    );
  }
}
