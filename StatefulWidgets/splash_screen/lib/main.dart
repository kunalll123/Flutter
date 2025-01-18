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
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        body: Center(
          child: Image.asset(
            'assets/logo_1.png',
            height: 800,
            width: 800,
          ),
        ),
      ),
    );
  }
}
