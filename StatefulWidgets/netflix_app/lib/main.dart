import 'package:flutter/material.dart';

void main() {
  runApp(const Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://e1.pxfuel.com/desktop-wallpaper/49/663/desktop-wallpaper-new-movie-posters-hollywood-movie-2022-thumbnail.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://rukminim2.flixcart.com/image/850/1000/poster/e/k/u/akhuratha-poster-movie-priest-hd-wallpaper-background-akmov3900-original-imaek7n4hfdnfdmw.jpeg?q=90&crop=false"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://wallpaperaccess.com/full/329583.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT22mdaBl9fWK9Qv8XzQ-QGKIKwDnTYUGBq4w&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://rukminim2.flixcart.com/image/850/1000/jnc2bgw0/poster/y/b/3/medium-hollywood-movie-wall-poster-the-dark-tower-hd-quality-original-imafayzxa7v4nh4s.jpeg?q=90&crop=false"),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
