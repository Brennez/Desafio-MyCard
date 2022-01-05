// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mycard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Mycard extends StatefulWidget {
  const Mycard({Key? key}) : super(key: key);

  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("assets/images/doguinho.jpg"),
          ),
          Text(
            "Little Dog",
            style:
                GoogleFonts.pacifico(fontSize: 40, color: Colors.teal.shade100),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600, color: Colors.teal.shade200),
          ),
          SizedBox(
            height: 20,
            width: MediaQuery.of(context).size.width - 300,
            child: Divider(
              color: Colors.white,
            ),
          ),
          contentCard(Icons.phone, "+55 86 40028922"),
          contentCard(Icons.mail, "Dog@gmail.com")
        ],
      )),
    );
  }
}

Widget contentCard(IconData icon, String text) {
  return Card(
    margin: EdgeInsets.only(top: 20, left: 30, right: 30),
    child: Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              color: Colors.teal.shade400,
              size: 20,
            ),
          ),
          Text(
            text,
            style: GoogleFonts.pacifico(
                fontWeight: FontWeight.w300,
                fontSize: 20,
                color: Colors.teal.shade400),
          )
        ],
      ),
    ),
  );
}
