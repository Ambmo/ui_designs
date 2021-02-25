import 'package:flutter/material.dart';
import 'myapp.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everything Your Pet Needs',
      theme: ThemeData.light(),
      home: MyApp(),
    );
  }
}
