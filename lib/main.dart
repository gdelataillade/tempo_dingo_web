import 'package:flutter/material.dart';
import 'package:tempo_dingo_web/src/config/theme.dart';
import 'package:tempo_dingo_web/src/tabs/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo Dingo',
      color: mainTheme,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
