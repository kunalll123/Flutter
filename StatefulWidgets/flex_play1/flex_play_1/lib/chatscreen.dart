import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex_play/SessionData.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  User? _user; // User might be null
  String _message = "";
  bool _isLoginMode = true; // To toggle between login and sign up UI

  @override
  void initState() {
    super.initState();
    // Listen for authentication state changes
    _auth.userChanges().listen((user) {
      setState(() {
        _user = user; // Update the state when the user state changes
      });
    });
  }

  // Handle user login
  Future<void> _login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } catch (e) {
      print("Error logging in: $e");
    }
  }

  // Send message to Firestore
  Future<void> _sendMessage() async {
    if (_message.isNotEmpty && _user != null) {
      await _firestore.collection('messages').add({
        'text': _message,
        'createdAt': Timestamp.now(),
        'userId': "${Sessiondata.userName}",
      });
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 30, 57),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 150,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 10),
                child: Text(
                  _user != null
                      ? 'Welcome , ${Sessiondata.userName}'
                      : 'Flex Play',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          //
        ),
      ),
      body: Column(
        children: [
          // If the user is not logged in, show login/signup UI
          if (_user == null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isLoginMode = !_isLoginMode;
                      });
                    },
                    child: Text(
                      _isLoginMode
                          ? 'Create a new account'
                          : 'Already have an account?',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          // Chat UI when user is logged in
          if (_user != null)
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: _firestore
                    .collection('messages')
                    .orderBy('createdAt')
                    .snapshots(),
                builder: (ctx, chatSnapshot) {
                  if (chatSnapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final chatDocs = chatSnapshot.data!.docs;
                  return ListView.builder(
                    itemCount: chatDocs.length,
                    itemBuilder: (ctx, index) {
                      return ListTile(
                        title: Text(
                          chatDocs[index]['text'],
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          'User: ${chatDocs[index]['userId']}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          // Message input field when the user is logged in
          if (_user != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: _messageController,
                      onChanged: (val) {
                        setState(() {
                          _message = val;
                        });
                      },
                      decoration: const InputDecoration(
                          labelText: 'Enter message',
                          border: OutlineInputBorder()),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
