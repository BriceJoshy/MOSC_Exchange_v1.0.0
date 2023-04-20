import 'package:flutter/material.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/bicu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/ccicu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/ccu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/cvts_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/gastro_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/megnu1_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/megnu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/megnu_ward.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/nacu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/nacu_reception.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/neuro_central.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/neuro_west.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/ortho_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/ot_recovery.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/picu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/sicu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/waiting_room(nacu).dart';
import 'package:hospital_app/app_theme/theme.dart';
import 'package:hospital_app/first_page.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import 'icu_call_pages/obu_icu.dart';

class icu extends StatefulWidget {
  const icu({super.key});

  @override
  State<icu> createState() => _icuState();
}

class _icuState extends State<icu> {
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
          'ICU',
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
              my_list_tile(title: 'CCU', color: Color2, pagename: ccu_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'CVTS', color: Color3, pagename: cvts_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'MEGNU 1', color: Color4, pagename: megnu1_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'MEGNU', color: Color2, pagename: megnu_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'ORTHO ICU', color: Color3, pagename: ortho_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'NACU', color: Color4, pagename: nacu_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'MEGNU Ward', color: Color2, pagename: megnu_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'SICU', color: Color3, pagename: sicu_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'CCICU', color: Color4, pagename: ccicu_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'BICU', color: Color2, pagename: bicu_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'GASTRO', color: Color3, pagename: gastro_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'PICU', color: Color4, pagename: picu_icu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'OT Recovery', color: Color2, pagename: ot_recovery()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Neuro West', color: Color3, pagename: neuro_west()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Neuro Central',
                  color: Color4,
                  pagename: neuro_central()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Waiting Room(NACU)',
                  color: Color2,
                  pagename: waiting_room_nacu()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'NACU Reception',
                  color: Color3,
                  pagename: nacu_reception()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'OBU ICU', color: Color4, pagename: obu_icu()),
            ],
          ),
        ],
      ),
    );
  }
}
