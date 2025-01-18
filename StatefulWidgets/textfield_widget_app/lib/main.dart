import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextfieldScreen(),
    );
  }
}

class TextfieldScreen extends StatefulWidget {
  const TextfieldScreen({super.key});

  @override
  State<TextfieldScreen> createState() => _TextfieldScreenState();
}

class _TextfieldScreenState extends State<TextfieldScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController companyController = TextEditingController();

  // Function to handle the data submission
  void submitData() {
    String name = nameController.text.trim();
    String company = companyController.text.trim();

    if (name.isNotEmpty && company.isNotEmpty) {
      // Print or handle the data (e.g., send to server or show in UI)
      print('Name: $name');
      print('Dream Company: $company');

      // Show the data in a SnackBar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Name: $name\nDream Company: $company'),
        ),
      );
    } else {
      // Show error message if any of the fields are empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter both name and dream company'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BottomSheet",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 25,
              ),
              obscureText: false,
              decoration: const InputDecoration(
                hintText: "Type your name...",
                hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: companyController,
              style: const TextStyle(
                fontSize: 20,
              ),
              obscureText: false,
              decoration: const InputDecoration(
                hintText: "Dream Company",
                hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: submitData, // Call the submit function when tapped
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
