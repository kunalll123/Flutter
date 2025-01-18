import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThankPage extends StatefulWidget {
  const ThankPage({super.key});

  @override
  State createState() => _ThankPage();
}

class _ThankPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 247, 233, 233),
                          Color.fromARGB(255, 0, 0, 0)
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
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/all assets/master.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "~Shashikant Bagal~",
                  style: GoogleFonts.afacad(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Founder",
                  style: GoogleFonts.zeyada(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black,
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Shashi Sir’s unparalleled knowledge in coding and his dedication to nurturing young minds have been the cornerstone of our growth and success.",
                        style: GoogleFonts.labrada(
                          textStyle: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 247, 233, 233),
                                  Color.fromARGB(255, 0, 0, 0)
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
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/all assets/akshaysir.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Akshay Sir",
                          style: GoogleFonts.labrada(
                            textStyle: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 247, 233, 233),
                                  Color.fromARGB(255, 0, 0, 0)
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
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/all assets/prajwaldada.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Prajwal Sir",
                          style: GoogleFonts.labrada(
                            textStyle: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Team Members",
                  style: GoogleFonts.zeyada(
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 70,
                            width: 65,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/all assets/sumedh.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "Sumedh",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 70,
                            width: 65,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/all assets/purvesh.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "Purvesh",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 70,
                            width: 65,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/all assets/kunal (2).jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "Kunal",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 70,
                            width: 65,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/all assets/shd1.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "Shraddha",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/all assets/whatsapp.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/all assets/instagram.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/all assets/linkedin.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/all assets/facebook.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}
