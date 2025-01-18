import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController nameController = TextEditingController();
  String? myName;
  final List<String> playerList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField ListView Demo",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                style: const TextStyle(fontSize: 30),
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {
                  print("Value : $value");
                },
                onEditingComplete: () {
                  print("Editing Completed");
                },
                onSubmitted: (value) {
                  print("Value Submitted : $value");
                },
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  myName = nameController.text.trim();
                  if (myName!.isNotEmpty) {
                    playerList.add(myName!);
                    nameController.clear();
                  }
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Add Data",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ListView.builder(
              itemCount: playerList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Text(
                  "Name : ${playerList[index]}",
                  style: const TextStyle(fontSize: 25),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
