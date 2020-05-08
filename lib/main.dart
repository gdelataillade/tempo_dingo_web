import 'package:flutter/material.dart';
import 'package:tempo_dingo_web/src/config/theme.dart';
import 'package:tempo_dingo_web/src/tabs/about.dart';
import 'package:tempo_dingo_web/src/tabs/download.dart';
import 'package:tempo_dingo_web/src/tabs/home.dart';
import 'package:tempo_dingo_web/src/tabs/stats.dart';

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

class _HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => __HomePageState();
}

class __HomePageState extends State<_HomePage> {
  List<Widget> _tabs = [
    Home(),
    Download(),
    Stats(),
    About(),
  ];
  int _tabIndex = 0;

  void _changeTab(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: mainTheme,
        title: GestureDetector(
          onTap: () => _changeTab(0),
          child: Text(
            "Tempo Dingo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => _changeTab(0),
                child: _HomeTab("Home", _tabIndex == 0),
              ),
              GestureDetector(
                onTap: () => _changeTab(1),
                child: _HomeTab("Download", _tabIndex == 1),
              ),
              GestureDetector(
                onTap: () => _changeTab(2),
                child: _HomeTab("Stats", _tabIndex == 2),
              ),
              GestureDetector(
                onTap: () => _changeTab(3),
                child: _HomeTab("About", _tabIndex == 3),
              ),
              const SizedBox(
                width: 100,
              ),
            ],
          ),
        ],
      ),
      body: _tabs[_tabIndex],
    );
  }
}

class _HomeTab extends StatelessWidget {
  final String title;
  final bool isSelected;

  const _HomeTab(this.title, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          decoration:
              isSelected ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }
}
