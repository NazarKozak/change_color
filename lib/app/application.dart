import 'package:flutter/material.dart';

import 'package:change_color/screens/home_screen.dart';

class ChangeColorApp extends StatelessWidget {
  const ChangeColorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Color',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(title: 'Change Color'),
    );
  }
}