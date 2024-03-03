import 'package:daangn_ui/common/common.dart';
import 'package:daangn_ui/common/theme/custom_theme.dart';
import 'package:daangn_ui/common/theme/custom_theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeUtil {
  static Brightness get systemBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;

  static void changeTheme(BuildContext context, CustomTheme theme) {
    CustomThemeApp.saveThemeFunction(theme);
    context.changeTheme(theme);
  }
}
