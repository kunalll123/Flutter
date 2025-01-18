import 'package:flutter/material.dart';
import 'package:turf_shop_page/shop_page.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: shoppage(),
    );
  }
}
