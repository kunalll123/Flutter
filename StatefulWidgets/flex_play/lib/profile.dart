import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex_play/Login.dart';
import 'package:flex_play/SessionData.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import './setting_buttons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State createState() => _Profile();
}

class _Profile extends State {
  void openBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 40, 30, 57), // Dark Purple
                  Color.fromARGB(255, 190, 153, 206), // Soft Lavender
                  Color.fromARGB(255, 121, 88, 138), // Muted Purple
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text("Sure you want to Logout?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700)),
                          ),
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                                "Stay signedin to ensure you don't miss out on games",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                      width: 140,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Cancel",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                        ],
                                      )),
                                ),
                                const SizedBox(width: 30),
                                GestureDetector(
                                  onTap: () async {
                                    User? user =
                                        FirebaseAuth.instance.currentUser;
                                    await user!.delete();
                                    // ignore: use_build_context_synchronously
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const Login();
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 140,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.black,
                                            Colors.red,
                                            Colors.red,
                                            Colors.red,
                                            Colors.black
                                          ],
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Yes",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          );
        });
  }

  bool flag1 = true;
  bool flag2 = true;
  int val = -1;
  int num = 0;

  Color colorDecider(flag) {
    if (flag == true) {
      return Colors.grey;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 40, 30, 57), // Dark Purple
                      Color.fromARGB(255, 190, 153, 206), // Soft Lavender
                      Color.fromARGB(255, 121, 88, 138), // Muted Purple
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(children: [
                            const SizedBox(height: 20),
                            Text("${Sessiondata.userName}",
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                            const SizedBox(height: 10),
                            const Text("@loremipsum",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                            const SizedBox(height: 20),
                          ]),
                          const Spacer(),
                          GestureDetector(
                            onTap: () async {},
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.purple),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("L",
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Followings",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          SizedBox(width: 5),
                          Text("0",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          SizedBox(width: 30),
                          Text("|",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                          SizedBox(width: 30),
                          Text("Followers",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          SizedBox(width: 5),
                          Text("0",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Account();
                }));
              },
              child: const Row(
                children: [
                  Icon(Icons.person_2_outlined,
                      color: Color.fromARGB(255, 169, 199, 249), size: 30),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Account",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("Your personal information",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(Icons.qr_code_2,
                    color: Color.fromARGB(255, 169, 199, 249), size: 30),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Invite friends ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("Invite your friends using qr_code",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PastBooking();
                }));
              },
              child: const Row(
                children: [
                  Icon(Icons.av_timer_outlined,
                      color: Color.fromARGB(255, 169, 199, 249), size: 30),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Past bookings",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("Your previous bookings",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(Icons.trolley,
                    color: Color.fromARGB(255, 169, 199, 249), size: 30),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your orders",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("You can see your all purchases here",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Refund();
                }));
              },
              child: const Row(
                children: [
                  Icon(Icons.repeat,
                      color: Color.fromARGB(255, 169, 199, 249), size: 30),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Refunds",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("Your refunds will show here",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Support();
                }));
              },
              child: const Row(
                children: [
                  Icon(Icons.support_agent_sharp,
                      color: Color.fromARGB(255, 169, 199, 249), size: 30),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Support",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("Support",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                openBottomSheet();
              },
              child: const Row(
                children: [
                  Icon(Icons.logout,
                      color: Color.fromARGB(255, 158, 54, 61), size: 30),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Logout",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("You can logout from here",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
