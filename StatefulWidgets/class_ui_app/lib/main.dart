import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_sharp),
            color: Colors.deepPurple,
            onPressed: () {
              // Handle search action
            },
          ),
          title: const Text(
            "Recommended",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 91, 135, 1),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          "assets/app.jpeg",
                          fit: BoxFit.cover,
                          //width: 140,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Data Science",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                          width: 180,
                          child: Text(
                            "Harvard University",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 180,
                          child: Text(
                            "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.white38,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: const Text(
                                "Data Science",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 20,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: const Text(
                                "Machine Learning",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
