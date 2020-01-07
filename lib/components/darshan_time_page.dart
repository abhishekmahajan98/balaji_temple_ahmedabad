import 'package:flutter/material.dart';

class DarshanTimePage extends StatefulWidget {
  @override
  _DarshanTimePageState createState() => _DarshanTimePageState();
}

class _DarshanTimePageState extends State<DarshanTimePage> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Center(
          child: Text('Darshan Time'),
        )
      ]),
    );
  }
}
