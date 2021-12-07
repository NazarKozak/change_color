import 'package:flutter/material.dart';

import 'package:change_color/extensions/extensions.dart';

class LuminanceText extends StatelessWidget {
  const LuminanceText({Key? key, required this.text, required this.backgroundColor}) : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 40,
        color: backgroundColor.textLuminanceColor,
      ),
    );
  }

}