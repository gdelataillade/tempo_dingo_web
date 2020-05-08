import 'package:flutter/material.dart';
import 'package:tempo_dingo_web/src/config/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo Dingo',
      color: mainTheme,
      debugShowCheckedModeBanner: false,
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: mainTheme,
        title: Text(
          "Tempo Dingo",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              _HomeTab("Home"),
              _HomeTab("Download"),
              _HomeTab("Stats"),
              _HomeTab("About"),
              const SizedBox(
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HomeTab extends StatelessWidget {
  final String title;

  const _HomeTab(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
