import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayStore(),
    );
  }
}

class PlayStore extends StatefulWidget {
  const PlayStore({super.key});

  @override
  State createState() => _PlayStoreApp();
}

class _PlayStoreApp extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
              "https://e7.pngegg.com/pngimages/530/733/png-clipart-goggle-playstore-icon-google-play-computer-icons-android-play-button-angle-rectangle-thumbnail.png"),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add),
            color: Colors.black,
            onPressed: () {
              // Handle edit action
            },
          ),
          TextButton(
            onPressed: () {
              // Handle button press
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
              textStyle: const TextStyle(
                fontSize: 16, // Set button text size
              ),
            ),
            child: Image.network(
                "https://cdn.vectorstock.com/i/500p/53/42/user-member-avatar-face-profile-icon-vector-22965342.jpg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "For You",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 1, 60, 179),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Top charts",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 1, 60, 179),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Other devices",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 1, 60, 179),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Children",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 1, 60, 179),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Premium",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 1, 60, 179),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 1, 60, 179),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        "https://cdn.prod.website-files.com/66ba0cbc63210953b4fc73a8/66c6e8e1a5ac0688e2993353_rk_md_hide%202.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        "https://static.toiimg.com/thumb/msid-110639922,width-1280,height-720,resizemode-4/110639922.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBUKz4MvwIMp8rL-qVZgI41EjY3pWuRhC6NA&s",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Sponsored •",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Suggested for you",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                // Changed from Column to Row
                children: [
                  SizedBox(
                    height: 300,
                    width: 350, // This width can be adjusted as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/en/9/95/Ludo_King_Logo.webp"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ludo King",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Board • Ludo Casual • Multi-player",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "4.6* 91MB",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/en/9/95/Ludo_King_Logo.webp"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ludo King",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Board • Ludo Casual • Multi-player",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "4.6* 91MB",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
