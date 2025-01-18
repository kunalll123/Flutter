import 'package:flutter/material.dart';
import 'package:turftown_homepage/Cricket_CrossbarArena.dart';
import 'package:turftown_homepage/cricket_derbySport.dart';
import 'package:turftown_homepage/cricket_kodreturf.dart';
import 'package:turftown_homepage/cricket_kshetramSport.dart';
import 'package:turftown_homepage/cricket_offSideTurf.dart';
import 'package:turftown_homepage/host_page.dart';

class CricketHost extends StatefulWidget {
  const CricketHost({super.key});

  @override
  State createState() => _CricketState();
}

class _CricketState extends State {
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
                  Color.fromARGB(255, 247, 233, 233),
                  Color.fromARGB(255, 0, 0, 0)
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
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                height: 170,
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
                      child: Text(
                        "Filter venues by availability",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
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
                            "5v5",
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
                            "6v6",
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
                            "7v7",
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
                            "9v9",
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
                            "11v11",
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
                          return const CricketDerbybox();
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
                        'assets/all assets/DerbySportTurf.jpg',
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
                        "Derby Sports Turf",
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
                    "Pune • 0.0km • ₹250 /hr",
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
                              "5v5",
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
                          return const CricketKodreGround();
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
                        'assets/all assets/kodrecricket1.jpg',
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
                        "Kodre cricket ground",
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
                          return const CricketKshetramTurf();
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
                        'assets/all assets/kshetramsports1.jpg',
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
                        "Kshetram Sports Academy",
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
                          return const CricketOffSide();
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
                        'assets/all assets/OffsideSportsTurf-.jpg',
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
                        "Offside Sports Turf",
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
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const CricketCrossbar();
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
                        'assets/all assets/crossbarsports1.jpg',
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
                        "Crossbar Multisports Arena",
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
                    "Pune • 5.0km • ₹270 /hr",
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
          ],
        ),
      ),
    );
  }
}
