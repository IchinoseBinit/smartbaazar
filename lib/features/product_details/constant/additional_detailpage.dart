import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';

class AdditionalDetailsWidget extends StatelessWidget {
  final String title;
  final dynamic desp; // Could be a string or a map
  final List<FieldOption>? options; // List of options for the field
  final dynamic defaultValue; // Could be a string or a map
  final bool searchByOption; // New flag to check option by value

  const AdditionalDetailsWidget({
    super.key,
    required this.title,
    required this.desp,
    this.options,
    this.defaultValue,
    this.searchByOption = false, // Default is false (search by ID)
  });

  @override
  Widget build(BuildContext context) {
    // Parse defaultValue as a list of integers or strings
    List<dynamic> parseDefaultValues() {
      if (defaultValue is String) {
        return defaultValue
            .split(',') // Split by comma
            .map((e) => e.trim()) // Trim spaces
            .toList();
      }
      return [];
    }

    String getDisplayValue() {
      print("Options: $options, Default Value: $defaultValue");

      final parsedDefaultValues = parseDefaultValues();

      if (options != null && options!.isNotEmpty) {
        final matchingOptions = options!.where((option) {
          if (searchByOption) {
            return parsedDefaultValues.contains(option.value);
          } else {
            return parsedDefaultValues.contains(option.id.toString());
          }
        }).map((option) => option.value).where((value) => value != null).cast<String>().toList();

        return matchingOptions.isNotEmpty
            ? matchingOptions.join(', ') // Join values with comma
            : "No details available";
      }
      return "No details available";
    }

    final displayValue = getDisplayValue();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      color: const Color(0xFFf9fbfe),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: headerstyle.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorConstant.blackColor,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              displayValue,
              style: TextStyle(fontSize: 12.sp, color: Colors.black),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
