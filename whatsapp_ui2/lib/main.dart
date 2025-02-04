import 'package:flutter/material.dart';
import 'package:whatsapp_ui2/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp Demo Page",
      home: MyHomePage(),
    );
  }
}
