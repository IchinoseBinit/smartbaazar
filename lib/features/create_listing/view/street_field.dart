import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/create_listing/api/get_location_provider.dart';
import 'package:smartbazar/features/create_listing/model/places_model.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';

class StreetField extends StatefulWidget {
  final Function(Place) onStreetSelected; // Callback function

  const StreetField({super.key, required this.onStreetSelected});

  @override
  State<StreetField> createState() => _StreetFieldState();
}

class _StreetFieldState extends State<StreetField> {
  final TextEditingController _controller = TextEditingController();
  List<Place> _streetList = []; // List to store street suggestions
  Timer? _debounce;
  Place? _selectedplace;
  bool? _showresult = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSearchChanged);
  }

  // Debounce for API calls
  void _onSearchChanged() {
    _showresult = true;
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 300), () {
      String searchText = _controller.text.trim();
      if (searchText.isNotEmpty) _getStreet(searchText);
    });
  }

  Future<void> _getStreet(String name) async {
    try {
      final value = await getpickaddress(name);
      setState(() {
        _streetList = value.places ?? [];
      });
    } catch (e) {
      print('Error fetching street data: $e');
      setState(() {
        _streetList = [];
      });
    }
  }

  void _onStreetSelected(Place street) {
    setState(() {
      _streetList = []; // Clear the list of cities
      _controller.text =
          street.description!; // Update the text field with the selected street
      _selectedplace = street;
      _showresult = false;
    });

    // Send selected street to parent widget
    widget.onStreetSelected(_selectedplace!);

    // Close the keyboard
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    _controller.removeListener(_onSearchChanged);
    _controller.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreateListingCardWidget(
          child: Row(
            children: [
              Text(
                'Street',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Colors.black),
              ),
              SizedBox(width: 10.w,),
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Select a street address',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color(0xffADADAD)),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_showresult!)
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              elevation: 4.0,
              color: const Color(0xffADADAD),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _streetList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_streetList[index].description!),
                    onTap: () => _onStreetSelected(_streetList[index]),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
