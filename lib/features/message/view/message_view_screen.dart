import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/message/api/alert_message_api.dart';
import 'package:smartbazar/features/message/api/last_message_api.dart';
import 'package:smartbazar/features/message/api/message_thread_api.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MessageViewScreen extends ConsumerWidget {
  const MessageViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GenericSafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 20.h, left: 12.w, right: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Message",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
                const TabBar(
                  tabs: [
                    Tab(text: 'Chat'),
                    Tab(text: 'Alerts'),
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
                  child: TabBarView(
                    children: [
                      // Chat Tab
                      Consumer(
                        builder: (context, ref, _) {
                          final messageThreadProvider =
                              ref.watch(getMessageThreadProvider);
                          return messageThreadProvider.when(
                            data: (messageThread) {
                              final messages = messageThread.result!.data;
                              return ListView.separated(
                                itemCount: messages!.length,
                                itemBuilder: (context, index) {
                                  final message = messages[index];
                                  return Consumer(
                                    builder: (context, ref, _) {
                                      final lastMessageAsync = ref.watch(
                                          getLastMessageProvider(
                                              message.id.toString()));
                                      return lastMessageAsync.when(
                                        data: (lastMessage) {
                                          return ListOfMessages(
                                            threadId: message.id.toString(),
                                            subject: message.subject!,
                                            body: lastMessage?.body ??
                                                'No messages yet',
                                          );
                                        },
                                        loading: () =>
                                            const CircularProgressIndicator(),
                                        error: (error, stack) =>
                                            Text('Error: $error'),
                                      );
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 20.h),
                              );
                            },
                            loading: () => const Center(
                                child: CircularProgressIndicator()),
                            error: (error, stack) =>
                                Center(child: Text('Error: $error')),
                          );
                        },
                      ),
                      Consumer(
                        builder: (context, ref, _) {
                          final alertProvider =
                              ref.watch(getAlertMessageProvider);

                          return alertProvider.when(
                            data: (alertList) {
                              final alerts = alertList.alerts;

                              return ListView.separated(
                                itemCount: alerts!.length,
                                itemBuilder: (context, index) {
                                  final alert = alerts[index];
                                  return Container(
                                    padding: EdgeInsets.all(16.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 6,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Alert Icon and Title
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.notifications,
                                              color:
                                                  Colors.green.withOpacity(0.9),
                                            ),
                                            SizedBox(width: 8.w),
                                            Expanded(
                                              child: Text(
                                                alert.title ?? 'No title',
                                                style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),

                                        // Alert Body Text
                                        Text(
                                          alert.body ?? 'No body',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color:
                                                Colors.black.withOpacity(0.8),
                                          ),
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                        ),
                                        SizedBox(height: 20.h),

                                        // Promotional Image
                                        if (alert.image != null)
                                          Center(
                                            child: Image.network(
                                              alert.image!,
                                              fit: BoxFit.cover,
                                              height: 100.h,
                                              width: 180.h,
                                            ),
                                          ),
                                        SizedBox(height: 20.h),

                                        // Date and Time Row
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              alert.createdAt!,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 20.h),
                              );
                            },
                            loading: () => const Center(
                                child: CircularProgressIndicator()),
                            error: (error, stack) =>
                                Center(child: Text('Error: $error')),
                          );
                        },
                      ),

                      // Alerts Tab
                      // Consumer(
                      //   builder: (context, ref, _) {
                      //     final alertProvider =
                      //         ref.watch(getAlertMessageProvider);

                      //     return alertProvider.when(
                      //       data: (alertList) {
                      //         // Now `alertList.data` contains the list of alerts
                      //         final alerts = alertList.alerts;

                      //         return ListView.separated(
                      //           itemCount: alerts!.length,
                      //           itemBuilder: (context, index) {
                      //             final alert = alerts[index];
                      //             return InkWell(
                      //               onTap: () {
                      //                 Navigator.push(
                      //                   context,
                      //                   MaterialPageRoute(
                      //                     builder: (_) => AlertScreen(
                      //                       alertTitle:
                      //                           alert.title ?? 'No title',
                      //                       alertBody: alert.body ?? 'No body',
                      //                       alertImage: alert.image,
                      //                       alertDateTime: alert.createdAt!,
                      //                     ),
                      //                   ),
                      //                 );
                      //               },
                      //               child: ListTile(
                      //                 leading: CircleAvatar(
                      //                   backgroundImage: alert.image != null
                      //                       ? NetworkImage(alert.image!)
                      //                       : const AssetImage(
                      //                               'assets/images/default_avatar.png')
                      //                           as ImageProvider,
                      //                 ),
                      //                 title: Text(
                      //                   alert.title ?? 'No title',
                      //                   style: TextStyle(
                      //                     fontSize: 14.sp,
                      //                     fontWeight: FontWeight.w700,
                      //                     overflow: TextOverflow.ellipsis,
                      //                   ),
                      //                   maxLines: 1,
                      //                 ),
                      //                 subtitle: Text(
                      //                   alert.body ?? 'No body',
                      //                   style: TextStyle(
                      //                     fontSize: 12.sp,
                      //                     overflow: TextOverflow.ellipsis,
                      //                     color: const Color(0xff000000)
                      //                         .withOpacity(0.45),
                      //                     fontWeight: FontWeight.w600,
                      //                   ),
                      //                   maxLines: 2,
                      //                 ),
                      //                 trailing: IconButton(
                      //                   icon:
                      //                       const Icon(Icons.arrow_forward_ios),
                      //                   onPressed: () {
                      //                     // Handle navigation or action
                      //                   },
                      //                 ),
                      //               ),
                      //             );
                      //           },
                      //           separatorBuilder: (context, index) =>
                      //               SizedBox(height: 20.h),
                      //         );
                      //       },
                      //       loading: () => const Center(
                      //           child: CircularProgressIndicator()),
                      //       error: (error, stack) =>
                      //           Center(child: Text('Error: $error')),
                      //     );
                      //   },
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
              ],
            ),
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
            builder: (_) => ChatScreen(threadId: threadId, username: subject),
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
            const Spacer(),
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
