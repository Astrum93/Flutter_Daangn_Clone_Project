import 'package:fast_app_base/common/common.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

import '../../app.dart';

class FcmManager {
  static void requestPermission() {
    FirebaseMessaging.instance.requestPermission();
  }

  static void initialize() async {
    /// Foreground
    FirebaseMessaging.onMessage.listen((message) {
      final title = message.notification?.title;
      if (title == null) {
        return;
      }
      App.navigatorKey.currentContext?.showSnackbar(title);
      debugPrint(message.toString());
    });

    ///
    /// Background
    ///
    /// Not running -> initial launch

    final token = await FirebaseMessaging.instance.getToken();
    debugPrint(token);
  }
}
