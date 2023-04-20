import 'package:flutter/material.dart';

class error_page extends StatelessWidget {
  const error_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/connection_lost.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
