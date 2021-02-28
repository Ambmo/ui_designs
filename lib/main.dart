import 'package:flutter/material.dart';
import 'package:ui_designs/Screen2.dart';
import 'welcome_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everything Your Pet Needs',
      theme: ThemeData(
        primaryColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/second': (context) => Screen2(),
      },
    );
  }
}
