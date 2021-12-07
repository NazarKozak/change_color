
import 'package:flutter/material.dart';

import 'package:change_color/extensions/extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Color backgroundColor = Colors.white;

  void changeColor() {
    setState(() {
      backgroundColor = backgroundColor.randomHexColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => changeColor(),
      child: Scaffold(
        appBar: appBar(context),
        backgroundColor: backgroundColor,
        body: Stack(
          fit: StackFit.passthrough,
          alignment: AlignmentDirectional.center,
          children: [
            Center(
              child: Text(
                'Hey there',
                style: TextStyle(
                  fontSize: 40,
                  color: backgroundColor.textLuminanceColor,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
    );
  }
}