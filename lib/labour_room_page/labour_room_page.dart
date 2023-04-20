import 'package:flutter/material.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/duty_room.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/first_stage.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/labour_room_waiting_area.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/second_stage.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../app_theme/theme.dart';

class labour_room_page extends StatefulWidget {
  const labour_room_page({super.key});

  @override
  State<labour_room_page> createState() => _labour_room_pageState();
}

class _labour_room_pageState extends State<labour_room_page> {
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
          'LABOUR ROOM',
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
                  title: 'Duty Room', color: Color2, pagename: duty_room()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Labour Room Waiting Area',
                  color: Color3,
                  pagename: labour_room_wating_area()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Second Stage Labour Room',
                  color: Color4,
                  pagename: second_stage()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'First Stage Labour Room',
                  color: Color2,
                  pagename: first_stage()),
            ],
          ),
        ],
      ),
    );
  }
}
