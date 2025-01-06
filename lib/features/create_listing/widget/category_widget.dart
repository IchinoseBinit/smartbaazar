import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/create_listing/api/get_dropdown_value_api.dart';
import 'package:smartbazar/features/create_listing/model/dropdown_value_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';

class CategoryField extends StatefulWidget {
  final Function(Category?, String?) onCategorySelected;
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
  List<TypeList> typeListItems = [];
  List<Category> categoryListItems = [];
  List<Category> subCategoryListItems = [];
  List<Category> subCategoryListItems1 = [];
  List<Category> subCategoryListItems2 = [];

  TypeList? selectedType;
  Category? selectedCategory;
  Category? selectedSubCategory;
  Category? selectedSubCategory1;
  Category? selectedSubCategory2;

  @override
  void initState() {
    super.initState();
    _fetchTypeList();
  }

  Future<void> _fetchTypeList() async {
    try {
      NewListingRepository repository = NewListingRepository();
      final types = await repository.fetchTypeList();
      setState(() {
        typeListItems = types;
      });
    } catch (e) {
      print('Failed to load types: $e');
    }
  }

  Future<void> _fetchCategoryList(String typeId) async {
    try {
      NewListingRepository repository = NewListingRepository();
      final categories = await repository.fetchCategoryList(parentId: typeId);
      setState(() {
        categoryListItems = categories;
        selectedCategory = null;
        selectedSubCategory = null;
        selectedSubCategory1 = null;
        selectedSubCategory2 = null;
        subCategoryListItems.clear();
        subCategoryListItems1.clear();
        subCategoryListItems2.clear();
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

  Widget _buildDropdown<T>({
    required String label,
    required List<T> items,
    required T? selectedValue,
    required Function(T?) onChanged,
    required String Function(T) getItemLabel,
  }) {
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
            child: CustomDropdownButton<T>( 
              items: items,
              dropdownValue: selectedValue,
              onChanged: onChanged,
              getItemLabel: getItemLabel,
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
        _buildDropdown<TypeList>(
          label: 'Select Type',
          items: typeListItems,
          selectedValue: selectedType,
          onChanged: (newValue) {
            setState(() {
              selectedType = newValue;
            });
            if (newValue != null) {
              _fetchCategoryList(newValue.typeId.toString());
            }
          },
          getItemLabel: (TypeList item) => item.typeName,
        ),
        if (categoryListItems.isNotEmpty)
          _buildDropdown<Category>(
            label: 'Category',
            items: categoryListItems,
            selectedValue: selectedCategory,
            onChanged: (newValue) {
              setState(() {
                selectedCategory = newValue;
                widget.onCategorySelected(newValue, selectedType!.typeId.toString());
              });
              if (newValue != null) {
                _fetchSubCategoryList(newValue, 1);
              }
            },
            getItemLabel: (Category item) => item.name,
          ),
        if (subCategoryListItems.isNotEmpty)
          _buildDropdown<Category>(
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
            getItemLabel: (Category item) => item.name,
          ),
        if (subCategoryListItems1.isNotEmpty)
          _buildDropdown<Category>(
            label: 'Sub-subcategory 1',
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
            getItemLabel: (Category item) => item.name,
          ),
        if (subCategoryListItems2.isNotEmpty)
          _buildDropdown<Category>(
            label: 'Sub-subcategory 2',
            items: subCategoryListItems2,
            selectedValue: selectedSubCategory2,
            onChanged: (newValue) {
              setState(() {
                selectedSubCategory2 = newValue;
                widget.onSubCategorySelected2?.call(newValue);
              });
            },
            getItemLabel: (Category item) => item.name,
          ),
      ],
    );
  }
}
