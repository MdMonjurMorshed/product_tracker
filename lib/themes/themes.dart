import 'package:flutter/material.dart';
import 'package:product_tracking/themes/app_color.dart';

import 'app_text.dart';
import 'icon_theme.dart';

@immutable
class AppTheme {
  static final text = AppText();
  static final color = AppColor();
  static final iconTheme = IconsTheme();

  AppTheme._();
  static ThemeData define() {
    return ThemeData(
        primaryColor: Color(0Xff428745), focusColor: Colors.transparent);
  }
}
