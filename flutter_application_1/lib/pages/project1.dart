import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class Project1Page extends StatelessWidget {
  const Project1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
          title: const Text(
            "Project 1",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black45,
      ),
      drawer: RusableDrawer(),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/hack10.jpg'),
              ),
              Text(
                'Elyas Ahmadi',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    letterSpacing: 2.5,
                    fontSize: 25,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 55,
                width: 250,
                child: Divider(
                  color: Colors.black45,
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+93 796 50 45 64',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'elyasahmadi@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
