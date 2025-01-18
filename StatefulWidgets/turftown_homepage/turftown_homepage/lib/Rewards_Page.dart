import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turftown_homepage/Home_Page.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({super.key});

  @override
  _RewardsPageState createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 48, 2, 127),
                Colors.black,
              ],
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TurfTown(
                  fetchedname: '',
                ),
              ),
            );
          },
        ),
        title: Text(
          'Turf Town Rewards',
          style: GoogleFonts.labrada(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 0, 0, 0)
                    ], // Your gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 5, 3, 5),
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white
                          .withOpacity(0.5), // Color of the shadow with opacity
                      spreadRadius: 5, // How much the shadow spreads
                      blurRadius: 7, // How blurry the shadow is
                      offset: const Offset(
                          0, 3), // Offset of the shadow (horizontal, vertical)
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
                    "assets/all assets/Money_bag.png",
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Win big by playing on Turf Town.',
                style: GoogleFonts.labrada(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 5),
                  child: Text(
                    "Step1",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text(
                "Host or join a game.",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          shape: BoxShape.circle),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/all assets/MK pro Sports Arena1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 120),
                          child: Text(
                            "Sumedh Patil",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          "Dec 22 • 6.00 am - 9.00 am",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(
                        Icons.person_outline,
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 5),
                  child: Text(
                    "Step2",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Share this game with your friends and get them to join.',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/all assets/send.png',
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Invite',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/all assets/social.png',
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Whatsapp',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/all assets/chat.png',
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Message',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/all assets/link.png',
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'link',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          shape: BoxShape.circle),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/all assets/MK pro Sports Arena1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 120),
                          child: Text(
                            "Sumedh Patil",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          "Dec 22 • 6.00 am - 9.00 am",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(
                        Icons.person_outline,
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 5),
                  child: Text(
                    "Step3",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 70),
              child: Text(
                'Gather 10 or more players.',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 139, 138, 136),
                    Color.fromARGB(255, 232, 80, 46)
                  ], // Your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(
                  color: const Color.fromARGB(255, 5, 3, 5),
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white
                        .withOpacity(0.5), // Color of the shadow with opacity
                    spreadRadius: 5, // How much the shadow spreads
                    blurRadius: 7, // How blurry the shadow is
                    offset: const Offset(
                        0, 3), // Offset of the shadow (horizontal, vertical)
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 150, top: 5),
                    child: Text(
                      '10 players',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset('assets/all assets/progressbar.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 5),
                  child: Text(
                    "Step4",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Claim your reward at the end of the game upon completion of your payment.',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 237, 236, 236),
                      Color.fromARGB(255, 159, 0, 135)
                    ], // Your gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Image.asset('assets/all assets/happy.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
