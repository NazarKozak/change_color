import 'dart:math';

import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color get randomHexColor => Color(Random().nextInt(0xffffffff));

  Color get textLuminanceColor => computeLuminance() > 0.5 ? Colors.black : Colors.white;

  Color get textBrightnessColor => ThemeData.estimateBrightnessForColor(this) == Brightness.light ? Colors.black : Colors.white;
}