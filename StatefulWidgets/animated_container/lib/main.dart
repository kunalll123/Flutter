import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedContainerApp(),
    );
  }
}

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  @override
  State createState() => _AnimatedContainerApp();
}

class _AnimatedContainerApp extends State {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;

  // void _expandBox() {
  //   setState(() {
  //     boxHeight = 300;
  //     boxWidth = 300;
  //   });
  // }

  void _changeColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 119, 247),
        appBar: AppBar(
          title: const Text(
            "Animated Container",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: 300,
            width: 300,
            color: boxColor,
          ),
        ),
      ),
    );
  }
}
