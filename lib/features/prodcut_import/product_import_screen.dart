import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/prodcut_import/Api/product_import_provider.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductImportScreen extends ConsumerStatefulWidget {
  const ProductImportScreen({super.key});

  @override
  ConsumerState<ProductImportScreen> createState() =>
      _ProductImportScreenState();
}

class _ProductImportScreenState extends ConsumerState<ProductImportScreen> {
  File? imageFile;
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      // Handle the error more gracefully, perhaps show an alert dialog
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
//  final privacyPolicyAsync = ref.watch(storeProductImportProvider);
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.import_contacts),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Product Import',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Text('Go back',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff888888))),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2.w,
                  color: const Color(0xffD9D9D9),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Please contact administrator',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CSV File',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      ChooseFile(
                        textColor: Colors.red,
                        onFileSelected: (file) async {
                          // This assumes that StoreProductImportProvider returns an AsyncValue
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Sample Document',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.file_copy,
                            size: 20.h,
                            color: const Color(0xff362677),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      DownloadFileSampleWidget(
                        onclicked: () async {
                          const String fileUrl =
                              'https://smartbazaar.com.np/uploads/samples/Smartbazaaruser.csv';

                          try {
                            // Get the application directory to save the file
                            var dir = await getApplicationDocumentsDirectory();
                            String savePath = '${dir.path}/Smartbazaaruser.csv';

                            // Dio instance to handle file download
                            Dio dio = Dio();

                            // Start downloading the file
                            await dio.download(fileUrl, savePath);
                            print('File downloaded to $savePath');

                            // Optional: Show a success message or do something after download
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text('File downloaded successfully!')),
                            );
                          } catch (e) {
                            print("Error downloading file: ${e.toString()}");

                            // Optional: Show an error message
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Error downloading file: ${e.toString()}')),
                            );
                          }
                        },
                        text: 'Donwload Sample',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      DownloadFileSampleWidget(
                        onclicked: () async {
                          final uri = Uri.parse(
                              "https://smartbazaar.com.np/uploads/samples/SmartBazaar_Product_Import_Documentation.pdf");
                          await launchUrl(
                            uri,
                          );
                        },
                        text: 'Donwload Documents',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                // GeneralTextButton(
                //   // marginH: 0,
                //   width: MediaQuery.of(context).size.width,
                //   title: 'Online Transaction',
                //   fgColor: Colors.white,
                //   bgColor: const Color(0xff362677),
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (_) =>
                //                 const OnlineTransactionRecordScreen()));
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DownloadFileSampleWidget extends StatelessWidget {
  final String text;
  final Function()? onclicked;
  const DownloadFileSampleWidget(
      {super.key, required this.text, required this.onclicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclicked,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 11.w),
        decoration: BoxDecoration(
            color: const Color(0xff2ECC71),
            borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          children: [
            Icon(
              Icons.file_copy,
              size: 15.h,
              color: Colors.white,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}

class ChooseFile extends StatefulWidget {
  final Function(File?) onFileSelected;
  final Color? textColor;

  const ChooseFile({
    Key? key,
    required this.onFileSelected,
    this.textColor,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChooseFileState createState() => _ChooseFileState();
}

class _ChooseFileState extends State<ChooseFile> {
  File? _selectedFile;

  void resetFile() {
    setState(() {
      _selectedFile = null;
    });
  }

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _selectedFile = File(result.files.single.path!);
        widget.onFileSelected(_selectedFile);
      });
    }
  }

  Future<void> uploadFile() async {
    if (_selectedFile != null) {
      final response = await storeProductImport(_selectedFile!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(response)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No file selected')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: pickFile,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.only(top: 6, left: 12, bottom: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffEDECEC),
              ),
              child: Row(
                children: [
                  const Text(
                    'Choose File',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff36383C),
                    ),
                  ),
                  const SizedBox(width: 7),
                  const Text(
                    "|",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffADADAD),
                    ),
                  ),
                  const SizedBox(width: 11),
                  Text(
                    _selectedFile == null ? 'No File Chosen' : 'File Selected',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: widget.textColor ?? const Color(0xff36383C),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        _selectedFile != null
            ? Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffADADAD)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Selected File: ${_selectedFile!.path.split('/').last}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              )
            : Container(),
        const SizedBox(height: 10),
        GeneralTextButton(
            onPressed: uploadFile,
            marginH: 0,
            height: 28.h,
            width: 100.w,
            isSmallText: true,
            fgColor: Colors.white,
            bgColor: const Color(0xff362677),
            title: 'Add'),
      ],
    );
  }
}
