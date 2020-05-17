import 'package:flutter/material.dart';
import 'package:tempo_dingo_web/src/config/theme.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("How to play?", style: title),
            const SizedBox(height: 10),
            Text("Tap the screen at the same time as the music tempo",
                style: headline),
          ],
        ),
        Column(
          children: <Widget>[
            Text("Try it out!", style: title),
            const SizedBox(height: 30),
            Stack(
              children: <Widget>[
                Image.asset('assets/td_game.png', height: 600),
                Positioned(
                  top: 357,
                  left: 27,
                  child: MaterialButton(
                    onPressed: () {},
                    height: 212,
                    minWidth: 249,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Tap here",
                      style: TextStyle(
                        fontFamily: 'Apple',
                        fontSize: 16,
                        color: Color.fromRGBO(77, 83, 105, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
