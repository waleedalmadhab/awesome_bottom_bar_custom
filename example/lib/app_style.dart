


import 'dart:ui';

import 'app_colors.dart';

class AppStyles {
  AppStyles._();








  static TextStyle primaryStyle({
    bool bold = false,
    bool light = false,
    TextDecoration textDecoration=TextDecoration.none,
    Color lineThroughColor=AppColors.white,

    double? fontSize,
    double? height,
    Color? color,
    List<Shadow>? shadows,
  }) {
    return TextStyle(
      height: height ?? 1.0,
      fontSize:fontSize  ,
      wordSpacing: 0,
      color: color ?? (light ? AppColors.white : null),
      fontWeight: bold ? FontWeight.bold : null,
      shadows: shadows,
      decoration:textDecoration,
      decorationThickness: 2,
      decorationColor: lineThroughColor,

    );
  }








}
