import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/message/api/last_message_api.dart';
import 'package:smartbazar/features/message/api/message_thread_api.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MessageViewScreen extends ConsumerWidget {
  const MessageViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageThreadProvider = ref.watch(getMessageThreadProvider);

    return GenericSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Message"),
                  PopupMenuButton(
                    offset: const Offset(20, 40),
                    icon: const Icon(Icons.more_horiz),
                    onSelected: (item) {
                      // Handle menu selection
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      const PopupMenuItem(child: Text('Unread')),
                      const PopupMenuItem(child: Text('Started')),
                      const PopupMenuItem(child: Text('Important')),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.mail_outline),
                      Text(
                        'Chat',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.notifications, color: Color(0xff362677)),
                      Text(
                        'Alerts',
                        style: TextStyle(
                          color: const Color(0xff362677),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Text(
                'Previous Message',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff000000).withOpacity(0.5),
                ),
              ),
              SizedBox(height: 12.h),
              Expanded(
                child: messageThreadProvider.when(
                  data: (messageThread) {
                    final messages = messageThread.result.data;
                    return ListView.separated(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        // Use the getLastMessage provider to fetch the last message for each thread
                        return Consumer(
                          builder: (context, ref, _) {
                            final lastMessageAsync = ref.watch(
                                getLastMessageProvider(message.id.toString()));
                            return lastMessageAsync.when(
                              data: (lastMessage) {
                                return ListOfMessages(
                                  threadId: message.id.toString(),
                                  subject: message.subject,
                                  body: lastMessage?.body ??
                                      'No messages yet', // Show last message body
                                );
                              },
                              loading: () => const CircularProgressIndicator(),
                              error: (error, stack) => Text('Error: $error'),
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 20.h),
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

class ListOfMessages extends StatelessWidget {
  final String threadId;
  final String subject;
  final String body;

  const ListOfMessages({
    super.key,
    required this.threadId,
    required this.subject,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChatScreen(threadId: threadId),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            // Profile Icon
            Container(
              padding: EdgeInsets.all(12.h),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffD9D9D9),
              ),
              child: const Icon(Icons.person_3_outlined),
            ),
            SizedBox(width: 11.w),

            // Text Column
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    body,
                    style: TextStyle(
                      fontSize: 12.sp,
                      overflow: TextOverflow.ellipsis,
                      color: const Color(0xff000000).withOpacity(0.45),
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),

            // Status Indicator
            Container(
              height: 12.h,
              width: 12.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff781740),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
