import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/pages/project1.dart';
import 'package:flutter_application_1/pages/project2.dart';
import 'package:flutter_application_1/pages/project3.dart';
import 'package:flutter_application_1/pages/project4.dart';
import 'package:flutter_application_1/pages/project5.dart' show Project5Page;
import 'package:flutter_application_1/pages/project6.dart';
import 'package:flutter_application_1/pages/project7.dart';
import 'package:flutter_application_1/pages/project8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Projects App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: const HomePage(),
    );
  }
}

class RusableDrawer extends StatelessWidget {
  const RusableDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF0A0D22),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/hack5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.broadcast_on_home_outlined),
                  title: const Text('Home Page'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: const Text('Project 1'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project1Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: const Text('Project 2'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project2Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home_work),
                  title: const Text('Project 3'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project3Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home_work_outlined),
                  title: const Text('Project 4'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project4Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add_home_work),
                  title: const Text('Project 5'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project5Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add_home_work_outlined),
                  title: const Text('Project 6'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project6Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add_home_rounded),
                  title: const Text('Project 7'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project7Page(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add_home_outlined),
                  title: const Text('Project 8'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Project8Page(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
