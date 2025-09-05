import 'package:flutter/material.dart';

import '../main.dart';

class Project4Page extends StatelessWidget {
  const Project4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("Project 4",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      drawer: RusableDrawer(),
      body: const Center(
        child: Image(
          image: AssetImage('images/hack4.jpg'),
        ),
      ),
    );
  }
}