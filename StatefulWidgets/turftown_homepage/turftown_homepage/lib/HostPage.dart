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
      appBar: AppBar(title: const Text('Host a Game')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _gameNameController,
              decoration: const InputDecoration(labelText: "Game Name"),
            ),
            TextField(
              controller: _venueController,
              decoration: const InputDecoration(labelText: "Venue"),
            ),
            DropdownButton<String>(
              value: _selectedSport,
              items: _sportsList.map((sport) {
                return DropdownMenuItem(value: sport, child: Text(sport));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedSport = value;
                });
              },
              hint: const Text("Select Sport"),
            ),
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
              child: Text(_selectedDate == null
                  ? "Select Date"
                  : _selectedDate!.toLocal().toString().split(' ')[0]),
            ),
            ElevatedButton(
              onPressed: _hostGame,
              child: const Text("Host Game"),
            ),
          ],
        ),
      ),
    );
  }
}
