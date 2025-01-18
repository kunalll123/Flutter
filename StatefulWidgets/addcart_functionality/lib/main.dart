//import 'package:addcart_functionality/HostPage.dart';
import 'package:addcart_functionality/JoinPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA3Pz9E4a0kQ08IFLgYlvbR4KKxnjt_-1I",
          appId: "1:247314959151:android:a100348ade3bc91e526fda",
          messagingSenderId: "247314959151 ",
          projectId: "joinhost-functionality"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: JoinGamePage(),
    );
  }
}
