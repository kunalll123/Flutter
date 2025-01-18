import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class JoinGamePage extends StatelessWidget {
  const JoinGamePage({super.key});

  // Function to handle joining a game
  void _joinGame(BuildContext context, String gameId, List participants) async {
    const userId = "currentUserId"; // Replace with actual user ID

    if (!participants.contains(userId)) {
      // Add the user to the participants list
      await FirebaseFirestore.instance.collection('games').doc(gameId).update({
        'participants': FieldValue.arrayUnion([userId]),
        'participantsCount':
            FieldValue.increment(1), // Increment the participant count
      });
      _showDialog(context, "Joined Game Successfully!");
    } else {
      _showDialog(context, "You are already joined!");
    }
  }

  // Function to show a dialog
  void _showDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black87,
          title: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: AppBar(
        title: const Text('Join a Game'),
        backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        elevation: 4,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('games')
            .where('status', isEqualTo: 'open')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          var games = snapshot.data!.docs;
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: games.isEmpty
                ? const Center(
                    child: Text(
                      "No Open Games Available!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: games.length,
                    itemBuilder: (context, index) {
                      var game = games[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            color: Colors.black54,
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.black87,
                                            Colors.blueGrey,
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(16.0),
                                    title: Text(
                                      game['gameName'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Sport: ${game['sport']} | Venue: ${game['venue']}",
                                      style: const TextStyle(
                                          color: Colors.white70),
                                    ),
                                    trailing: ElevatedButton.icon(
                                      onPressed: () => _joinGame(context,
                                          game.id, game['participants']),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      icon: const Icon(Icons.sports_baseball,
                                          color: Colors.white),
                                      label: const Text(
                                        "Join",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
