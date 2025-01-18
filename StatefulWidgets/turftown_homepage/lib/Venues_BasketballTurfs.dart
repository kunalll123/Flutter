import "package:flutter/material.dart";
import "package:turftown_homepage/Venue.dart";

class VenuesBasketballTurfs extends StatefulWidget {
  const VenuesBasketballTurfs({super.key});
  @override
  State createState() => _VenuesBasketballTurfs();
}

class _VenuesBasketballTurfs extends State {
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
                            'assets/all assets/offsideturf3.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("OFF side Turf",
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
                            'assets/all assets/gamefbturf2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Green Box Turf",
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
                            'assets/all assets/donfbturf1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Don Bosco Turf",
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
                              child: const Text("   Box Basketball",
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
                            'assets/all assets/crossbarsports3.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("CrossBar Turf",
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
                            'assets/all assets/amanorasports2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Amanora Sports",
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
