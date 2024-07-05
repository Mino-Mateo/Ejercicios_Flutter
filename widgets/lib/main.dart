import 'package:flutter/material.dart';
import 'package:new_app/view/firstPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Firstpage()),
    );
  }
}
