import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/message/api/delete_message_api.dart';
import 'package:smartbazar/features/message/api/message_is_important_api.dart';
import 'package:smartbazar/features/message/api/message_list_api.dart';
import 'package:smartbazar/features/message/api/message_thread_api.dart';
import 'package:smartbazar/features/message/api/reply_message_model_api.dart';
import 'package:smartbazar/features/message/model/message_list_model.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/check_user_verified_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/api/vendor_card_api.dart';
import 'package:smartbazar/features/vendor/vendor_profile/view/del.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

final selectedImageProvider = StateProvider<XFile?>((ref) => null);
Future<ui.Image> captureWidget(GlobalKey key) async {
  if (key.currentContext == null) {
    throw Exception('Widget is not yet rendered.');
  }

  RenderRepaintBoundary boundary =
      key.currentContext!.findRenderObject() as RenderRepaintBoundary;
  ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  return image;
}

// Helper function to save the captured image to the gallery
Future<String> saveImageToGallery(ui.Image image) async {
  ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  Uint8List pngBytes = byteData!.buffer.asUint8List();

  // Get the temporary directory
  final directory = await getTemporaryDirectory();
  final filePath = '${directory.path}/widget_image.png';
  final file = File(filePath);

  // Save the image to the file
  await file.writeAsBytes(pngBytes);

  // Save the image to the gallery
  await ImageGallerySaver.saveFile(filePath);

  return filePath;
}

const flutterColor = Color(0xFF40D0FD);

class ChatScreen extends ConsumerStatefulWidget {
  final String threadId;
  final String username;
  final String postId;
  String? imageUrl;
  // final String isImportant;

  ChatScreen(
      {super.key,
      required this.threadId,
      required this.username,
      required this.postId,
      this.imageUrl
      // required this.isImportant,
      });

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  String? _currentUserId;
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  bool _isLoadingMore = false;
  File? _imageFile;
  bool? _isverified;
  VerifyUser? _givecard;
  BigContainer? _card;

  final ImagePicker _imagePicker = ImagePicker();
  final GlobalKey _widgetKey = GlobalKey(); // Key to reference the widget
  Uint8List? _capturedImage;
  String? _savedImagePath;
  Future<void> loaduserid() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _currentUserId = prefs.getString("userId");
  }

  @override
  void initState() {
    loaduserid();
    _isverified = false;
    checkUserVerified().then(
      (value) {
        _isverified = value?.userVerify == '1' ? true : false;
        if (_isverified!) _givecard = value;
        print('babu $_isverified');
      },
    );
    super.initState();
    _scrollController.addListener(_onScroll); // Add scroll listener
    if (widget.imageUrl != null) _downloadImage();

    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //   captureImage(); // This ensures that capture happens after the widget is built
    // });
  }

  Future<void> _captureAndSendImage() async {
    try {
      await Future.delayed(const Duration(seconds: 1)); // Ensure rendering completion

      if (_widgetKey.currentContext == null) {
        print('Vendor Card Widget is not yet rendered.');
        return;
      }

      RenderRepaintBoundary? boundary = _widgetKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary?;

      if (boundary == null) {
        print("Render boundary not found!");
        return;
      }

      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      // Get the temporary directory
      final directory = await getTemporaryDirectory();
      final filePath = '${directory.path}/vendor_card.png';
      final file = File(filePath);

      // Save the image file
      await file.writeAsBytes(pngBytes);

      // Update state to send in chat
      setState(() {
        _savedImagePath = filePath;
      });

      ref.read(selectedImageProvider.notifier).state = XFile(filePath);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Card selected !')),
      );
    } catch (e) {
      print('Error capturing image: $e');
    }
  }

  Future<void> _downloadImage() async {
    try {
      print("Downloading: ${widget.imageUrl}");
      final response = await http.get(Uri.parse(widget.imageUrl!));
      if (response.statusCode == 200) {
        final tempDir = await getTemporaryDirectory();
        final filePath = '${tempDir.path}/downloaded_image.jpg';
        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        setState(() {
          _imageFile = file;
        });

        ref.read(selectedImageProvider.notifier).state = XFile(file.path);

        print("Image saved temporarily at: $filePath");
      } else {
        print("Failed to load image");
      }
    } catch (e) {
      print("Error downloading image: $e");
    }
  }

  // Future<void> _loadUserId() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _currentUserId = prefs.getString('userId');
  //   });
  // }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Load more messages when scrolled to the top
    if (_scrollController.position.pixels <=
            _scrollController.position.minScrollExtent &&
        !_isLoadingMore) {
      _loadMoreMessages();
    }
  }

  Future<void> _loadMoreMessages() async {
    setState(() {
      _isLoadingMore = true;
    });

    try {
      // Fetch previous page messages
      await ref.read(
          getMessageListProvider(widget.threadId, _currentPage - 1).future);
      setState(() {
        _currentPage -= 1; // Decrement page after fetching
      });
    } catch (e) {
      print('Error loading more messages: $e');
    } finally {
      setState(() {
        _isLoadingMore = false;
      });
    }
  }

  Future<void> _pickImage() async {
    // Use image_picker to select an image
    final pickedImage = await _imagePicker.pickImage(
      source: await _showImageSourceDialog(context),
    );
    if (pickedImage != null) {
      // Update the provider's state
      ref.read(selectedImageProvider.notifier).state =
          pickedImage; // Use provider to set the image
      print("Selected Image: ${pickedImage.path}");
    }
  }

  Future<ImageSource> _showImageSourceDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Choose Image Source"),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, ImageSource.camera),
              child: const Text("Camera")),
          TextButton(
              onPressed: () => Navigator.pop(ctx, ImageSource.gallery),
              child: const Text("Gallery")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if(_currentUserId!=null) {
      ref.watch(getVendorCardProvider(int.tryParse(_currentUserId!)!)).whenData(
      (value) {
        print("kalu $value");
        _card = BigContainer(
            key: GlobalKey(),
            lat: double.tryParse(value.data!.vendor_card!.latitude ?? '0')!,
            long: double.tryParse(value.data!.vendor_card!.longitude ?? '0')!,
            id: value.data!.vendor_card!.membership_id!,
            title: value.data!.vendor_card!.membership_title!,
            logo: value.data!.vendor_card!.photo!,
            contact: value.data!.vendor_card!.phone!,
            storyCount: value.data!.vendor_card!.storycount.toString(),
            membershipTitle: value.data!.vendor_card!.membership_title!,
            deals_circle: '0',
            total_connections: value.data!.vendor_card!.subscribers.toString(),
            total_prize_worth: value.data!.vendor_card!.prize_worth.toString(),
            location: value.data!.vendor_card!.nearestbranch ?? '',
            Cnumber: value.data!.vendor_card!.phone!,
            issubbed: value.data!.vendor_card!.subscribed == 'subscribed'
                ? true
                : false, // Assuming isSubscribed is in vendor_card

            memebertitle: value.data!.vendor_card!.membership_title!);
      },
    );
    }

    // Fetch messages based on threadId using Riverpod provider
    final messagesAsyncValue =
        ref.watch(getMessageListProvider(widget.threadId, _currentPage));
    final selectedImage =
        ref.watch(selectedImageProvider); // Updated to remove .state

    return GenericSafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          toolbarHeight: 30.h,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            ChatUserDetailWidget(
              username: widget.username,
              threadId: widget.threadId,
              postId: widget.postId,
              //   isImportant: widget.isImportant,
            ),
            SizedBox(height: 30.h),

            // Expanded widget to display messages
            Expanded(
              child: messagesAsyncValue.when(
                data: (messageList) {
                  final messages = messageList.result?.data;

                  if (messages == null || messages.isEmpty) {
                    return const Center(child: Text('No messages available'));
                  }

                  return LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        reverse: true,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints.maxHeight,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListView.builder(
                                reverse: true,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: messages.length,
                                itemBuilder: (context, index) {
                                  final message = messages[index];
                                  // print("kale $_currentUserId");

                                  return ChatMessageWidget(
                                    isUserMessage:
                                        message.userId == SmartClient.userId,
                                    message: message,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) =>
                    const Center(child: Text('please login again')),
              ),
            ),

            SafeArea(
              child: Container(
                color: const Color(0xff781740),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // White container
                      borderRadius:
                          BorderRadius.circular(25.r), // Rounded edges
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.w, vertical: 5.h), // Adjust padding
                    child: Row(
                      children: [
                        // Display the selected image with a cross button
                        if (selectedImage != null)
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.file(
                                  File(selectedImage.path),
                                  width: 100,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ref
                                        .read(selectedImageProvider.notifier)
                                        .state = null;
                                    // selectedImage =
                                    //     null; // Remove the selected image
                                  });
                                },
                                child: const Icon(Icons.close,
                                    color: Colors.red, size: 20),
                              ),
                            ],
                          ),
                        SizedBox(
                            width: selectedImage != null
                                ? 8.0
                                : 0), // Space between image and text field
                        Expanded(
                          child: TextFormField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors
                                  .transparent, // Transparent background for the text field
                              hintText: 'Type Here',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              border: InputBorder.none, // No border
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        // if (_isverified!)
                          GlowButton(
                            onPressed: () {
                              // Show the dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    backgroundColor: Colors.transparent,
                                    insetPadding: const EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        // Positioned widget for the SizedBox with RepaintBoundary
                                        Positioned(
                                          child: SizedBox(
                                            height: 550.h,
                                            width: 400.w,
                                            child: RepaintBoundary(
                                              key: _widgetKey,
                                              child: _card ??
                                                  const SizedBox
                                                      .shrink(), // Ensure _card is not null
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );

                              // Wait for 1 second before closing the dialog
                              Future.delayed(const Duration(seconds: 1), () {
                                Navigator.of(context)
                                    .pop(); // Close the dialog after 1 second
                              });

                              // Capture and send the image (optional)
                              _captureAndSendImage();
                            },
                            color: flutterColor,
                            child: const Text('Card'),
                          ),

                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: _pickImage, // Call _pickImage on tap
                          child: const Icon(Icons.attach_file,
                              color: Colors.black), // Attachment icon
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () => _sendMessage(),
                          child: Container(
                            height: 32.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: const Color(
                                  0xff362677), // Color for the send button
                            ),
                            child: const Icon(Icons.send, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _sendMessage() async {
    final message = _messageController.text;
    final selectedImage = ref.read(selectedImageProvider);

    if (message.isNotEmpty || selectedImage != null) {
      try {
        // Handle image-based message
        final replyMessageAsyncValue = ref.read(
          sendReplyMessageProvider(
            widget.threadId,
            message,
            selectedImage != null ? File(selectedImage.path) : null,
          ).future,
        );
        // print(">>>>>>>>>>>>>>>>>>>>>>>>${File(selectedImage!.path)}");
        final messageReply = await replyMessageAsyncValue;

        if (messageReply.success) {
          _messageController.clear(); // Clear the text controller
          ref.read(selectedImageProvider.notifier).state =
              null; // Clear selected image

          // Invalidate the message list provider to trigger a refresh
          ref.invalidate(getMessageListProvider(widget.threadId, _currentPage));

          // // Show success message
          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(content: Text('Message sent successfully')),
          // );

          // Refresh message list provider after invalidating it
          ref.refresh(getMessageListProvider(widget.threadId, _currentPage));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'Failed to send message: ${messageReply.message ?? 'Unknown error'}'),
            ),
          );
        }
      } catch (e) {
        print('Error sending message: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error sending message')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a message before sending')),
      );
    }
  }
}

class ChatUserDetailWidget extends ConsumerWidget {
  final String username;
  final String threadId;
  final String postId;

  const ChatUserDetailWidget({
    super.key,
    required this.username,
    required this.threadId,
    required this.postId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isImportantAsync = ref.watch(isMessageImportantProvider(threadId));
    final messageThreadAsync =
        ref.watch(getMessageThreadProvider(filter: null));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 9.h),
        decoration: BoxDecoration(
          color: const Color(0xff362677),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Row(
          children: [
            Container(
              height: 60.h,
              width: 60.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Icon(
                Icons.person_outline,
                size: 25.h,
              ),
            ),
            SizedBox(width: 14.w),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.h),
                  Text(
                    username,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () async {
                          final success = await ref.read(
                              markMessageIsImportantProvider(threadId).future);
                          if (success) {
                            // Invalidate to trigger a refresh
                            ref.invalidate(
                                getMessageThreadProvider(filter: null));

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'Message set important successfully')),
                            );
                          }
                        },
                        icon: messageThreadAsync.when(
                          data: (threadData) {
                            final isImportant = threadData.result!.data
                                    ?.firstWhere(
                                        (item) => item.postId == postId)
                                    .isImportant ==
                                "1";
                            return Icon(
                              Icons.star,
                              color: isImportant ? Colors.yellow : Colors.white,
                            );
                          },
                          loading: () => const CircularProgressIndicator(),
                          error: (_, __) => const Icon(Icons.error),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      GestureDetector(
                          onTap: () async {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Deleting item...'),
                                  backgroundColor: Colors.grey),
                            );
                            try {
                              await ref
                                  .read(deleteMessageProvider(threadId).future);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Item deleted successfully'),
                                    backgroundColor: Colors.grey),
                              );
                              await Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const MessageViewScreen(),
                                ),
                              );
                              // ref.invalidate(
                              //     );
                            } catch (e) {
                              // Show error message
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text('Failed to delete item: $e'),
                                    backgroundColor: Colors.grey),
                              );
                            }
                          },
                          child: const Icon(Icons.delete, color: Colors.white)),
                      SizedBox(width: 3.w),
                      const Icon(Icons.mail_outline, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go back to\nMessage',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessageWidget extends StatelessWidget {
  final bool isUserMessage;
  final MessageData message;

  const ChatMessageWidget({
    super.key,
    required this.isUserMessage,
    required this.message,
  });

  bool _isImageUrl(String? url) {
    print("maka $url");
    return url != null &&
        (url.endsWith('.png') ||
            url.endsWith('.jpg') ||
            url.endsWith('.jpeg') ||
            url.endsWith('.gif'));
  }

  @override
  Widget build(BuildContext context) {
    String baseUrl = ApiConstants.imgUrl;
    print("alat ${message.filename}");

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment:
            isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          SizedBox(width: 8.w),
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: message.filename == null && isUserMessage
                    ? const Color(0xff6148FF)
                    : const Color(0xffD9D9D9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (message.body != null && message.body!.isNotEmpty)
                    Text(
                      message.body!,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: isUserMessage ? Colors.white : Colors.black,
                      ),
                      overflow: TextOverflow.visible,
                      maxLines: null,
                    ),

                  if (message.body != null &&
                      message.body!.isNotEmpty &&
                      _isImageUrl(message.filename))
                    SizedBox(height: 4.h),

                  // Corrected the image display section
                  if (_isImageUrl(message.filename))
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Image.network(
                        height: 200.h,
                        '$baseUrl${message.filename}',
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image),
                      ),
                    ),

                  if (message.filename != null &&
                      message.filename!.isNotEmpty &&
                      !_isImageUrl(message.filename))
                    Row(
                      children: [
                        const Icon(Icons.attachment, size: 16),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Text(
                            message.filename!,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color:
                                  isUserMessage ? Colors.white : Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          if (isUserMessage)
            Container(
              margin: EdgeInsets.only(left: 2.w),
              height: 40.h,
              width: 40.w,
              padding: EdgeInsets.all(8.w),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffD9D9D9)),
              child: const Icon(Icons.person_outline),
            ),
        ],
      ),
    );
  }
}
