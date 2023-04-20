import 'package:flutter/material.dart';
import 'package:hospital_app/app_theme/theme.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casuality_call.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_green.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_nursing_station.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_old_red.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_yellow.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/faculty_casuality.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/obg_casuality.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import 'casuality_call_pages/er_eray_casualty.dart';
import 'casuality_call_pages/er_lab_casualty.dart';

class casuality extends StatefulWidget {
  const casuality({super.key});

  @override
  State<casuality> createState() => _casualityState();
}

class _casualityState extends State<casuality> {
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
          'CASUALTY',
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
          Container(color: Color5),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Casualty Green',
                  color: Color2,
                  pagename: casualty_green()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Casualty Yellow',
                  color: Color3,
                  pagename: casualty_yellow()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Casualty Old Red',
                  color: Color4,
                  pagename: casualty_old_red()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Casualty Nursing Station',
                  color: Color2,
                  pagename: casualty_nursing_station()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Faculty',
                  color: Color3,
                  pagename: faculty_casuality()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'OBG', color: Color4, pagename: obg_casuality()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'ER Lab', color: Color2, pagename: er_lab_casualty()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'ER X-Ray',
                  color: Color3,
                  pagename: er_xray_casualty()),
            ],
          ),
        ],
      ),
    );
  }
}
