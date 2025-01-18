import 'package:flutter/material.dart';

void main() {
  runApp(const cricPlayer());
}

class cricPlayer extends StatelessWidget {
  const cricPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Players',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PlayerApp(),
    );
  }
}

class PlayerApp extends StatefulWidget {
  @override
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State {
  int _counter = 0;
  List playerList = [
    "https://assets.telegraphindia.com/telegraph/64e28ce1-53ea-478d-9879-0cfa708941cd.jpg",
    "https://wp.scoopwhoop.com/wp-content/uploads/2021/12/61cd5110c582e00001072140_bf88ab7a-1913-4ea8-b0c0-a9a4a52e9aef.jpg",
    "https://2.bp.blogspot.com/-l2Hx8EKcxPw/WT4498UYSKI/AAAAAAAACcg/rwzf1PXvhQQbE2KH5VptG0jfQd44exsPACLcB/s1600/sachin-tendulkar.jpg",
    "https://2.bp.blogspot.com/_Vk2ir6UMOjY/TTxNXysuZvI/AAAAAAAAJ0g/Q1Tv32Pjzz0/s1600/indian_cricket_player_gautam_gambhir_photo-4.jpg",
    "https://tse3.mm.bing.net/th?id=OIP.Sw3_pNWfFfE-lUE5PxWPZgHaE8&pid=Api&P=0&h=180"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Players App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              playerList[_counter],
              height: 300,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_counter < playerList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
