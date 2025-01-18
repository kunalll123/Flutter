import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State createState() => _Homepage();
}

class _Homepage extends State {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {"icon": Icons.all_inbox, "text": "Home"},
      {"icon": Icons.headset, "text": "Electronics"},
      {"icon": FontAwesomeIcons.spa, "text": "Beauty"},
      {"icon": FontAwesomeIcons.baby, "text": "Kids"},
      {"icon": Icons.wallet_giftcard_rounded, "text": "Gifting"},
      {"icon": FontAwesomeIcons.diamond, "text": "Premium"},
    ];

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 244, 221, 19), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.brown,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          child: Column(
                            children: [
                              Icon(
                                items[index]["icon"],
                                size: 25,
                                color: Colors.black,
                              ),
                              Text(
                                items[index]["text"],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Welcome',
              style: GoogleFonts.nunito(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            Text(
              'Order now to avail exciting offers!',
              style: GoogleFonts.nunito(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 150,
                    width: 170,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 238, 231, 173),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
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
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/all assets/rupee2.png",
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Flat ₹50 OFF",
                          style: GoogleFonts.labrada(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              color: Colors.green[400]),
                        ),
                        const Text(
                          "on your first 5 orders",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 150,
                    width: 170,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 238, 231, 173),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
