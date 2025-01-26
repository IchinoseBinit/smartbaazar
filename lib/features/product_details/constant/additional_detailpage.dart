import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/color_constant.dart';
import 'package:smartbazar/features/home/model/product_details_model.dart';

class AdditionalDetailsWidget extends StatelessWidget {
  final String title;
  final dynamic desp; // Could be a string or a map
  final List<FieldOption>? options; // List of options for the field
  final dynamic defaultValue; // Could be a string or a map

  const AdditionalDetailsWidget({
    super.key,
    required this.title,
    required this.desp,
    this.options,
    this.defaultValue,
  });

  @override
  Widget build(BuildContext context) {
    // Parse the default value if it's a string
    int? parseDefaultValue() {
      if (defaultValue is String) {
        return int.tryParse(defaultValue);
      } else if (defaultValue is Map<String, dynamic> &&
          defaultValue.values.isNotEmpty) {
        final firstEntry = defaultValue.values.first;
        if (firstEntry is Map<String, dynamic> &&
            firstEntry.containsKey('id')) {
          return firstEntry['id'] as int?;
        }
      }
      return null;
    }

    // Determine the appropriate value to display
    String getDisplayValue() {
      print("Options: $options, Default Value: $defaultValue");

      final parsedDefaultValue = parseDefaultValue();

      if (options != null && options!.isNotEmpty) {
        // Find the option that matches the parsed default value
        final matchingOption = options!.firstWhere(
          (option) => option.id == parsedDefaultValue,
          orElse: () => FieldOption(value: null),
        );
        return matchingOption.value ?? "No details available";
      } else if (desp is String) {
        return desp;
      } else if (desp is Map<String, dynamic> && desp.values.isNotEmpty) {
        final firstEntry = desp.values.first;
        if (firstEntry is Map<String, dynamic> &&
            firstEntry.containsKey('value')) {
          return firstEntry['value'] ?? "No details available";
        }
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
          Text(
            title,
            style: headerstyle.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorConstant.blackColor,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            displayValue,
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
