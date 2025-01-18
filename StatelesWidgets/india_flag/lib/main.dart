import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Indian-Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 7,
              height: 480,
              color: Colors.white,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 50,
                  color: Colors.orange,
                ),
                Container(
                  width: 250,
                  height: 50,
                  color: Colors.white,
                  child: Image.network(
                      "https://tse3.mm.bing.net/th?id=OIP.1b6dG3-qBVMmnBjtSothpwHaHu&pid=Api&P=0&h=180"),
                ),
                Container(
                  width: 250,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
