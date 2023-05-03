import 'dart:math';
import 'package:flutter/material.dart';

class Portfolio {
  static const Color leftColor = Color(0xffC5186F);
  static const Color rightColor = Color(0xffE35913);
  static const Color grey3Icons = Color(0xFFB3B5B8);
  static const Color grey4 = Color(0xFF7D7D87);
  static const Color grey1 = Color(0xFFFBFAF8);
  static const Color gradientPink = Color(0xffD33743);
  static const List<Color> gradientColors = [leftColor, rightColor];
  static const LinearGradient gradient =
      LinearGradient(colors: [leftColor, rightColor], transform: GradientRotation(-pi / 4));
  static const LinearGradient greyGradient =
      LinearGradient(colors: [grey3Icons, grey3Icons], transform: GradientRotation(-pi / 4));
  static const LinearGradient horizontalGradient =
      LinearGradient(colors: [leftColor, rightColor], transform: GradientRotation(-pi));
}
