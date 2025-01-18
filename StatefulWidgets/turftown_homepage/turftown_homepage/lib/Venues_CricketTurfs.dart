import "package:flutter/material.dart";
import "package:turftown_homepage/Venue.dart";

class VenuesCricketTurfs extends StatefulWidget {
  const VenuesCricketTurfs({super.key});
  @override
  State createState() => _VenuesCricketTurfs();
}

class _VenuesCricketTurfs extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 23, 17, 203),
                    Colors.black,
                  ],
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Venues();
                }));
              },
              child: const Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  width: 330,
                  color: Colors.black,
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
                              'assets/all assets/legends13turf1.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Legends 13 Turf",
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
                            child: Text("PCMC  .",
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  width: 330,
                  color: Colors.black,
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
                              'assets/all assets/kshetramsports1.jpg',
                              fit: BoxFit.cover),
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
                            child: Text("Pune  .",
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  width: 330,
                  color: Colors.black,
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
                              'assets/all assets/kodrecricket2.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Kodre Cricket Ground",
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
                            child: Text("Dhayari  .",
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  width: 330,
                  color: Colors.black,
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
                            "assets/all assets/DerbySportTurf.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Derby Cricket Sports",
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
                            child: Text("Swargate  .",
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  width: 330,
                  color: Colors.black,
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
                            "assets/all assets/crossbarsport2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("CrossBar Sports",
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
                            child: Text("Pune  .",
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  width: 330,
                  color: Colors.black,
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
                            "assets/all assets/D C Turf.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("DC Sports Turf",
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
                            child: Text("Pune  .",
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
              ),
            ],
          ),
        ));
  }
}
