import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:turftown_homepage/Football_Turf_BattleGround.dart";
import "package:turftown_homepage/Poona_District_Metropolitan_Badminton_Association.dart";
import "package:turftown_homepage/SMASHBadminton_Sports.dart";
import "package:turftown_homepage/Venues_BadmintonTurfs.dart";
import "package:turftown_homepage/Venues_BasketballTurfs.dart";
import "package:turftown_homepage/Venues_FootballTurfs.dart";
import "package:turftown_homepage/Venues_TennisTurfs.dart";
import "package:turftown_homepage/cricket_derbySport.dart";

import "Home_Page.dart";
import "Venues_CricketTurfs.dart";
import "shop_page.dart";

class Venues extends StatefulWidget {
  const Venues({super.key});
  @override
  State createState() => _Venues();
}

class _Venues extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const TurfTown(
                  fetchedname: '',
                );
              }));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const VenuesFootballTurfs();
                        }));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 243, 111, 81),
                              Color.fromARGB(255, 114, 182, 233)
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        // clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Football",
                                  style: GoogleFonts.labrada(
                                    textStyle: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Image.asset(
                                    "assets/all assets/fb_stickers1.png",
                                    height: 145,
                                    width: 180,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const VenuesCricketTurfs();
                        }));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(189, 239, 227, 227),
                              Color.fromARGB(255, 241, 205, 26),
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        // clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Cricket",
                                  style: GoogleFonts.labrada(
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Image.asset(
                                      "assets/all assets/crick_stick2.png",
                                      height: 250,
                                      width: 200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const VenuesBadmintonTurfs();
                        }));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 244, 225, 225),
                              Color.fromARGB(255, 230, 151, 54)
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        // clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Badminton",
                                  style: GoogleFonts.labrada(
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Image.asset(
                                      "assets/all assets/bdm_stick3.png",
                                      height: 400,
                                      width: 300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const VenuesBasketballTurfs();
                        }));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 228, 248, 250),
                              Color.fromARGB(255, 235, 14, 139)
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        // clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Basketball",
                                  style: GoogleFonts.labrada(
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Image.asset(
                                      "assets/all assets/bask_ball_stick1.png",
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const VenuesTennisTurfs();
                        }));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 1, 3, 3),
                              Color.fromARGB(255, 142, 215, 239)
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        // clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Tennis",
                                  style: GoogleFonts.labrada(
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Image.asset(
                                      "assets/all assets/tennis_stick3-removebg-preview.png",
                                      height: 145,
                                      width: 180,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Spotlight",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "See All",
                    style: TextStyle(
                        color: Color.fromARGB(255, 192, 183, 183),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const CricketDerbybox();
                          }));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 26, 243, 37),
                                  Color.fromARGB(255, 4, 4, 4)
                                ], // Your gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 300,
                            height: 200,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blueAccent),
                                    height: 140,
                                    width: 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        "assets/all assets/durbysportturf1.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text("Derby Sport Cricket Turf",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const RukusCourtPage();
                        }));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 29, 224, 224),
                              Color.fromARGB(255, 13, 84, 122)
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        width: 300,
                        height: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                height: 140,
                                width: 300,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    "assets/all assets/GameOnFootBallTurf.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text("Game On Football Turf",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const BadmintonUrAcademy();
                        }));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 158, 49, 253),
                              Color.fromARGB(255, 99, 4, 115)
                            ], // Your gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        width: 300,
                        height: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blueAccent),
                                height: 140,
                                width: 300,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    "assets/all assets/Poona District Metropolitan Badminton Association3.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  "Poona District Metropolitan Badminton ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 209, 65, 17),
                            Color.fromARGB(255, 82, 45, 88)
                          ], // Your gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      width: 300,
                      height: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return const BadmintonSportygen();
                                  }),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blueAccent),
                                height: 140,
                                width: 300,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    "assets/all assets/SMASHinton Sports1.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text("SMAS Hinton Sports",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Editors Choice",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      )),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "See All",
                    style: TextStyle(
                        color: Color.fromARGB(255, 192, 183, 183),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //backgroundColor: Colors.black,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 40, 30, 57),
                            ),
                            height: 230,
                            width: 270,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.greenAccent,
                                    ),
                                    height: 150,
                                    width: 250,
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                        "assets/all assets/OffsideSportsTurf-.jpg",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Text(
                                        "Off-Side Turf,Pune",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text("4.5  .",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Icon(
                                        Icons.currency_rupee_sharp,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                      Text("233/",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 230,
                              width: 270,
                              color: const Color.fromARGB(255, 40, 30, 57),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.greenAccent,
                                      ),
                                      height: 150,
                                      width: 250,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset(
                                        "assets/all assets/nahataSportCourt2.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          "Nahata Sports,Pune",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        Text("4.5  .",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Icon(
                                          Icons.currency_rupee_sharp,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                        Text("233/",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 230,
                              width: 270,
                              color: const Color.fromARGB(255, 40, 30, 57),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.greenAccent,
                                      ),
                                      height: 150,
                                      width: 250,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset(
                                        "assets/all assets/Legends13boxTurf.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          "Legends-13 Turf,Pune",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        Text("4.5  .",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Icon(
                                          Icons.currency_rupee_sharp,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                        Text("233/",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 230,
                              width: 270,
                              color: const Color.fromARGB(255, 40, 30, 57),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.greenAccent,
                                      ),
                                      height: 150,
                                      width: 250,
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.asset(
                                        "assets/all assets/greenboxfbturf2.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          "GreenBox Turf,Pune",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        Text("4.5  .",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Icon(
                                          Icons.currency_rupee_sharp,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                        Text("233/",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                    )
                  ],
                )),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Venues Around You",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28)),
                ),
              ],
            ),
            Container(
              height: 350,
              width: 330,
              color: const Color.fromARGB(255, 40, 30, 57),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      height: 210,
                      width: 330,
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/all assets/MK pro Sports Arena1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("MK Pro Sorts Arena",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Bavdhan  .",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
                      Text("  0.3 Km  .",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Icon(
                        Icons.currency_rupee,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text("250/hr",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                        height: 25,
                        width: 40,
                        child: const Icon(Icons.sports_tennis,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                          height: 25,
                          width: 100,
                          child: const Text("   Tennis",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 350,
              width: 330,
              color: const Color.fromARGB(255, 40, 30, 57),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      height: 210,
                      width: 330,
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/all assets/mmfcfbturf1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("MMFC Sports Turf",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("FC Road  .",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
                      Text("  0.3 Km  .",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Icon(
                        Icons.currency_rupee,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text("250/hr",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                        height: 25,
                        width: 40,
                        child: const Icon(Icons.sports_cricket,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                          height: 25,
                          width: 100,
                          child: const Text("   Box Cricket",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 350,
              width: 330,
              color: const Color.fromARGB(255, 40, 30, 57),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      height: 210,
                      width: 330,
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/all assets/kshetramsports1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("KShetram Sports Turf",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Wakad  .",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
                      Text("  0.3 Km  .",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Icon(
                        Icons.currency_rupee,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text("250/hr",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                        height: 25,
                        width: 40,
                        child: const Icon(Icons.sports_cricket,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                          height: 25,
                          width: 100,
                          child: const Text("   Box Cricket",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ])),
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const TurfTown(
                          fetchedname: '',
                        );
                      },
                    ),
                  );
                },
                child: const Icon(Icons.home)),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const shoppage();
                      },
                    ),
                  );
                },
                child: const Icon(Icons.shopping_cart)),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Venues();
                      },
                    ),
                  );
                },
                child: const Icon(Icons.stadium)),
            label: 'Venues',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(child: const Icon(Icons.message_rounded)),
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
