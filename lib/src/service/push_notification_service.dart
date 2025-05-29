import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/model/push_message.dart';
import 'package:safe_guard/theme/component/sound.dart';
import 'package:safe_guard/util/shared_prefs.dart';

part 'push_notification_service.g.dart';

@riverpod
class PushNotificationService extends _$PushNotificationService {
  @override
  PushMessage build() {
    return const PushMessage();
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  late AndroidNotificationChannel channel;

  late String soundName;

  /// 안드로이드 알림 채널 초기화
  void initializeAndroidNotificationChannel() async {
    Sound selectedSound = await SharedPrefs.loadSoundData('sound');
    channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'Default Channel',
      importance: Importance.high,
      playSound: true,
      sound: selectedSound == Sound.basic
          ? RawResourceAndroidNotificationSound(soundName = 'basic')
          : selectedSound == Sound.sound1
              ? RawResourceAndroidNotificationSound(soundName = 'siren')
              : RawResourceAndroidNotificationSound(soundName = 'siren2'),
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  /// push 메시지 초기화
  void initLocalNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  /// push 메시지 처리
  void setupFMC() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received message: ${message.notification?.title}');
      showLocalNotification(message);
      state = state.copyWith(title: message.notification?.title);
      state = state.copyWith(body: message.notification?.body);
      state = state.copyWith(isWarning: true);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Open app from notification: ${message.notification?.title}');
    });
  }

  /// push 메시지 표시
  void showLocalNotification(RemoteMessage message) async {
    AndroidNotificationDetails androidChannelSpecifics = AndroidNotificationDetails(
      channel.id,
      channel.name,
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      sound: channel.sound,
    );
    const DarwinNotificationDetails iosChannelSpecifics = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidChannelSpecifics,
      iOS: iosChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      message.notification?.title,
      message.notification?.body,
      platformChannelSpecifics,
    );
  }

  /// push 데이터 처리
  void handleDataMessage(Map<String, dynamic> data) {
    state = state.copyWith(data: data);
  }

  /// 알람 해제
  void alarmClear() {
    /// 서버 전송 코드 작성
    state = state.copyWith(nullTitle: true);
    state = state.copyWith(nullBody: true);
    state = state.copyWith(isWarning: false);
  }
}
