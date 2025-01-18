import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HostGamePage extends StatefulWidget {
  const HostGamePage({super.key});

  @override
  _HostGamePageState createState() => _HostGamePageState();
}

class _HostGamePageState extends State<HostGamePage> {
  final _gameNameController = TextEditingController();
  final _venueController = TextEditingController();
  DateTime? _selectedDate;
  String? _selectedSport;
  final int _maxPlayers = 10;

  final List<String> _sportsList = [
    'Football',
    'Cricket',
    'Badminton',
    'Basketball'
  ];

  void _hostGame() async {
    if (_gameNameController.text.isNotEmpty &&
        _venueController.text.isNotEmpty &&
        _selectedDate != null &&
        _selectedSport != null) {
      await FirebaseFirestore.instance.collection('games').add({
        'gameName': _gameNameController.text,
        'venue': _venueController.text,
        'sport': _selectedSport,
        'date': _selectedDate,
        'maxPlayers': _maxPlayers,
        'participants': [],
        'status': 'open',
      });
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Game Hosted Successfully!")));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: AppBar(
        backgroundColor: Colors.black, // Dark theme for app bar
        flexibleSpace: Container(
          height: 150,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 40, 30, 57), // Dark Purple
                Color.fromARGB(255, 190, 153, 206), // Soft Lavender
                Color.fromARGB(255, 121, 88, 138), // Muted Purple
              ],
            ),
          ),
        ),
        title: const Text('Host a Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Game Name TextField
            TextField(
              controller: _gameNameController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Game Name",
                labelStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Venue TextField
            TextField(
              controller: _venueController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Venue",
                labelStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Sport Dropdown
            Text(
              "Select Sport",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: _selectedSport,
                dropdownColor: Colors.black87,
                hint: const Text(
                  "Select Sport",
                  style: TextStyle(color: Colors.white54),
                ),
                style: const TextStyle(color: Colors.white),
                items: _sportsList.map((sport) {
                  return DropdownMenuItem(value: sport, child: Text(sport));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedSport = value;
                  });
                },
                isExpanded: true,
              ),
            ),
            const SizedBox(height: 16),

            // Date Picker Button
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                setState(() {
                  _selectedDate = date;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 214, 205, 240),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(_selectedDate == null
                  ? "Select Date"
                  : _selectedDate!.toLocal().toString().split(' ')[0]),
            ),
            const SizedBox(height: 16),

            // Host Game Button (Center and Expand)
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.8, // 80% of the screen width
                child: ElevatedButton(
                  onPressed: _hostGame,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 210, 205, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    "Host Game",
                    style: TextStyle(fontSize: 18),
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
