import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationManager {
  final _notificationsPlugin = FlutterLocalNotificationsPlugin();

  NotificationManager() {
    initiliazeSettings();
    tz.initializeTimeZones();
  }

  void initiliazeSettings() async {
    final initializeAndroid = AndroidInitializationSettings('ic_launcher');
    final initializationSettingsIOS = IOSInitializationSettings(
        //   onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
        );
    final initilializeSetting = InitializationSettings(
      android: initializeAndroid,
      iOS: initializationSettingsIOS,
    );
    await _notificationsPlugin.initialize(initilializeSetting);
  }

  Future<void> displayNotification(
    // int id,
    String title,
    String body,
  ) async {
    _notificationsPlugin.show(
      0,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          '1',
          'Water Reminder',
          'This handles the notifications for the water reminders throughout the day.',
        ),
        iOS: IOSNotificationDetails(),
      ),
    );
  }

  Future<void> scheduleNotification(
    // int id,
    String title,
    String body,
    DateTime dateTime,
  ) async {
    await _notificationsPlugin.zonedSchedule(
      0,
      title,
      body,
      tz.TZDateTime.from(dateTime, tz.local),
      NotificationDetails(
        android: AndroidNotificationDetails(
          '1',
          'Water Reminder',
          'This handles the notifications for the water reminders throughout the day.',
        ),
      ),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  //   onDidReceiveLocalNotification(
  //   int id,
  //   String? title,
  //   String? body,
  //   String? payload,
  // ) async {
  //   // display a dialog with the notification details, tap ok to go to another page
  //   Get.defaultDialog(
  //     title: title ?? "This is a title",
  //     content: Text(body ?? "ad"),
  //   );
  // }
}
