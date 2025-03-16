import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:smartbazar/constant/api_constant.dart';
import 'package:smartbazar/features/fcm/local_notifications_service.dart';
import 'package:smartbazar/network_service/smart-client.dart';
import 'package:smartbazar/utils/request_type.dart';

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  /// Initialize FCM service with proper error handling and configuration
  static Future<void> init() async {
    try {
      // Request permissions with specific options
      NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        announcement: false,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
      );

      log('Notification permission status: ${settings.authorizationStatus}');

      // Configure foreground presentation options
      await messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      // Get token and send to server
      String? token = await messaging.getToken();
      if (token != null) {
        await sendTokenToServer(token);
      }

      // Handle token refresh
      messaging.onTokenRefresh.listen(sendTokenToServer);

      // Set up background message handler
      FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);

      // Handle foreground messages
      handleForegroundMessage();

      // Subscribe to topic
      await messaging.subscribeToTopic('all');
      log('Successfully subscribed to topic: all');
    } catch (e) {
      log('Error initializing FCM: $e');
      rethrow;
    }
  }

  static Future<void> _handleBackgroundMessage(RemoteMessage message) async {
    try {
      await Firebase.initializeApp();
      log('Background message received: ${message.messageId}');
      log('Notification title: ${message.notification?.title}');

      // Handle background message logic here
      LocalNotificationService.showBasicNotification(message);
    } catch (e) {
      log('Error handling background message: $e');
      rethrow;
    }
  }

  static void handleForegroundMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      try {
        log('Foreground message received: ${message.messageId}');
        LocalNotificationService.showBasicNotification(message);
      } catch (e) {
        log('Error handling foreground message: $e');
      }
    });
  }

  static Future<void> sendTokenToServer(String token) async {
    print(">>>>>>>>>>>>>>>>>FCM token: " + token);
    try {
      final SmartClient clinet = SmartClient();
      final response = await clinet.request(
        requestType: RequestType.post,
        url: ApiConstants.storeDeviceTokenUrl,
        parameter: {'device_token': token},
      );

      if (response.statusCode == 200) {
        log('FCM Token successfully sent to server');
      } else {
        throw Exception(
            'Failed to send token to server: ${response.statusMessage}');
      }
    } catch (e) {
      log('Error sending token to server: $e');
      rethrow;
    }
  }
}
