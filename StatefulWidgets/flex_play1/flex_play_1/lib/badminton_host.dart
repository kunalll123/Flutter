import 'package:flex_play/Badminton_Shutters_Court.dart';
import 'package:flex_play/Badminton_SportyGen.dart';
import 'package:flex_play/Badminton_UR_Academy.dart';
import 'package:flex_play/Badminton_United_Academy.dart';
import 'package:flex_play/Host_page.dart';
import 'package:flutter/material.dart';
import 'Cricket_CrossbarArena.dart';

class BadmintonHost extends StatefulWidget {
  const BadmintonHost({super.key});

  @override
  State createState() => _BadmintonHostState();
}

class _BadmintonHostState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // Height of the AppBar
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 40, 30, 57), // Dark Purple
                  Color.fromARGB(255, 190, 153, 206), // Soft Lavender
                  Color.fromARGB(255, 121, 88, 138), // Muted Purple
                ], // Your gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Color.fromARGB(255, 40, 30, 57),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const HostPage();
                }),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(0, 139, 148, 1.0),
            ),
          ),
          title: const Text(
            "Host",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: const Text(
                  "Pick A Venue",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 5, 2, 4),
                      Color.fromARGB(255, 85, 0, 95)
                    ], // Your gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  color: const Color.fromARGB(255, 40, 30, 57),
                  border: Border.all(
                    color: const Color.fromARGB(255, 40, 30, 57),
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 140),
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 254, 9, 173),
                              Color.fromARGB(255, 85, 0, 95)
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          color: const Color.fromARGB(255, 40, 30, 57),
                          border: Border.all(
                            color: const Color.fromARGB(255, 40, 30, 57),
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Looking for a specific date & time",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 75),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Filter venues by availability",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 40, 30, 57),
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "2v2",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 40, 30, 57),
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "1v1",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 40, 30, 57),
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "2v2",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 40, 30, 57),
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "2v2",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 40, 30, 57),
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "1v1",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const BadmintonShuttersCourt();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/badminton.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Shuttler Badminton Club",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "*4.2 ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200, left: 5),
                  child: Text(
                    "Pune • 2.5km • ₹250 /hr",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 189, 182, 182),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return const CricketCrossbar();
                            }),
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.sports_football_outlined,
                            color: Color.fromARGB(255, 189, 182, 182),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "2v2",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 189, 182, 182),
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
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const BadmintonSportygen();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/nahataSportCoutrt3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Sportygen Academy",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "*4.5 ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200, left: 5),
                  child: Text(
                    "Pune • 1.1km • ₹250 /hr",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 189, 182, 182),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: GestureDetector(
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.sports_football_outlined,
                            color: Color.fromARGB(255, 189, 182, 182),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "11v11",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 189, 182, 182),
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
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const BadmintonUnitedAcademy();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/Poona District Metropolitan Badminton Association2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "United Academy",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "*4.2 ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200, left: 5),
                  child: Text(
                    "Pune • 2.5km • ₹300 /hr",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 189, 182, 182),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: GestureDetector(
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.sports_football_outlined,
                            color: Color.fromARGB(255, 189, 182, 182),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "7v7",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 189, 182, 182),
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
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const BadmintonUrAcademy();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/SMASHinton Sports1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "UR Badminton Academy",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "*4.5 ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200, left: 5),
                  child: Text(
                    "Pune • 3.0km • ₹350 /hr",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 189, 182, 182),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: GestureDetector(
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.sports_football_outlined,
                            color: Color.fromARGB(255, 189, 182, 182),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 85, 83, 83),
                            border: Border.all(
                              color: const Color.fromARGB(255, 40, 30, 57),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "6v6",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 189, 182, 182),
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
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
