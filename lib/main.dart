import 'package:chat_bot/Utils/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat Bot",
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const Home(),
    );
  }
}
