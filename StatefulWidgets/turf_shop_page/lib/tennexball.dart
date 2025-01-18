import "package:flutter/material.dart";

class Tennexball extends StatefulWidget {
  const Tennexball({super.key});

  @override
  State createState() => _TennexballState();
}

class _TennexballState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.favorite,
              color: Color.fromRGBO(0, 139, 148, 1.0),
            ),
          )
        ],
      ),
    );
  }
}
