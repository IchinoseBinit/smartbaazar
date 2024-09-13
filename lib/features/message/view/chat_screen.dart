import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/message/api/message_list_api.dart';
import 'package:smartbazar/features/message/model/message_list_model.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ChatScreen extends ConsumerWidget {
  final String threadId;
  const ChatScreen({super.key, required this.threadId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Fetch messages based on threadId using Riverpod provider
    final messagesAsyncValue = ref.watch(getMessageListProvider(threadId));

    return GenericSafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true, // Prevents overflow when keyboard opens
        appBar: AppBar(
          toolbarHeight: 30.h,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            const ChatUserDetailWidget(),
            SizedBox(height: 30.h),

            // Expanded widget to display messages
            Expanded(
              child: messagesAsyncValue.when(
                data: (messageList) {
                  final messages = messageList.result?.data;

                  if (messages == null || messages.isEmpty) {
                    return const Center(child: Text('No messages available'));
                  }

                  // Ensure messages are sorted based on the latest first
                  final lastMessage = messages.lastWhere(
                    (message) =>
                        message.userId == '210', // Replace with current user ID
                    orElse: () => messages.last,
                  );

                  return LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        reverse:
                            true, // Ensure it scrolls to the latest message
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints
                                .maxHeight, // Takes up all available space
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListView.builder(
                                shrinkWrap:
                                    true, // Allows ListView to occupy as much space as needed
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: messages.length,
                                itemBuilder: (context, index) {
                                  final message = messages[index];
                                  return ChatMessageWidget(
                                    isUserMessage: message.userId ==
                                        '210', // Replace with the current user ID comparison
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
                error: (error, stack) => Center(child: Text('Error: $error')),
              ),
            ),

            // Input field for sending a new message
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 8.h), // Padding for the input field
                child: Container(
                  color: const Color(0xff781740), // Red container
                  padding:
                      EdgeInsets.symmetric(horizontal: 7.w, vertical: 10.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffFFFFFF),
                            hintText: 'Type Here',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h), // Padding inside TextFormField
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.r), // Rounded corners
                              borderSide:
                                  BorderSide.none, // No border for clean look
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(0xff362677),
                        ),
                        child: const Icon(Icons.send,
                            color: Colors.white), // Send icon
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatUserDetailWidget extends StatelessWidget {
  const ChatUserDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h),
              Text(
                'User Name', // You can replace this with dynamic data
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis, // Use ellipsis for overflow
                maxLines: 1, // Restrict it to one line
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.white),
                  SizedBox(width: 3.w),
                  const Icon(Icons.delete, color: Colors.white),
                  SizedBox(width: 3.w),
                  const Icon(Icons.mail_outline, color: Colors.white),
                ],
              ),
            ],
          ),
          const Spacer(),
          Text(
            'Go back to\nMessage',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis, // Ellipsis for long text
            maxLines: 2, // Can be wrapped to two lines
          ),
        ],
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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        // Only show the profile icon for vendor messages
        if (!isUserMessage)
          Container(
            height: 40.h,
            width: 40.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffD9D9D9)),
            child: const Icon(Icons.person_outline),
          ),
        SizedBox(width: 8.w),
        // Chat bubble
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: isUserMessage
                ? const Color(0xffD9D9D9) // User message bubble color
                : const Color(0xff362677), // Vendor message bubble color
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width *
                  0.7, // Adjust width as needed
            ),
            child: Text(
              message.body ?? '', // Ensure there is always a fallback
              style: TextStyle(
                fontSize: 16.sp,
                color: isUserMessage ? Colors.black : Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
      ],
    );
  }
}
