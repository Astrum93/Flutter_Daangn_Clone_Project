import 'package:daangn_ui/common/dart/extension/context_extension.dart';
import 'package:daangn_ui/common/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeUtil {
  static Brightness get systemBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;

  static void changeTheme(BuildContext context, CustomTheme theme) {
    Prefs.appTheme.set(theme); // 또는 Prefs.appTheme(theme) 이렇게 저장도 가능
    context.changeTheme(theme);
  }
}
