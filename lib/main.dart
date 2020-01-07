import 'package:balaji_temple_ahmedabad/views/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balaji Temple, Ahmedabad',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
