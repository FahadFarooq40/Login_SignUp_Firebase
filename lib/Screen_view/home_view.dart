// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/Screen_view/login_page.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  signoutUser() async {
    try {
      final credential = await FirebaseAuth.instance.signOut();
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME SCREEN'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              signoutUser();
            },
          ),
        ],
      ),
      body: const Column(
        children: [Center(child: Text("Home"))],
      ),
    );
  }
}
