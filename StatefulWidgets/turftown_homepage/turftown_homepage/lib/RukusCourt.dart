import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RukusCourt(),
    );
  }
}

class RukusCourt extends StatefulWidget {
  const RukusCourt({super.key});
  @override
  State createState() => _RukusCourt();
}

class _RukusCourt extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: AppBar(
              flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                Color.fromARGB(255, 23, 17, 203),
                Colors.black,
              ]))),
            )),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 400,
                width: 500,
                color: Colors.amber,
              ),
            ],
          ),
        ));
  }
}
