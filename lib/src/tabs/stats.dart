import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  Future<int> _getGamesNb() async {
    final QuerySnapshot snapshot =
        await Firestore.instance.collection("stats").getDocuments();
    return snapshot.documents.first["nbGames"];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future: _getGamesNb(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Text("...");
          default:
            if (snapshot.hasError) return Text("error");
            return Center(
              child: Text(
                "Games played: ${snapshot.data}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            );
        }
      },
    );
  }
}
