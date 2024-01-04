import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'pages/dashboard.dart';
import "pages/addDish.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LandingPage(),
    );
  }
}
