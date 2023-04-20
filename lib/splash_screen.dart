import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital_app/first_page.dart';
//import 'package:hospital_app/homePage.dart';

late Size mq;

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => first_page())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/mosc.png",
              height: 450,
              width: 450,
            ),
            CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
