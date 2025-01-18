import 'package:firebase_core/firebase_core.dart';
import 'package:flex_play/Login.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDFR90ZzkjZgqAQUmqWlMV75VyDXl5xJS8",
          appId: "1:370313126715:android:3c8e49d380cc61c365cd1e",
          messagingSenderId: "370313126715",
          projectId: "flexplay-50114"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
