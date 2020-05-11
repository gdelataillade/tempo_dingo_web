import 'package:flutter/material.dart';
import 'package:tempo_dingo_web/src/config/theme.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("How to play?", style: title),
        Text("Tap the screen at the same time that the music tempo"),
      ],
    );
  }
}
