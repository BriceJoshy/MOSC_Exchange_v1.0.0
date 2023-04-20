import 'package:flutter/material.dart';

import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1%20Security.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1_first_floor.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1_second_floor.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1_warden.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_2.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_2_annex.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_2_first_floor.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../app_theme/theme.dart';

class ladies_hostal_MC extends StatefulWidget {
  const ladies_hostal_MC({super.key});

  @override
  State<ladies_hostal_MC> createState() => _ladies_hostal_MCState();
}

class _ladies_hostal_MCState extends State<ladies_hostal_MC> {
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
          'LADIES HOSTEL M C',
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
                  title: 'Hostel-I Warden',
                  color: Color2,
                  pagename: hostal_1_security()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-I First Floor',
                  color: Color3,
                  pagename: ladies_hostal_1_firstfloor()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-I Second Floor',
                  color: Color4,
                  pagename: ladies_hostal_1_second_floor()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-I Security',
                  color: Color2,
                  pagename: hostal_1_security()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-II First Floor',
                  color: Color3,
                  pagename: ladies_hostal_2_first_floor()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-II Annex',
                  color: Color4,
                  pagename: ladies_hostal_annex()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'Hostel-II', color: Color2, pagename: ladies_hostal_2()),
            ],
          ),
        ],
      ),
    );
  }
}
