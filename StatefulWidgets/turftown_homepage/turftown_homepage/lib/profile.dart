import 'package:flutter/material.dart';
import 'package:turftown_homepage/Home_Page.dart';
import './setting_buttons.dart';

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
          return Column(
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
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                  width: 160,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                            Container(
                                width: 160,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        const Color.fromARGB(255, 158, 54, 61)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Yes",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white)),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
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
      backgroundColor: const Color.fromARGB(255, 33, 33, 33),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 33, 33),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const TurfTown(
                    fetchedname: '',
                  );
                }),
              );
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            GestureDetector(
              child: IconButton(
                icon: const Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {
                  // Handle search action
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const Setting();
                    }),
                  );
                },
              ),
            ),
          ]),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 56, 142, 60)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Column(children: [
                            SizedBox(height: 20),
                            Text("Lorem Ipsum",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                            SizedBox(height: 10),
                            Text("@loremipsum",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                            SizedBox(height: 20),
                          ]),
                          const Spacer(),
                          Container(
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(Icons.lock_outline,
                    color: Color.fromARGB(255, 169, 199, 249), size: 30),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Privacy",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("You can make your account private or public",
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
