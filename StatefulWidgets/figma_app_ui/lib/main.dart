import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FigmaApp(),
    );
  }
}

class FigmaApp extends StatefulWidget {
  const FigmaApp({super.key});

  @override
  State createState() => _FigmaApp();
}

class _FigmaApp extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            // Handle edit action
          },
        ),
        title: const Text(
          "Where do you want to travel?",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 13, 0, 78),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 20),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 223, 223),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          "select Destination",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        color: Colors.black,
                        onPressed: () {
                          // Handle edit action
                        },
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.search_rounded),
                color: Colors.black,
                onPressed: () {
                  // Handle edit action
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Best Deals",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sorted by lower price",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                color: Colors.black,
                onPressed: () {
                  // Handle edit action
                },
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 223, 223),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40, top: 30),
                              child: Text(
                                "EL Cairo",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 20, top: 30),
                              child: Text(
                                "4.6",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 130),
                          child: Text(
                            "Egypt",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50, top: 70),
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 240, 223, 223),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    "More",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 1, 12, 171),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50, top: 70),
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 26, 2, 212),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    "\$260",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 223, 223),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40, top: 30),
                              child: Text(
                                "EL Cairo",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 20, top: 30),
                              child: Text(
                                "4.6",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 130),
                          child: Text(
                            "Egypt",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50, top: 70),
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 240, 223, 223),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    "More",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 1, 12, 171),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50, top: 70),
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 26, 2, 212),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    "\$260",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Popular Destinations",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sorted by lower price",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                color: Colors.black,
                onPressed: () {
                  // Handle edit action
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
