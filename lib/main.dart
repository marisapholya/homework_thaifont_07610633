import 'package:flutter/material.dart';
import 'package:homework_thaifont/pages/game/thai_font.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THAI FONT VIEWER',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ThaiFont(),
    );
  }
}
