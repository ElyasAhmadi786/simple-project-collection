import 'package:flutter/material.dart';

import '../main.dart';

class Project3Page extends StatelessWidget {
  const Project3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text("Project 3",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      drawer: RusableDrawer(),
      body: const Center(
        child: Image(
          image: AssetImage('images/hack3.jpg'),
        ),
      ),
    );
  }
}