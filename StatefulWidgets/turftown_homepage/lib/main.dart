import 'package:flutter/material.dart';
import 'package:turftown_homepage/Home_Page.dart';
//import 'package:turftown_homepage/host_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCuTekMhO_8FVG8tYvvyk6FfiZFz_RYnUs",
          appId: "1:451063065343:android:21b7c006996e58bd943aca",
          messagingSenderId: "451063065343",
          projectId: "flexplay-685e5"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TurfTown(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:turftown_homepage/Home_Page.dart';
// import 'cart_provider.dart'; // Import your CartProvider

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => CartProvider()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TurfTown(),
//     );
//   }
// }
