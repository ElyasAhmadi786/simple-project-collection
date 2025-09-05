import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main.dart';


const double bottomContainerHeight = 75;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);


class Project2Page extends StatelessWidget {
  const Project2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "BMI Calculator Project2",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF06062C),
      ),
      drawer: RusableDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      children: [
                        Icon(FontAwesomeIcons.mars , size: 68),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  ReusableCard({this.color , this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color ?? activeCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
