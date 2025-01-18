import "package:flutter/material.dart";

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State createState() => _MyApp();
}

class _MyApp extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Counter App"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Text(
              "$count",
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              count++;
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
        ));
  }
}
