import "package:flutter/material.dart";
import 'package:svg_flutter/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoApp();
}

class _TodoApp extends State<TodoApp> {
  // List of background colors for each item
  final List<Color> backgroundColors = [
    Colors.redAccent.withOpacity(0.2),
    Colors.blueAccent.withOpacity(0.2),
    Colors.greenAccent.withOpacity(0.2),
    Colors.orangeAccent.withOpacity(0.2),
    Colors.purpleAccent.withOpacity(0.2),
    Colors.yellowAccent.withOpacity(0.2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To-do list",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 16, 125, 127),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: backgroundColors[
                index % backgroundColors.length], // Set the background color
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius:
                              BorderRadius.circular(50.0), // Make it circular
                        ),
                        child: SvgPicture.asset("assets/svg/images/img1.svg"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem ipsum is simply setting industry.",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "10 July 2023",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      color: Colors.black,
                      onPressed: () {
                        // Handle edit action
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      color: Colors.black,
                      onPressed: () {
                        // Handle delete action
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
