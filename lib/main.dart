import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "bottomNavigationBar",
      home: BottomNavigationBarDemo(),
    );
  }
}