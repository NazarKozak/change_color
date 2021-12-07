import 'package:flutter/material.dart';

import 'package:change_color/components/components.dart';
import 'package:change_color/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Color> _gradientColors = [];
  Color _backgroundColor = Colors.white;

  bool isGradient = true;
  int colorsCount = 4;

  @override
  void initState() {
    super.initState();

    changeColor();
  }

  void changeColor() {
    if (isGradient) {
      _gradientColors = ColorUtils.randomHexColors(colorsCount);
    } else {
      _backgroundColor = ColorUtils.randomHexColor;
    }

    setState(() { });
  }

  Color get backgroundColor => isGradient ? _gradientColors.first : _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: changeColor,
      child: Scaffold(
        appBar: appBar(context),
        body: body
      ),
    );
  }

  Widget get body => isGradient ? GradientBackground(gradientColors: _gradientColors, child: buildContent)
      : SolidBackground(backgroundColor: _backgroundColor, child: buildContent);

  Widget get buildContent => Center(child: LuminanceText(text: 'Hey there', backgroundColor: backgroundColor));

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => EditDialog(
                isGradient: isGradient,
                onChange: (value) {
                  setState(() {
                    isGradient = value;
                  });
                }
              ),
            );
          },
          icon: const Icon(Icons.edit))
      ],
    );
  }

}