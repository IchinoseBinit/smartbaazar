import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/message/api/reply_message_model_api.dart';
import 'package:smartbazar/features/message/api/send_message_api.dart';

class SendMessageBottomWidget extends ConsumerStatefulWidget {
  const SendMessageBottomWidget(
      {super.key, required this.ref, required this.productidid});
  final WidgetRef? ref;
  final String? productidid;

  @override
  _SendMessageBottomWidgetState createState() => _SendMessageBottomWidgetState();
}

class _SendMessageBottomWidgetState extends ConsumerState<SendMessageBottomWidget> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  bool isDialogVisible = false; // Add this flag to track dialog state


  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      nameController.text = prefs.getString("name") ?? "";
      emailController.text = prefs.getString("email") ?? "";
      phoneController.text = prefs.getString("phone") ?? "";
      bodyController.text = prefs.getString("body") ?? "";
      messageController.text = prefs.getString("message") ?? "";
    });

    print(
        'Loaded Data: Name=${nameController.text}, Email=${emailController.text}, Phone=${phoneController.text}');
  }

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

 void _submitData() {
  String name = nameController.text.trim();
  String email = emailController.text.trim();
  String phone = phoneController.text.trim();
  String body = bodyController.text.trim();
  String message = messageController.text.trim();

  // Check if any of the fields are empty
  if (name.isEmpty || email.isEmpty || phone.isEmpty || body.isEmpty || message.isEmpty) {
    // Show dialog for empty fields
    _showEmptyFieldDialog();
    return;
  }

  // Show dialog with animation to indicate submission
  _showDialogWithAnimation();

  // Handle your submit logic here
  print("Submitted Data: Name=$name, Email=$email, Phone=$phone, Body=$body, Message=$message");
}

void _showDialogWithAnimation() async {
  // Prevent showing the dialog again if it's already visible
  if (isDialogVisible) return;

  isDialogVisible = true; // Mark dialog as visible

  // Show the initial dialog with the loading indicator
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        elevation: 16,
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: StatefulBuilder(
            builder: (context, setState) {
              // Initially, show CircularProgressIndicator
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    "Submitting...",
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.h),
                  const CircularProgressIndicator(),
                ],
              );
            },
          ),
        ),
      );
    },
  );

  // Simulate the message sending process
  await Future.delayed(const Duration(seconds: 2));

  // Call the sendNewMessageProvider and wait for the result
  final messageStatus = await ref.watch(sendNewMessageProvider(
    '931',
    'This is a body message',
    'Message Subject',
    null, // No image file
  ).future);

  // Close the loading dialog
  Navigator.pop(context);
  isDialogVisible = false; // Reset dialog flag

  // Now, show the result dialog after the message is sent
 showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        elevation: 16,
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 40.sp),
              SizedBox(height: 20.h),
              Text(
                "Message sent to vendor/n check message section to chat!",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                },
                child: const Text("OK"),
              ),
            ],
          ),
        ),
      );
    },
  );
    Navigator.pop(context);

}






  void _showEmptyFieldDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 16,
          child: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.error, color: Colors.red, size: 40.sp),
                SizedBox(height: 20.h),
                Text(
                  "Please fill in all fields.",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close dialog
                  },
                  child: const Text("OK"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 16.h,
        bottom: MediaQuery.of(context).viewInsets.bottom +
            16.h, // Adjust for keyboard
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Start a chat",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff54225f)),
                ),
                IconButton(
                  icon:
                      Icon(Icons.close, color: const Color(0xff54225f), size: 28.sp),
                  onPressed: () => Navigator.pop(context), // Close Bottom Sheet
                ),
              ],
            ),
            SizedBox(height: 12.h),

            // Name TextField
            _buildTextField(nameController, "Name", Icons.person),
            SizedBox(height: 10.h),

            // Email TextField
            _buildTextField(emailController, "Email", Icons.email,
                TextInputType.emailAddress),
            SizedBox(height: 10.h),

            // Phone TextField
            _buildTextField(
                phoneController, "Phone", Icons.phone, TextInputType.phone),
            SizedBox(height: 10.h),

            // Body TextField (Larger - Expanded with scrolling support)
            _buildTextField(messageController, "Message", Icons.message,
                TextInputType.multiline),

            SizedBox(height: 10.h),
            _buildTextField(bodyController, "Body", Icons.text_fields,
                TextInputType.multiline, 5, 100),

            // Message TextField
            SizedBox(height: 20.h),

            // Submit Button
            GeneralEelevatedButton(text: 'Submit', onPresssed: _submitData),
            // ElevatedButton(
            //   onPressed: _submitData,
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.blue,
            //     padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            //   ),
            //   child: Text("Submit", style: TextStyle(fontSize: 16.sp, color: Colors.white)),
            // ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label,
    IconData icon, [
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
    double height = 50.0,
  ]) {
    return SizedBox(
      height: height, // Adjust height for larger fields
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: TextStyle(fontSize: 16.sp),
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, size: 20.sp),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
        ),
      ),
    );
  }
}
