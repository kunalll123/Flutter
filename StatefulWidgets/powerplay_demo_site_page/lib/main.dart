import "package:flutter/material.dart";
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoSite(),
    );
  }
}

class DemoSite extends StatefulWidget {
  const DemoSite({super.key});

  @override
  State createState() => _DemoSite();
}

class _DemoSite extends State {
  int _currentIndex = 0; // Initial index
  String _selectedDate = 'No Date Selected'; // To store selected date

  void _onItemTapped(int index) {
    if (index == 2) {
      // If Attendance button is tapped
      _showCalendar();
    } else {
      setState(() {
        _currentIndex = index; // Update the current index
      });
    }
  }

  void _showCalendar() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = DateFormat('yyyy-MM-dd')
            .format(pickedDate); // Format and save the selected date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 2, 85, 238),
          iconSize: 30.0,
          onPressed: () {
            // Handle notification action
          },
        ),
        title: const Text(
          "Demo Site",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Landscaping"),
                      ),
                      const Text(
                        "1. Excavation For Landscape",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "15%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Cleaning and final control"),
                      ),
                      const Text(
                        "2.Final deep Cleaning",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "10%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Painting"),
                      ),
                      const Text(
                        "3.5th floor corridor painting",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "33%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Tiling and Flooring"),
                      ),
                      const Text(
                        "4.c block ground-floor flooring pcc",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "20%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Design"),
                      ),
                      const Text(
                        "5.Temple design for 1st floor in kitchen",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "100%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Celling"),
                      ),
                      const Text(
                        "3rd floor celling Hacking work",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "92%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Windows,frames and door installation"),
                      ),
                      const Text(
                        "7.Window sill and pelmet",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "45%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Budgeting"),
                      ),
                      const Text(
                        "8.Budgeting",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "100%",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Electrical"),
                      ),
                      const Text(
                        "9.Slab Electrical Work(Piping & Conducting)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "70%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Column and Curtain Wall"),
                      ),
                      const Text(
                        "10.Column RCC work above 8th slab",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "100%",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Snags"),
                      ),
                      const Text(
                        "11.Staircase Windows side plaster not having finishing",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "0%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Container tapped");
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Roof Installation"),
                      ),
                      const Text(
                        "12. Roof Steel Binding And Concrete",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40.0,
                              bottom: 40,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("15% container tapped");
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, top: 5.0),
                                  child: Text(
                                    "85%",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 30.0, bottom: 30),
                            child: GestureDetector(
                              onTap: () {
                                print("Update container tapped");
                              },
                              child: Container(
                                height: 45,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
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
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to be performed
        },
        backgroundColor: const Color.fromARGB(255, 67, 84, 161),
        tooltip: 'Add Item',
        elevation: 6.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.report_outlined),
            label: 'Report',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_rounded),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.co_present_sharp),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fire_truck),
            label: 'Material',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.connect_without_contact_outlined),
            label: 'Team',
          ),
        ],
        currentIndex: _currentIndex, // Set the current index as needed
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
