import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({Key? key, required this.child, required this.gradientColors}) : super(key: key);

  final List<Color> gradientColors;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: List<double>.generate(gradientColors.length, (i) => i * (1/gradientColors.length)),
            colors: gradientColors,
          )
      ),
      child: child
    );
  }

}