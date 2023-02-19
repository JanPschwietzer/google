import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(GoogleApp());
}

class GoogleApp extends StatefulWidget {
  const GoogleApp({Key? key}) : super(key: key);

  @override
  State<GoogleApp> createState() => _GoogleAppState();
}

class _GoogleAppState extends State<GoogleApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Google",
        home: Scaffold(
          appBar: null,
          body: MainScreen(),
        ));
  }
}
