import 'package:flutter/material.dart';

class SolidBackground extends StatelessWidget {
  const SolidBackground({Key? key, required this.backgroundColor, required this.child}) : super(key: key);

  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Stack(
        fit: StackFit.passthrough,
        alignment: AlignmentDirectional.center,
        children: [
          child
        ],
      )
    );
  }

}