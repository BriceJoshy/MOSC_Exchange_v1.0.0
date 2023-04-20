import 'package:flutter/material.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_a.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_a_old.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_b.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_call.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_faculty.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_g.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_neuro.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_paed.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../app_theme/theme.dart';

class pharmacy_page extends StatefulWidget {
  const pharmacy_page({super.key});

  @override
  State<pharmacy_page> createState() => _pharmacy_pageState();
}

class _pharmacy_pageState extends State<pharmacy_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/left.png",
              height: 35,
              width: 35,
            )),
        iconTheme: IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          'PHARMACY',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: "Kanit",
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Color5
          ),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy', color: Color2, pagename: pharmacy_call()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy A Old',
                  color: Color3,
                  pagename: pharmacy_a_old()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy B', color: Color4, pagename: pharmacy_b()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy PAED',
                  color: Color2,
                  pagename: pharmacy_paed()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy A', color: Color3, pagename: pharmacy_a()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy Faculty',
                  color: Color4,
                  pagename: pharmacy_faculty()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy G', color: Color2, pagename: pharmacy_g()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pharmacy Neuro',
                  color: Color3,
                  pagename: pharmacy_neuro()),
            ],
          ),
        ],
      ),
    );
  }
}
