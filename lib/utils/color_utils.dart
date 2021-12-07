import 'dart:math';

import 'package:flutter/material.dart';

class ColorUtils {

  static Color get randomHexColor => Color(Random().nextInt(0xffffffff));

  static List<Color> randomHexColors(int count) {
    return List<Color>.generate(count, (_) => randomHexColor);
  }

}