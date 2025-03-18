import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/button_nav_bar/cusom_btn_bar/custom_bottom_nav.dart';
import 'package:smartbazar/features/message/api/alert_message_api.dart';
import 'package:smartbazar/features/message/api/last_message_api.dart';
import 'package:smartbazar/features/message/api/message_photo_api.dart';
import 'package:smartbazar/features/message/api/message_thread_api.dart';
import 'package:smartbazar/features/message/api/message_thread_provider.dart';
import 'package:smartbazar/features/message/model/message_photo_model.dart';
import 'package:smartbazar/features/message/view/chat_screen.dart';

class MessageViewScreen extends ConsumerWidget {
  const MessageViewScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetRef myref=ref;
    // bool refresh
    final currentfilter = ref.watch(messageFilterStateProvider);
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 1,
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
                  DropdownButton<String>(
                    // icon: Icon(Icons.more_horiz_outlined),
                    // hint: Icon(Icons.more_horiz_outlined),

                    //   icon: Icon(Icons.more_horiz_outlined),
                    underline: const SizedBox(),
                    padding: EdgeInsets.zero,
                    borderRadius: BorderRadius.zero,
                    elevation: 0,
                    value: currentfilter,
                    items: const [
                      DropdownMenuItem(value: 'unread', child: Text('Unread')),
                      DropdownMenuItem(
                          value: 'important', child: Text('Important')),
                      DropdownMenuItem(
                          value: 'Started', child: Text('Started')),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        ref
                            .read(messageFilterStateProvider.notifier)
                            .updateFilter(value); // Update the filter
                        ref.refresh(getMessageThreadProvider(
                            filter:
                                value)); // Refetch messages with the new filter
                      }
                    },
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
                'Previous Message/Alerts',
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
                    //   Container(),
                    // Chat Tab
                    Consumer(
                      builder: (context, ref, _) {
                        final messageThreadProvider = ref.watch(
                            getMessageThreadProvider(filter: currentfilter));

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
                                          passref: myref,
                                          threadId: message.id.toString(),
                                          postId: message.postId.toString(),
                                          subject: message.subject!,
                                          isImportant: message.isImportant!,
                                          body: lastMessage?.body ??
                                              'No messages yet',
                                        );
                                      },
                                      loading: () => Center(
                                        child: Shimmer.fromColors(
                                          baseColor: Colors.grey[300]!,
                                          highlightColor: Colors.grey[100]!,
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            width: 40.w,
                                            height: 100.h,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ),
                                      error: (error, stack) {
                                        // Invalidate and refresh the provider automatically
                                        Future.delayed(Duration.zero, () {
                                          ref.invalidate(
                                              getMessageThreadProvider);
                                          ref.invalidate(
                                              getLastMessageProvider);
                                        });

                                        return InkWell(
                                          onTap: () => ref.invalidate(
                                              getMessageThreadProvider),
                                          child: Center(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.refresh,
                                                    color: Colors.black,
                                                    size: 30), // Refresh Icon
                                                SizedBox(height: 8), // Spacing
                                                const Text(
                                                  'Tap to refresh',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 20.h),
                            );
                          },
                          loading: () => Center(
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 40.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          error: (error, stack) {
                            // Auto refresh when an error occurs
                            Future.delayed(Duration.zero, () {
                              ref.invalidate(getMessageThreadProvider);
                            });

                            return InkWell(
                              onTap: () =>
                                  ref.invalidate(getMessageThreadProvider),
                              child: Center(
                                child: const Text(
                                  'Error loading messages. Tap to retry.',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            );
                          },
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
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 50.h,
                                        width: 280.w,
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              radius:
                                                  25, // Adjust size as needed
                                              backgroundColor:
                                                  const Color(0xffD9D9D9),
                                              backgroundImage: NetworkImage(
                                                alert.image ??
                                                    "https://smartbazaar.jianjun-rnd.com.np/uploads/gifts//default.png",
                                              ),
                                            ),
                                            SizedBox(width: 11.w),

                                            // Text Column
                                            Flexible(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    alert.title!.length > 30
                                                        ? alert.title!
                                                                .substring(
                                                                    0, 30) +
                                                            '...'
                                                        : alert.title!,
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      overflow: TextOverflow
                                                          .ellipsis, // Make sure overflow happens after applying the condition
                                                    ),
                                                    maxLines: 1,
                                                  ),
                                                  SizedBox(height: 4.h),
                                                  Text(
                                                    alert.body!.length > 30
                                                        ? alert.body!.substring(
                                                                0, 30) +
                                                            '...'
                                                        : alert.body!,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      color: const Color(
                                                              0xff000000)
                                                          .withOpacity(0.45),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    maxLines: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 5.w),
                                        height: 12.h,
                                        width: 12.w,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff781740),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 20.h),
                            );
                          },
                          loading: () => Center(
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: 40.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          error: (error, stack) =>
                              Center(child: Text('Please login and try again')),
                        );
                      },
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 40.h),
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
  final String postId;
  final String isImportant;
  final WidgetRef passref;

  const ListOfMessages({
    super.key,
    required this.threadId,
    required this.subject,
    required this.body,
    required this.postId,
    required this.isImportant,
    required this.passref,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          navigateToPage(
                      context: context,
                      page:ChatScreen(
              threadId: threadId,
              username: subject,
              postId: postId,
              consumerref: passref,
              //  isImportant: isImportant,
            ),
                      showNavBar: false,
                      ref: passref,
                    );
      },
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Profile Icon

            SizedBox(
              height: 50.h,
              width: 280.w,
              child: Row(
                children: [
                  Consumer(
                    builder: (context, ref, child) {
                      return ref.watch(getmessagePhotoProvider(postId)).when(
                            data: (data) {
                              return CircleAvatar(
                                radius: 25, // Adjust size as needed
                                backgroundColor: const Color(0xffD9D9D9),
                                backgroundImage: NetworkImage(
                                  data.vendor?.vendorImage ??
                                      "https://smartbazaar.jianjun-rnd.com.np/uploads/gifts//default.png",
                                ),
                                onBackgroundImageError: (_, __) {
                                  //  return print('kala ${_}');
                                },
                              );
                            },
                            loading: () => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                            error: (error, stack) => const CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                "https://smartbazaar.jianjun-rnd.com.np/uploads/gifts//default.png",
                              ),
                            ),
                          );
                    },
                  ),

                  SizedBox(width: 11.w),

                  // Text Column
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subject.length > 20
                              ? subject.substring(0, 20) + '...'
                              : subject,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow
                                .ellipsis, // Make sure overflow happens after applying the condition
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          body.length > 20
                              ? body.substring(0, 20) + '...'
                              : body,
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
                ],
              ),
            ),
            // const Spacer(),
            // Status Indicator
            Container(
              margin: EdgeInsets.only(right: 5.w),
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
