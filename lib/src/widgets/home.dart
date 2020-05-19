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
      body: MediaQuery.of(context).size.width < 500
          ? _DeviceView()
          : SingleChildScrollView(
              child: Scrollbar(
                child: Column(
                  children: <Widget>[
                    _Languages(),
                    const SizedBox(height: 30),
                    Text(
                      "Tempo Dingo",
                      style: title,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Test your rhythm skills with your favorite Spotify songs.",
                      style: headline,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    const SizedBox(height: 40),
                    _Screenshots(),
                    const SizedBox(height: 60),
                    Text("Coming soon...", style: footer),
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

class _DeviceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: <Widget>[
          Text(
            "Tempo Dingo",
            style: title,
          ),
          const SizedBox(height: 30),
          _StoreBadges(),
        ],
      ),
    );
  }
}

class _Languages extends StatefulWidget {
  @override
  __LanguagesState createState() => __LanguagesState();
}

class __LanguagesState extends State<_Languages> {
  String _language = 'en';

  Widget _buildFlag(String path, String language) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: GestureDetector(
        onTap: () {
          if (_language != language) setState(() => _language = language);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: _language == language ? Colors.white : Colors.transparent,
              width: 1.5,
            ),
          ),
          child: Image.asset(path, height: 25),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _buildFlag('assets/united-states.png', 'en'),
          _buildFlag('assets/france.png', 'fr'),
          _buildFlag('assets/spain.png', 'es'),
        ],
      ),
    );
  }
}

class _Screenshots extends StatelessWidget {
  final Widget _search = Column(
    children: <Widget>[
      Image.asset('assets/td_search.png', height: 800),
      const SizedBox(height: 20),
      Text("Search", style: title2),
      const SizedBox(height: 8),
      Text("Access to over 50 million songs", style: headline),
      Text("with Spotify API.", style: headline),
    ],
  );
  final Widget _home = Column(
    children: <Widget>[
      Image.asset('assets/td_home.png', height: 800),
      const SizedBox(height: 20),
      Text("Home", style: title2),
      const SizedBox(height: 8),
      Text("Quick access to your favorite", style: headline),
      Text("and recently played songs.", style: headline),
    ],
  );
  final Widget _settings = Column(
    children: <Widget>[
      Image.asset('assets/td_settings.png', height: 800),
      const SizedBox(height: 20),
      Text("Settings", style: title2),
      const SizedBox(height: 8),
      Text("Customize you experience", style: headline),
      Text("with multilanguage and more.", style: headline),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        MediaQuery.of(context).size.width > 823 ? _search : Container(),
        _home,
        MediaQuery.of(context).size.width > 1310 ? _settings : Container(),
      ],
    );
  }
}

class _StoreBadges extends StatelessWidget {
  final Widget _appStoreBadge =
      Image.asset('assets/app-store-badge.png', height: 100);
  final Widget _googlePlayBadge =
      Image.asset('assets/google-play-badge.png', height: 88);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 650
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _appStoreBadge,
              _googlePlayBadge,
            ],
          )
        : Column(
            children: <Widget>[
              _appStoreBadge,
              const SizedBox(height: 10),
              _googlePlayBadge,
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
