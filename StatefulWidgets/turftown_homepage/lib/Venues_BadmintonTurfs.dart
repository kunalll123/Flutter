import "package:flutter/material.dart";
import "package:turftown_homepage/Venue.dart";

class VenuesBadmintonTurfs extends StatefulWidget {
  const VenuesBadmintonTurfs({super.key});
  @override
  State createState() => _VenuesBadmintonTurfs();
}

class _VenuesBadmintonTurfs extends State {
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
                              "assets/all assets/United sports1.jpeg",
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("United Sports",
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
                              child: const Text("   Box Badminton",
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
                            'assets/all assets/SMASHinton Sports4.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("SMASHHinton Sports(AC)",
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
                              child: const Text("   Box BMinton",
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
                            'assets/all assets/nahataSportCoutrt3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Nahata Sports(AC)",
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
                              child: const Text("   Box BMinton",
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
                            'assets/all assets/MK pro Sports Arena2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("MK Sports Arena(AC)",
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
                              child: const Text("   Box BMinton",
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
                            'assets/all assets/MK pro Sports Arena2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("MK Sports Arena(AC)",
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
                              child: const Text("   Box BMinton",
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
