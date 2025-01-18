import 'package:flutter/material.dart';

class AnimatedScaffold extends StatefulWidget {
  const AnimatedScaffold({super.key});

  @override
  _AnimatedScaffoldState createState() => _AnimatedScaffoldState();
}

class _AnimatedScaffoldState extends State<AnimatedScaffold>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: const Color.fromARGB(255, 0, 0, 0),
      end: const Color.fromARGB(255, 248, 248, 248),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _colorAnimation.value!,
                  const Color.fromARGB(255, 0, 0, 0),
                ],
              ),
            ),
            child: Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "assets/all assets/logo2-removebg-preview.png",
                color: Colors.purple,
                fit: BoxFit.cover,
              ),
            )),
          ),
        );
      },
    );
  }
}
