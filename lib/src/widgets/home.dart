import 'package:flutter/material.dart';
import 'package:tempo_dingo_web/src/config/theme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme,
      body: SingleChildScrollView(
        child: Scrollbar(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Text(
                "Tempo Dingo",
                style: title,
              ),
              const SizedBox(height: 10),
              Text(
                "Test your sense of rhythm with your favorite songs",
                style: headline,
              ),
              Text(
                "in Spotify library.",
                style: headline,
              ),
              const SizedBox(height: 40),
              _Screenshots(),
              const SizedBox(height: 60),
              _StoreBadges(),
              const SizedBox(height: 60),
              _Footer(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class _Screenshots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset('assets/td_search.png', height: 800),
            const SizedBox(height: 20),
            Text("Search", style: title2),
            const SizedBox(height: 8),
            Text("Access to over 50 million songs", style: headline),
            Text("with Spotify API.", style: headline),
          ],
        ),
        Column(
          children: <Widget>[
            Image.asset('assets/td_home.png', height: 800),
            const SizedBox(height: 20),
            Text("Home", style: title2),
            const SizedBox(height: 8),
            Text("Quick access to your favorite", style: headline),
            Text("and recently played songs.", style: headline),
          ],
        ),
        Column(
          children: <Widget>[
            Image.asset('assets/td_settings.png', height: 800),
            const SizedBox(height: 20),
            Text("Settings", style: title2),
            const SizedBox(height: 8),
            Text("Customize you experience", style: headline),
            Text("with multilanguage and more.", style: headline),
          ],
        ),
      ],
    );
  }
}

class _StoreBadges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/app-store-badge.png', height: 100),
        Image.asset('assets/google-play-badge.png', height: 88),
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Made with ", style: footer),
            Icon(Icons.favorite_border, color: Colors.red),
            Text(" by Gautier de Lataillade", style: footer),
          ],
        ),
      ],
    );
  }
}
