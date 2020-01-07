import 'package:flutter/material.dart';

class EsevaPage extends StatefulWidget {
  @override
  _EsevaPageState createState() => _EsevaPageState();
}

class _EsevaPageState extends State<EsevaPage> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Center(
          child: Text('E-Seva Page'),
        )
      ]),
    );
  }
}
