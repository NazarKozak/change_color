import 'dart:math';

import 'package:flutter/material.dart';

extension ColorHelpers on Color {
  Color get randomARGBColor {
    final Random random = Random();
    return Color.fromARGB(opacity.toInt(), random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

  Color get randomHexColor => Color(Random().nextInt(0xffffffff));

  Color get textLuminanceColor => computeLuminance() > 0.5 ? Colors.black : Colors.white;
}