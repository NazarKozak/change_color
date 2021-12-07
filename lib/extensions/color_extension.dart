import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color get textLuminanceColor => computeLuminance() > 0.5 ? Colors.black : Colors.white;
}