import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  // Handle user sign-up
  Future<void> _signUp() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } catch (e) {
      print("Error signing up: $e");
    }
  }

  // Sign out the user
  Future<void> _signOut() async {
    await _auth.signOut();
  }

  // Send message to Firestore
  Future<void> _sendMessage() async {
    if (_message.isNotEmpty && _user != null) {
      await _firestore.collection('messages').add({
        'text': _message,
        'createdAt': Timestamp.now(),
        'userId': _user!.uid, // Ensure _user is not null here
        // "userName":"Take this from Shared Pref"
      });
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 12, 156),
        title: Text(
          _user != null ? 'Welcome, ${_user!.email}' : 'Flex Play',
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          if (_user != null) // Show sign out button only if user is logged in
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: _signOut,
            ),
        ],
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
                  ElevatedButton(
                    onPressed: _isLoginMode ? _login : _signUp,
                    child: Text(_isLoginMode ? 'Login' : 'Sign Up'),
                  ),
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
                      ),
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
