import 'package:flex_play/Host_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Cricket_host.dart';
import 'Football_host.dart';
import 'JoinPage.dart';
import 'Rewards_Page.dart';
import 'Tennis_host.dart';
import 'Venue.dart';
import 'badminton_host.dart';
import 'chatscreen.dart';

import 'profile.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  final String fetchedname;
  const HomePage({super.key, required this.fetchedname});

  @override
  State createState() => _HomePage();
}

class _HomePage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // Height of the AppBar
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 40, 30, 57),
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Location",
                style: GoogleFonts.labrada(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline, // Adds an underline
                    decorationColor:
                        Colors.white, // Optional: color of the underline
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_rounded,
                    color: Color.fromRGBO(0, 139, 148, 1.0),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Pune",
                    style: GoogleFonts.labrada(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration:
                            TextDecoration.underline, // Adds an underline
                        decorationColor:
                            Colors.white, // Optional: color of the underline
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const Profile();
                    }),
                  );
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 206, 128, 220)
                          .withOpacity(1), // Color of the shadow with opacity
                      spreadRadius: 5, // How much the shadow spreads
                      blurRadius: 7, // How blurry the shadow is
                      offset: const Offset(
                          0, 3), // Offset of the shadow (horizontal, vertical)
                    ),
                  ], color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/all assets/profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Search Bar Container
            Container(
              padding:
                  const EdgeInsets.all(16.0), // Padding around the search bar
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search TextField
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search), // Search icon
                      hintText: 'Venues,Townies and Clubs', // Placeholder text
                      border: OutlineInputBorder(
                        // Border style
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const JoinGamePage()));
                },
                child: Expanded(
                  child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 12, 10, 7),
                          Color.fromARGB(255, 119, 2, 123)
                        ], // Your gradient colors
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      border: Border.all(
                        color: Colors.purpleAccent,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(
                              0.5), // Color of the shadow with opacity
                          spreadRadius: 5, // How much the shadow spreads
                          blurRadius: 7, // How blurry the shadow is
                          offset: const Offset(0,
                              3), // Offset of the shadow (horizontal, vertical)
                        ),
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Text(
                                'Join',
                                style: GoogleFonts.labrada(
                                  textStyle: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Find a group to play with",
                                  style: GoogleFonts.eagleLake(
                                    textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 12, 10, 7),
                                      Color.fromARGB(255, 119, 2, 123)
                                    ], // Your gradient colors
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.5), // Color of the shadow with opacity
                                      spreadRadius:
                                          5, // How much the shadow spreads
                                      blurRadius: 7, // How blurry the shadow is
                                      offset: const Offset(0,
                                          3), // Offset of the shadow (horizontal, vertical)
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 18, top: 13),
                                  child: Text(
                                    "UPTO 50% OFF",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 125,
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
                            child: Expanded(
                              child: Image.asset(
                                'assets/all assets/AI2.jpeg',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const HostPage();
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 163, 99, 2),
                        Colors.black
                      ], // Your gradient colors
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: Colors.orangeAccent,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(
                            0.5), // Color of the shadow with opacity
                        spreadRadius: 5, // How much the shadow spreads
                        blurRadius: 7, // How blurry the shadow is
                        offset: const Offset(0,
                            3), // Offset of the shadow (horizontal, vertical)
                      ),
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Expanded(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Text(
                                "Host",
                                style: GoogleFonts.labrada(
                                  textStyle: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Book a game and gather player",
                                  style: GoogleFonts.eagleLake(
                                    textStyle: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 163, 99, 2),
                                      Colors.black
                                    ], // Your gradient colors
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.5), // Color of the shadow with opacity
                                      spreadRadius:
                                          5, // How much the shadow spreads
                                      blurRadius: 7, // How blurry the shadow is
                                      offset: const Offset(0,
                                          3), // Offset of the shadow (horizontal, vertical)
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 18, top: 13),
                                  child: Text(
                                    "UPTO 50% OFF",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 120,
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
                              'assets/all assets/AI1.jpeg',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(
                                0.5), // Color of the shadow with opacity
                            spreadRadius: 0, // How much the shadow spreads
                            blurRadius: 10, // How blurry the shadow is
                            offset: const Offset(0,
                                5), // Offset of the shadow (horizontal, vertical)
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.black,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "All Sports ->",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const CricketHost();
                          }),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Cricket",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const FootballHost();
                          }),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Football",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const BadmintonHost();
                          }),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 123,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            "Badminton",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const TennisHost();
                          }),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Tennis",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Book a nearby venue",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Venues();
                      }),
                    );
                  },
                  child: const SizedBox(
                    height: 40,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            //price row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 300,
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Text(
                          "Pune Sports,Pune",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 170),
                        child: Text(
                          "*3.9 • ₹250/",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 300,
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
                            'assets/all assets/cricket.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Text(
                          "Don Bosco Turf,Pune",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 170),
                        child: Text(
                          "*3.9 • ₹250/",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 300,
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
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Text(
                          "OFF Side Turf,Pune",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 170),
                        child: Text(
                          "*3.9 • ₹250/",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 300,
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
                            'assets/all assets/puneturffb3.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Text(
                          "Derby Sports , Pune",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 170),
                        child: Text(
                          "*3.9 • ₹250/",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  child: const Text(
                    "𓈖𓈖𓈖",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Text(
                  "Win Big",
                  style: GoogleFonts.zeyada(
                    textStyle: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 245, 180, 89),
                      // decoration: TextDecoration.underline, // Adds an underline
                      // decorationColor:
                      //     Colors.white, // Optional: color of the underline
                      // decorationStyle: TextDecorationStyle.solid,
                      shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          offset: const Offset(
                              4, 4), // Horizontal and vertical shadow offset
                          blurRadius: 6, // How much the shadow is blurred
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    "𓈖𓈖𓈖",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const RewardsPage();
                    }),
                  );
                },
                child: Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 12, 10, 7),
                        Color.fromARGB(255, 119, 2, 123)
                      ], // Your gradient colors
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: Colors.purpleAccent,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(
                            0.5), // Color of the shadow with opacity
                        spreadRadius: 5, // How much the shadow spreads
                        blurRadius: 7, // How blurry the shadow is
                        offset: const Offset(0,
                            3), // Offset of the shadow (horizontal, vertical)
                      ),
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/all assets/trophy3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Live",
                  style: GoogleFonts.aclonica(
                    textStyle: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline, // Adds an underline
                      decorationColor:
                          Colors.white, // Optional: color of the underline
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
              ],
            ),

            Text(
              "To",
              style: GoogleFonts.aclonica(
                textStyle: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.underline, // Adds an underline
                  decorationColor:
                      Colors.white, // Optional: color of the underline
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),

            Text(
              "Play",
              style: GoogleFonts.aclonica(
                textStyle: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.underline, // Adds an underline
                  decorationColor:
                      Colors.white, // Optional: color of the underline
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(child: const Icon(Icons.home)),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const shoppage();
                    }),
                  );
                },
                child: const Icon(Icons.shopping_cart)),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const Venues();
                    }),
                  );
                },
                child: const Icon(Icons.games)),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const ChatScreen();
                    }),
                  );
                },
                child: const Icon(Icons.message_rounded)),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(child: const Icon(Icons.add_alert_sharp)),
            label: 'Alerts',
          ),
        ],
        //   currentIndex: _currentIndex, // Set the current index as needed
        //   selectedItemColor: Colors.teal,
        //   onTap: _onItemTapped,
        //
      ),
    );
  }
}
