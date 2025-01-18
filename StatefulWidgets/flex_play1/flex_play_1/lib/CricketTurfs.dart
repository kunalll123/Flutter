import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CricketTurfs(),
    );
  }
}

class CricketTurfs extends StatefulWidget {
  const CricketTurfs({super.key});
  @override
  State createState() => _CricketTurfs();
}

class _CricketTurfs extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: AppBar(
              flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                Color.fromARGB(255, 23, 17, 203),
                Colors.black,
              ]))),
            )),
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
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("VV Sports(AC)",
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
                            child: Text("Kilpuk  .",
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
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("VV Sports(AC)",
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
                            child: Text("Kilpuk  .",
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
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("VV Sports(AC)",
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
                            child: Text("Kilpuk  .",
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
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("VV Sports(AC)",
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
                            child: Text("Kilpuk  .",
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
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("VV Sports(AC)",
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
                            child: Text("Kilpuk  .",
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
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("VV Sports(AC)",
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
                            child: Text("Kilpuk  .",
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
