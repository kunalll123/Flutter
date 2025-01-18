import 'package:flex_play/SessionData.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});
  @override
  State createState() => _Setting();
}

class _Setting extends State {
  void openBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 100),
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
    return selectScaffold();
  }

  Widget selectScaffold() {
    Text selectText(num) {
      if (num == 0) {
        return const Text(
          "Public",
          style: TextStyle(
              color: Color.fromARGB(255, 9, 59, 156),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        );
      } else {
        return const Text(
          "Private",
          style: TextStyle(
              color: Color.fromARGB(255, 9, 59, 156),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        );
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_sharp,
                  color: Colors.white, size: 25)),
          title: const Text("Setting",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(9, 59, 156, 1), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.lock_outline,
                    size: 25,
                    color: Color.fromARGB(255, 9, 59, 156),
                  ),
                  const SizedBox(width: 15),
                  Row(
                    children: [
                      const SizedBox(
                        child: Text(
                          "Privacy",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(width: 180),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: selectText(num),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.person_outline,
                  size: 25,
                  color: Color.fromARGB(255, 9, 59, 156),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Account();
                    }));
                  },
                  child: const SizedBox(
                    child: Text(
                      "Account",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 0.25,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.av_timer,
                  size: 25,
                  color: Color.fromARGB(255, 9, 59, 156),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const PastBooking();
                    }));
                  },
                  child: const SizedBox(
                    child: Text(
                      "Past bookings",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.repeat_rounded,
                  size: 25,
                  color: Color.fromARGB(255, 9, 59, 156),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Refund();
                    }));
                  },
                  child: const SizedBox(
                    child: Text(
                      "Refunds",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.support,
                  size: 25,
                  color: Color.fromARGB(255, 9, 59, 156),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Support();
                    }));
                  },
                  child: const SizedBox(
                    child: Text(
                      "Support",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 0.25,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.sticky_note_2,
                  size: 25,
                  color: Color.fromARGB(255, 9, 59, 156),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const TermOfUse();
                    }));
                  },
                  child: const SizedBox(
                    child: Text(
                      "Terms of use",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.privacy_tip,
                  size: 25,
                  color: Color.fromARGB(255, 9, 59, 156),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const PrivacyPolicy();
                    }));
                  },
                  child: const SizedBox(
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Icon(
                  Icons.logout,
                  size: 25,
                  color: Color.fromARGB(255, 158, 54, 61),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    openBottomSheet();
                  },
                  child: const SizedBox(
                    child: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Account extends StatefulWidget {
  const Account({super.key});
  @override
  State createState() => _Account();
}

class _Account extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back_sharp, color: Colors.white)),
          ),
          title: const Text(
            "Account",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Personal information wont be part of your public profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "NUMBER",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(height: 1, color: Colors.white),
          ),
          const SizedBox(height: 35),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "EMAIL",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "${Sessiondata.emailId}",
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}

class PastBooking extends StatefulWidget {
  const PastBooking({super.key});
  @override
  State createState() => _PastBooking();
}

class _PastBooking extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_sharp, color: Colors.white)),
          title: const Text(
            "Past Booking",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        ),
      ),
    );
  }
}

class Refund extends StatefulWidget {
  const Refund({super.key});
  @override
  State createState() => _Refund();
}

class _Refund extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back_sharp, color: Colors.white)),
            title: const Text(
              "Refunds",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromARGB(255, 40, 30, 57),
          ),
        ),
        body: const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.repeat_rounded,
                      color: Color.fromARGB(255, 46, 51, 54), size: 100),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("No Refunds",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            "All your refunds will start showing up here",
                            style: TextStyle(
                                color: Color.fromARGB(255, 125, 130, 142),
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class Support extends StatefulWidget {
  const Support({super.key});
  @override
  State createState() => _Support();
}

class _Support extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_sharp, color: Colors.white)),
          title: const Text(
            "Support",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        ),
      ),
    );
  }
}

class TermOfUse extends StatefulWidget {
  const TermOfUse({super.key});
  @override
  State createState() => _TermOfUse();
}

class _TermOfUse extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_sharp, color: Colors.white)),
          title: const Text(
            "Terms of use",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 40, 30, 57),
        ),
      ),
    );
  }
}

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});
  @override
  State createState() => _PrivacyPolicy();
}

class _PrivacyPolicy extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_sharp, color: Colors.white)),
          title: const Text(
            "Privacy Policy",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(9, 59, 156, 1), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
      ),
    );
  }
}
