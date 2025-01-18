import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class JoinGamePage extends StatelessWidget {
  const JoinGamePage({super.key});

  void _joinGame(String gameId, List participants) async {
    const userId = "currentUserId"; // Replace with actual user ID

    if (!participants.contains(userId)) {
      // Add the user to the participants list
      await FirebaseFirestore.instance.collection('games').doc(gameId).update({
        'participants': FieldValue.arrayUnion([userId]),
        'participantsCount':
            FieldValue.increment(2), // Increment the participant count
      });
      print("Joined Game Successfully!");
    } else {
      print("Already joined!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Join a Game')),
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
          return ListView.builder(
            itemCount: games.length,
            itemBuilder: (context, index) {
              var game = games[index];
              return ListTile(
                title: Text(game['gameName']),
                subtitle:
                    Text("Sport: ${game['sport']} | Venue: ${game['venue']}"),
                trailing: ElevatedButton(
                  onPressed: () => _joinGame(game.id, game['participants']),
                  child: const Text("Join"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
