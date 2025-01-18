import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Firebase App',
      home: PlayerScreen(),
    );
  }
}

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State {
  TextEditingController playerNameTextController = TextEditingController();
  TextEditingController jerNoTextController = TextEditingController();

  List playerList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Firebase Player App",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),

          //Player Name
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: playerNameTextController,
              style: const TextStyle(fontSize: 18, color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Enter Player Name",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          //Player jerNo

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: jerNoTextController,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Player JerNo.",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          GestureDetector(
            onTap: () {
              if (playerNameTextController.text.trim().isNotEmpty &&
                  jerNoTextController.text.trim().isNotEmpty) {
                Map<String, dynamic> data = {
                  "playerName": playerNameTextController.text.trim(),
                  "jerNO": jerNoTextController.text.trim(),
                };

                FirebaseFirestore.instance.collection("playersInfo").add(data);

                playerNameTextController.clear();
                jerNoTextController.clear();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Data Added"),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Invalid Data"),
                  ),
                );
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Add Data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          GestureDetector(
            onTap: () async {
              QuerySnapshot response = await FirebaseFirestore.instance
                  .collection("PlayersInfo")
                  .get();

              playerList.clear();

              for (int i = 0; i < response.docs.length; i++) {
                print("${response.docs[i]['playerName']}");

                playerList.add(
                  PlayerModel(
                    playerName: response.docs[i]['playerName'],
                    playerId: response.docs[i].id,
                    jerNo: response.docs[i]['jerNo'],
                  ),
                );
              }

              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Get Data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
              child: ListView.builder(
            itemCount: playerList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  FirebaseFirestore.instance
                      .collection('playersInfo')
                      .doc(playerList[index].playerId)
                      .delete();

                  playerList.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Data Deleted"),
                    ),
                  );
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[200],
                  ),
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Player Name : ${playerList[index].playerName}",
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "jerNo : ${playerList[index].jerNo}",
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
