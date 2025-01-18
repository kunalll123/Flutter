import 'package:flutter/material.dart';
import 'Cricket_host.dart';
import 'Football_host.dart';
import 'badminton_host.dart';

class HostPage extends StatefulWidget {
  const HostPage({super.key});

  @override
  State createState() => _HostPageState();
}

class _HostPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 150,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 40, 30, 57), // Dark Purple
                Color.fromARGB(255, 190, 153, 206), // Soft Lavender
                Color.fromARGB(255, 121, 88, 138), // Muted Purple
              ],
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 20),
                    child: Text("Host Page",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Which sport would you like to play?",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const FootballHost();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 236, 166, 27)
                                .withOpacity(
                                    0.5), // Color of the shadow with opacity
                            spreadRadius: 5, // How much the shadow spreads
                            blurRadius: 7, // How blurry the shadow is
                            offset: const Offset(0,
                                3), // Offset of the shadow (horizontal, vertical)
                          ),
                        ],
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/football.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    "FootBall",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const CricketHost();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 103, 101, 234)
                                .withOpacity(
                                    0.5), // Color of the shadow with opacity
                            spreadRadius: 5, // How much the shadow spreads
                            blurRadius: 7, // How blurry the shadow is
                            offset: const Offset(0,
                                3), // Offset of the shadow (horizontal, vertical)
                          ),
                        ],
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/cricket.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 220),
                  child: Text(
                    "Cricket",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const BadmintonHost();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 118, 241, 139)
                                .withOpacity(
                                    0.5), // Color of the shadow with opacity
                            spreadRadius: 5, // How much the shadow spreads
                            blurRadius: 7, // How blurry the shadow is
                            offset: const Offset(0,
                                3), // Offset of the shadow (horizontal, vertical)
                          ),
                        ],
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
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    "Badminton",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const FootballHost();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 232, 227, 70)
                              .withOpacity(
                                  0.5), // Color of the shadow with opacity
                          spreadRadius: 5, // How much the shadow spreads
                          blurRadius: 7, // How blurry the shadow is
                          offset: const Offset(0,
                              3), // Offset of the shadow (horizontal, vertical)
                        ),
                      ], shape: BoxShape.circle),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/basketball.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 220),
                  child: Text(
                    "Basketball",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const BadmintonHost();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 4, 182, 81)
                              .withOpacity(
                                  0.5), // Color of the shadow with opacity
                          spreadRadius: 5, // How much the shadow spreads
                          blurRadius: 7, // How blurry the shadow is
                          offset: const Offset(0,
                              3), // Offset of the shadow (horizontal, vertical)
                        ),
                      ], shape: BoxShape.circle),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/all assets/tennisgrnd.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    "Tennis",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 246, 102, 102)
                                .withOpacity(
                                    0.5), // Color of the shadow with opacity
                            spreadRadius: 5, // How much the shadow spreads
                            blurRadius: 7, // How blurry the shadow is
                            offset: const Offset(0,
                                3), // Offset of the shadow (horizontal, vertical)
                          ),
                        ],
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/all assets/pickleball.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 220),
                  child: Text(
                    "PickellBall",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
