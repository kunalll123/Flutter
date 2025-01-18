import 'package:flex_play/Football_The_Turf_Ground.dart';
import 'package:flex_play/Host_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FootballHost extends StatefulWidget {
  const FootballHost({super.key});

  @override
  State createState() => _FootballState();
}

class _FootballState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // Height of the AppBar
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 30, 57),
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
              child: SizedBox(
                child: Text(
                  "Pick A Venue",
                  style: GoogleFonts.labrada(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Looking for a specific date & time",
                            style: GoogleFonts.labrada(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 75),
                      child: Text(
                        "Filter venues by availability",
                        style: GoogleFonts.labrada(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "5v5",
                            style: GoogleFonts.labrada(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "6v6",
                            style: GoogleFonts.labrada(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "7v7",
                            style: GoogleFonts.labrada(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            "9v9",
                            style: GoogleFonts.labrada(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
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

            //Court1

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const FootballTheTurfGround();
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
                        'assets/all assets/arean5Afb.jpg',
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
                        "The Turf Ground ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        "*4.0 ",
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
                    "Pune • 3.4km • ₹200 /hr",
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

            //Court2
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      'assets/all assets/puneturffb1.jpg',
                      fit: BoxFit.cover,
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
                        "Games on Football turf",
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
                    "Pune • 4.5km • ₹250 /hr",
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
              height: 20,
            ),

            //Court3
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      'assets/all assets/donboscofb.jpg',
                      fit: BoxFit.cover,
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
                        "Don Bosco Football Turf",
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
                    "Pune • 1.2km • ₹300 /hr",
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

            //Court4
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      'assets/all assets/MMFCfb.jpg',
                      fit: BoxFit.cover,
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
                        "MMFC Football Turf",
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
                        "*3.5 ",
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
                    "Pune • 1.2km • ₹150 /hr",
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
              height: 5,
            ),

            //Court5
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      'assets/all assets/GreenBoxfb.jpg',
                      fit: BoxFit.cover,
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
                        "GreenBox Turfs",
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
                        "*4.0 ",
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
                              "9v9",
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
