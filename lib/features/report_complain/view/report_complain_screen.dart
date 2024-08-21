import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/report_complain/model/report_complain_model.dart';
import 'package:smartbazar/features/report_complain/api/report_complain_api.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ReportComplainScreen extends ConsumerStatefulWidget {
  final String productId;
  final String productName;

  const ReportComplainScreen(
      {Key? key, required this.productId, required this.productName})
      : super(key: key);

  @override
  ConsumerState<ReportComplainScreen> createState() =>
      _ReportComplainScreenState();
}

class _ReportComplainScreenState extends ConsumerState<ReportComplainScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _descriptionController = TextEditingController();
  String? _selectedReasonId;

  final Map<String, String> _reasons = {
    'Reason 1': '1',
    'Reason 2': '2',
    'Reason 3': '3',
  };

  @override
  void dispose() {
    _emailController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submitReport() async {
    if (_formKey.currentState!.validate()) {
      final report = ReportComplainModel(
        reportTypeId: _selectedReasonId!,
        email: _emailController.text.trim(),
        message: _descriptionController.text.trim(),
      );

      final success = await ref
          .read(reportComplainProvider(report, widget.productId).future);

      if (success) {
        // Show a success dialog
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Successful!',
              style: TextStyle(
                  color: Color(0xff362677), fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                      'Your report has been sent successfully to us.\nThank you!'),
                ),
                SizedBox(height: 16),
                Icon(
                  Icons.check_circle,
                  color: Color(0xff362677),
                  size: 48,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );

        // Clear the form fields
        _emailController.clear();
        _descriptionController.clear();
        setState(() {
          _selectedReasonId = null;
        });

        Navigator.pop(context);
      } else {
        // Show an error dialog
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Submission Failed',
              style: TextStyle(
                color: Color(0xff362677),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  'Failed to submit the report. Please try again.',
                )),
                SizedBox(height: 16),
                Icon(
                  Icons.error,
                  color: Color(0xff362677),
                  size: 48,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Dismiss keyboard on tap outside
      },
      child: GenericSafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF6F1F1),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.flag,
                          size: 25,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Text(
                            'Report for ${widget.productName} ',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          size: 15,
                          Icons.arrow_back_ios,
                          color: Color(0xffADADAD),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Go back',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff888888)),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'There is something wrong with this product?',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              labelText: 'Reason',
                            ),
                            value: _selectedReasonId,
                            onChanged: (value) {
                              setState(() {
                                _selectedReasonId = value;
                              });
                            },
                            items: _reasons.entries
                                .map((entry) => DropdownMenuItem<String>(
                                      value: entry.value,
                                      child: Text(entry.key),
                                    ))
                                .toList(),
                            validator: (value) =>
                                value == null ? 'Please select a reason' : null,
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: _descriptionController,
                            decoration: const InputDecoration(
                              labelText: 'Description',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 5,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a description';
                              } else if (value.length < 20 ||
                                  value.length > 1000) {
                                return 'Description must be between 20 and 1000 characters';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GeneralTextButton(
                                onPressed: _submitReport,
                                marginH: 1,
                                bgColor: const Color(0xff362677),
                                fgColor: Colors.white,
                                isSmallText: true,
                                title: 'Send Report'),
                          ),
                        ],
                      ),
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
