import 'package:firebase_auth/firebase_auth.dart';

import 'package:turftown_homepage/Login.dart';
//import 'package:flex_play/global.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State createState() => _Register();
}

class _Register extends State {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/all assets/sport2.png"),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Create Your FlexPlay Account",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 65, 161, 70)),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  // controller: globalNameController,
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _emailTextEditingController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Enter your email id",
                    hintStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _passwordTextEditingController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    hintStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () async {
                  if (_emailTextEditingController.text.trim().isNotEmpty &&
                      _passwordTextEditingController.text.trim().isNotEmpty) {
                    try {
                      UserCredential userCredential =
                          await _firebaseAuth.createUserWithEmailAndPassword(
                              email: _emailTextEditingController.text,
                              password: _passwordTextEditingController.text);

                      print(" UC : $userCredential");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("your account created successfully"),
                        ),
                      );
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return const Login();
                          },
                        ),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("$e"),
                        ),
                      );
                    }
                  }
                },
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
