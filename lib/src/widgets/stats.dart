import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('stats').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Text("No data");
        return Center(
          child: Text(
            "Games played: ${snapshot.data.documents.first["nbGames"]}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        );
      },
    );
  }
}
