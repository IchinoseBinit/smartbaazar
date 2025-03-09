// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class FCMService {
//   static final FirebaseMessaging _firebaseMessaging =
//       FirebaseMessaging.instance;
//   static final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> initializeFCM() async {
//     // Request permission for iOS
//     NotificationSettings settings = await _firebaseMessaging.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     if (settings.authorizationStatus == AuthorizationStatus.denied) {
//       debugPrint("FCM Permission Denied!");
//       return;
//     }

//     // Get FCM Token
//     String? token = await _firebaseMessaging.getToken();
//     debugPrint("FCM Token: $token");

//     // Configure Foreground Notification
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       debugPrint("FCM Foreground Message: ${message.notification?.title}");

//       if (message.notification != null) {
//         _showNotification(
//           title: message.notification!.title ?? "New Notification",
//           body: message.notification!.body ?? "No content",
//         );
//       }
//     });

//     // Configure Background & Terminated State
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       debugPrint("FCM Opened App: ${message.notification?.title}");
//     });

//     // Initialize Local Notifications
//     await _initializeLocalNotifications();
//   }

//   static Future<void> _initializeLocalNotifications() async {
//     const AndroidInitializationSettings androidSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     final InitializationSettings settings =
//         InitializationSettings(android: androidSettings);

//     await _localNotificationsPlugin.initialize(settings);
//   }

//   static Future<void> _showNotification({
//     required String title,
//     required String body,
//   }) async {
//     const AndroidNotificationDetails androidDetails =
//         AndroidNotificationDetails(
//       'high_importance_channel',
//       'High Importance Notifications',
//       importance: Importance.max,
//       priority: Priority.high,
//       showWhen: false,
//     );

//     const NotificationDetails notificationDetails =
//         NotificationDetails(android: androidDetails);

//     await _localNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       notificationDetails,
//     );
//   }
// }
