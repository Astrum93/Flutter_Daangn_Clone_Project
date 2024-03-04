import 'package:daangn_ui/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeUtil {
  static Brightness get systemBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;
}
