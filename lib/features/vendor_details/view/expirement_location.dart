import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/order_details/model/shipping_cities_model.dart';

class ExpirementLocation extends StatefulWidget {
  const ExpirementLocation({super.key});

  @override
  State<ExpirementLocation> createState() => _ExpirementLocationState();
}

class _ExpirementLocationState extends State<ExpirementLocation> {
  ShippingCitiesModel? selectedpickup;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
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
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
          child: Row(
            children: [
              Text(
                'Pickup Location',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.black),
              ),
              Expanded(
                // Wrap the dropdown in Expanded to constrain its width
                child: CustomDropdownButton<ShippingCitiesModel>(
                  items: const [],
                  dropdownValue: null,
                  onChanged: (newValue) {
                    setState(() {
                      selectedpickup = newValue;
                    });
                  },
                  getItemLabel: (ShippingCitiesModel item) => item.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
