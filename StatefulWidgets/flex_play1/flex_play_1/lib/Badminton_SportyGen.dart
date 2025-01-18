import "package:flex_play/HostPage.dart";
import "package:flutter/material.dart";

bool likeflag = false;

class BadmintonSportygen extends StatefulWidget {
  const BadmintonSportygen({super.key});
  @override
  State createState() => _BadmintonSportygen();
}

class _BadmintonSportygen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: AppBar(
            flexibleSpace: Container(
                decoration: const BoxDecoration(
              color: const Color.fromARGB(255, 40, 30, 57),
            )),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 350,
                    width: 360,
                    color: Colors.black,
                    child: Image.asset(
                      "assets/all assets/nahataSportCoutrt3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 350,
                    width: 360,
                    color: Colors.black,
                    child: Image.asset(
                      "assets/all assets/nahataSportCourt2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 350,
                    width: 360,
                    color: Colors.redAccent,
                    child: Image.asset(
                      "assets/all assets/nahataSportCourt1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 0, 0),
                  child: Text(
                    "SportyGen Academy",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    likeflag == true;

                    setState(() {});
                  },
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: likeflag ? Colors.red : Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Pune",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sports_tennis,
                    color: Colors.white,
                  ),
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
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("   Badminton",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
                height: 1,
                width: 350,
                color: const Color.fromARGB(255, 86, 85, 85)),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Amenities",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.payment,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "UPI Accepted ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Parking Available ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shower,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Showers ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.family_restroom_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Changing Rooms ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.credit_card_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Cards Accepted ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 1,
                width: 350,
                color: const Color.fromARGB(255, 86, 85, 85)),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Venue Rules",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 260,
                    child: Text(
                      "Any damage to the club property will be recovered from the person responsible",
                      style: TextStyle(
                          color: Color.fromARGB(255, 153, 151, 151),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: 330,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const HostGamePage();
            }));
          },
          backgroundColor: Colors.blueAccent,
          child: const Text(
            "Book a game",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
