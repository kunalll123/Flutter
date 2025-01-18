import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State createState() => _ProfilePageState();
}

class _ProfilePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
            color: Colors.black,
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
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
                            Radius.circular(40.0),
                          ),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNn9T0lyiTfUMYPSSTYa1T-Rgv7ThULYYmdQ&s"),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Kunal Sonawane",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "9326382077",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.notification_important),
                        color: const Color.fromARGB(255, 2, 85, 238),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle notification action
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Manage Notification",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 85, 238),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle forward action
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.messenger_outline_outlined),
                        color: const Color.fromARGB(255, 2, 85, 238),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Invite Code",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 85, 238),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.help_outline_rounded),
                        color: const Color.fromARGB(255, 2, 85, 238),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Help & Support",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 85, 238),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.settings),
                        color: const Color.fromARGB(255, 2, 85, 238),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Organization Settings",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 85, 238),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.laptop),
                        color: const Color.fromARGB(255, 2, 85, 238),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Web Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 85, 238),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.language),
                        color: const Color.fromARGB(255, 2, 85, 238),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Change Langauage",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 85, 238),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.share),
                        color: const Color.fromARGB(255, 2, 85, 238),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Refer Powerplay App",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 85, 238),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap action here
              },
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.exit_to_app),
                        color: const Color.fromARGB(255, 32, 16, 114),
                        iconSize: 30.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Sign Out",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 156, 7, 7),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: const Color.fromARGB(255, 5, 5, 5),
                        iconSize: 20.0,
                        onPressed: () {
                          // Handle search action
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
