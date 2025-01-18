import 'package:flutter/material.dart';

class shoppage extends StatefulWidget {
  const shoppage({super.key});

  @override
  State createState() => _shoppageState();
}

class _shoppageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: AppBar(

            actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              // Handle search action
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 58, 6, 148),
                Colors.black
              ], // Your gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 366,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 77, 12),
                          Colors.black
                        ], // Your gradient colors
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "PREMIUM KIDS SPORTSWEAR",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "321 SPORTSWEAR ELEVATING INDIA'S SPORTING FUTURE",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "STARTING @799/-",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 40),
                            child: Container(
                              height:
                                  40, // Slightly increased height for better text fit
                              width: 130,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 0.5,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                color: Colors.black,
                              ),
                              child: const Center(
                                // Center aligns the text within the container
                                child: Text(
                                  "EXPLORE",
                                  style: TextStyle(
                                    fontSize:
                                        18, // Adjusted font size for a better fit
                                    fontWeight: FontWeight
                                        .w600, // Semi-bold for emphasis

                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/racket.jpg',
                          height: 50,
                          width: 50,
                        ),
                        const Text(
                          "Sport Equipments",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/booksports.png',
                          height: 50,
                          width: 50,
                        ),
                        const Text(
                          "Sport Equipments",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/sneakers.png',
                          height: 50,
                          width: 50,
                        ),
                        const Text(
                          "Sport Equipments",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 246, 251, 101),
                          Colors.black
                        ], // Your gradient colors
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Trending",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Color.fromARGB(255, 0, 0, 0),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Buy best cricket gears for your next match",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Exciting offers on all products",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/racketsimg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/shuttles.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/niviaball.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Frequently bought",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                          bottom: 10,
                        ),
                        child: Text(
                          "Great options for your first purchase",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 30),
                              child: Image.asset(
                                'assets/niviafootball.jpg',
                                height: 130,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Nivia Trainer Football",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Image.asset(
                            'assets/ssbat.jpg',
                            height: 130,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white, // Your gradient colors

                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: const Text(
                              "4.3 *",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 30),
                              child: Image.asset(
                                'assets/jersey.jpg',
                                height: 130,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Nivia Trainer Football",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Image.asset(
                            'assets/shuttlecock1.jpg',
                            height: 130,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white, // Your gradient colors

                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: const Text(
                              "4.3 *",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white, // Your gradient colors

                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/racketsimg.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white, // Your gradient colors

                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/shuttles.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white, // Your gradient colors

                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/bails.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white, // Your gradient colors

                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/niviaball.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Best Selling Cricket",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                          bottom: 10,
                        ),
                        child: Text(
                          "we're trying to make your cricket shopping easier",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 270,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white, // Your gradient colors

                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/tennisball.jpeg',
                                  height: 130,
                                  width: 200,
                                ),
                                const Text(
                                  "TENNEX Rubber Tennis Ball, Size Standard(Yellow)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.green, // Your gradient colors

                                      border: Border.all(
                                        color: Colors.black,
                                        width: 0.5,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        "4.3 *",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "₹425",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 0.5,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                icon: const Icon(Icons
                                                    .shopping_bag_outlined),
                                                color: Colors.blue,
                                                onPressed: () {
                                                  // Handle edit action
                                                },
                                              ),
                                              const Text(
                                                "ADD CART",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.blue),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/leatherball.webp',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "GRASSHOPPERS clubman Cricket Leahter Ball",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹810",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/dscbat.jpeg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "DSC Wildfire Flame Cricket Tennis Bat",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.3 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹2,375",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/bails.jpg'),
                              const Text(
                                "Flashing LED Cricket Bails",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹1200",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //second row
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/kit.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "DSC Premium Kashmir Willow Cricket Kit Set Multicolor",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.3 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹5,549",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/dscbat.jpeg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "DSC Fire Tennis Cricket Bat",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹5,449",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/ssbat.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "SS Fire Tennis Cricket Bat",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹5,449",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/helmet.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "SS Helmet",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹1349",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "It's all about Football",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                          bottom: 10,
                        ),
                        child: Text(
                          "The true essence of football is felt with its Kit",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/niviafootball.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "Nivia Storm Football | Rubberized Moulded | Suitable for Hard Ground Without Grass ",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹5,449",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/messyjersey.jpg',
                                height: 125,
                                width: 200,
                              ),
                              const Text(
                                "Argentina Football Jersey 2024 Messii (Kids,Boys,Men)",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹449",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/ronaldo.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "Sports alnassr Fans Football Jersey Ronaldo 7 2024/2025 for Mens",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹299",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/protectionkit.jpg',
                                height: 150,
                                width: 200,
                              ),
                              const Text(
                                "MattZig Ultimate Protection Football Kit",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹269",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //second row
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/jersey.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "TRADITION KNITWEARS Sports Jersey T-Shirts for Men & Boys",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹449",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/shoes.jpg',
                                height: 150,
                                width: 200,
                              ),
                              const Text(
                                "REACT FOOTBALL SHOES for MEN/SPORTS and SOCCER/",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹949",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/fb-equipment.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "LAVENIR Multicolour Sports Speed Building Kit - 50 Saucer Cone/Space Marker + Speed Ladder 4 Meter + Training ",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹5,449",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 270,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/fbkit.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "Plastic Football Training Kit Combo of 4 Mtr Ladder, 10 Soccer Cone 6 inch 6 Hurdle for All Age Group Pack of 1",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹5,449",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Spotlight on Badminton!",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                          bottom: 10,
                        ),
                        child: Text(
                          "Get everything about badminton at one place",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/btnet.webp',
                                height: 150,
                                width: 200,
                              ),
                              const Text(
                                "RAISCO 516F Sky Blue Nylon Badminton Net (Blue)",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹259",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/badmrackets.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "Li-Ning Mega Power Badminton Racquet with Smash Power Frame with Free Full Cover",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹502",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/grip1.jpeg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "Li-Ning GP-20 Polyurethane Overgrip Badminton Racket Grip - Assorted (5)",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹359",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/shuttlecock1.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "Li-Ning Bolt Neo (6 in 1) Nylon Badminton Shuttlecocks (Yellow) ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹386",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //second row
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/btkit.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "Senston Two Pieces Graphite Shaft Badminton Racquet,Badminton Racket Set,Including Badminton Bag",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹2525",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/bshoes.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "KONEX Force Non-Marking Water Resistant Badminton Shoes for Men | Lightweight & Breathable Mesh with Absorbing Insole",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹1559",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/grip2.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "7PCS Badminton Grip, Tennis Badminton Racket Grip Slip Perforated Super Absorbent Grip for Badminton Racket, Multicolour",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹515",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 290,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white, // Your gradient colors

                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/bmshoes.jpg',
                                height: 130,
                                width: 200,
                              ),
                              const Text(
                                "KONEX Storm Studded Football Shoes for Boys | Waterproof Inner Lining with Lightweight Sole & Snug Fit Technology",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green, // Your gradient colors

                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "4.0 *",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹1699",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 0.5,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.shopping_bag_outlined),
                                              color: Colors.blue,
                                              onPressed: () {
                                                // Handle edit action
                                              },
                                            ),
                                            const Text(
                                              "ADD CART",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
