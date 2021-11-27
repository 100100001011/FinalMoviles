import 'package:flutter/material.dart';
import 'UI/Widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ANIME',
        theme: ThemeData(
          primaryColor: Colors.red
        ),
        home: Navbar());
  }
}
