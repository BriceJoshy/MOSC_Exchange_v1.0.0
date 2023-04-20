import 'package:flutter/material.dart';
import 'package:hospital_app/operation_theatre/ot_pages/eye_ot.dart';
import 'package:hospital_app/operation_theatre/ot_pages/neuro_ot.dart';
import 'package:hospital_app/operation_theatre/ot_pages/recovery_ot.dart';
import 'package:hospital_app/operation_theatre/ot_pages/trauma_ot.dart';

import '../app_theme/theme.dart';
import '../widgets/my_list_tile.dart';
import 'ot_pages/cvts_ot.dart';
import 'ot_pages/doctors_area.dart';

class ot_page extends StatefulWidget {
  const ot_page({super.key});

  @override
  State<ot_page> createState() => _ot_pageState();
}

class _ot_pageState extends State<ot_page> {
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
          'OPERATION THEATRE',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: "Kanit",
              fontSize: 24,
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
                  title: 'Doctors Area',
                  color: Color2,
                  pagename: doctors_area()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Recovery OT', color: Color3, pagename: recovery_ot()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'Eye OT', color: Color4, pagename: eye_ot()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Trauma OT', color: Color2, pagename: trauma_ot()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Neuro OT', color: Color3, pagename: neuro_ot()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'CVTS OT', color: Color4, pagename: cvts_ot()),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
