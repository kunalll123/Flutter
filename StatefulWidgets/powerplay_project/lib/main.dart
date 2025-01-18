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
      home: PowerPlayApp(),
    );
  }
}

class PowerPlayApp extends StatefulWidget {
  const PowerPlayApp({super.key});

  @override
  State<StatefulWidget> createState() => _PowerPlayApp();
}

class _PowerPlayApp extends State<PowerPlayApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Sites",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline_sharp),
            color: Colors.black,
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.crib_rounded),
            color: Colors.black,
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the content with SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                child: Image.network(
                    "https://tse3.mm.bing.net/th?id=OIP.1FjxmDa7CBwx61mHWGGnNAHaE8&pid=Api&P=0&h=180"),
              ),
              const Text(
                "You don't have any active site.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "Click to add a new site",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 74, 134),
                ),
                child: const Center(
                  child: Text(
                    "Create First site",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 74, 134),
                ),
                child: const Center(
                  child: Text(
                    "Use Invite Code",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Explorer Powerplay",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Handle tap action
                  print('Row tapped!');
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(BorderSide.strokeAlignInside),
                          ),
                        ),
                        child: ClipRRect(
                          // Clip the image within the container
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            "https://tse1.mm.bing.net/th?id=OIP.waFgmNTF1-qFNfxrYp7vBAHaHa&pid=Api&P=0&h=180",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "View Sample Report",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 180,
                          child: Text(
                            "See how company branded Progress Report Looks",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle tap action
                  print('Row tapped!');
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(BorderSide.strokeAlignInside),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            "https://tse2.mm.bing.net/th?id=OIP.dFIDqUB7uc1HFqK93M_qDwHaHa&pid=Api&P=0&h=180",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore Demo Site",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 180,
                          child: Text(
                            "See how site management looks on Powerplay",
                            style: TextStyle(
                              fontSize: 13,
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
        ),
      ),
    );
  }
}
