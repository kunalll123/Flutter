import 'package:blinkit_project_app/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyD7By_cs3Lt1Mifub1p2y28U4IjDuwy2Qc',
        appId: '1:364022302658:android:a96cbf0e7baeaa3142385b',
        messagingSenderId: '364022302658',
        projectId: 'blinkitapp-732d5'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
