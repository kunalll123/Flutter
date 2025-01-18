import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.deepPurple),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 270,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepPurple,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(BorderSide.strokeAlignInside))),
                child: Image.network(
                  "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                  fit: BoxFit.cover,
                  //width: 140,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Nike Air Force 1 07",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Button action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: const Text(
                    'SHOES',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Button action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: const Text(
                    'FOOTWEAR',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "With iconic style and legendary comfort,the AF-1 was made to be wonr repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather,era-echoing '80s construction and reflective-desing Swoosh logos.",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Quantity",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  left: 5.0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.remove,
                      size: 32.0,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  left: 5.0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 32.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Button action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: const Text(
                    'PURCHASE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
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
