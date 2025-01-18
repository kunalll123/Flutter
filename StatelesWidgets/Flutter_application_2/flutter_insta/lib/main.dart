import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Insta",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insta Stories"),
        backgroundColor: const Color.fromARGB(255, 10, 139, 151),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.amber, shape: BoxShape.rectangle),
              ),
              const SizedBox(height: 20), // Add some spacing between containers
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.red, shape: BoxShape.rectangle),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.rectangle),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.pink, shape: BoxShape.rectangle),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 54, 30, 233),
                    shape: BoxShape.rectangle),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 125, 30),
                    shape: BoxShape.rectangle),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 36, 5, 28),
                    shape: BoxShape.rectangle),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.rectangle),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // Set the current index as needed
        selectedItemColor: Colors.teal,
        onTap: (index) {
          // Handle navigation logic here
        },
      ),
    );
  }
}
