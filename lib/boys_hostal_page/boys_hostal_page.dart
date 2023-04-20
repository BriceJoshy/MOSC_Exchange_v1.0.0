import 'package:flutter/material.dart';
import 'package:hospital_app/app_theme/theme.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_1_first_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_1_second_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_2.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_2_first_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_2_second_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/intern_hostal.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/mens_hostal_med_college.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

class boys_hostal_page extends StatefulWidget {
  const boys_hostal_page({super.key});

  @override
  State<boys_hostal_page> createState() => _boys_hostal_pageState();
}

class _boys_hostal_pageState extends State<boys_hostal_page> {
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
          'BOYS HOSTEL M C',
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
                  title: 'Hostel-I First Floor',
                  color: Color2,
                  pagename: hostal_1_first_floor()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-I Second Floor',
                  color: Color3,
                  pagename: hostal_1_second_floor()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Interns Hostal',
                  color: Color4,
                  pagename: intern_hostal()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-II First FLoor',
                  color: Color2,
                  pagename: hostal_2_first_floor()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-II Second Floor',
                  color: Color3,
                  pagename: hostal_2_second_floor()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Hostel-II', color: Color4, pagename: hostal_2())
            ],
          ),
        ],
      ),
    );
  }
}
