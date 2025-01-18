import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldApp(),
    );
  }
}

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({super.key});

  @override
  State createState() => _TextFieldApp();
}

class _TextFieldApp extends State<TextFieldApp> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Info",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 30,
              ),
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Type..",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
