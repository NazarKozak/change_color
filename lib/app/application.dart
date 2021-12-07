import 'package:flutter/material.dart';

import 'package:change_color/screens/screens.dart';
import 'package:change_color/config/config.dart';

class ChangeColorApp extends StatelessWidget {
  const ChangeColorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(title: Constants.appName),
    );
  }
}