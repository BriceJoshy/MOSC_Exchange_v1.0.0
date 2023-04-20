import 'package:flutter/material.dart';
import 'package:hospital_app/app_theme/theme.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/obg_casuality.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/echo_room.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/eeg_room.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/gastroscopy_room.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/mammogram.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/tmt_page.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../pro_page/pro_call_pages/ecg.dart';
import '../pro_page/pro_call_pages/xray.dart';
import '../repair_and_maintanace/repair_and _maintenance_call/biomedical.dart';
import 'investigation_call_pages/ct_brain.dart';
import 'investigation_call_pages/mrd.dart';
import 'investigation_call_pages/mri.dart';
import 'investigation_call_pages/mri_reception.dart';
import 'investigation_call_pages/tiffa_inves.dart';
import 'investigation_call_pages/ultrasound.dart';
import 'investigation_call_pages/us_reception.dart';

class investigation extends StatefulWidget {
  const investigation({super.key});

  @override
  State<investigation> createState() => _investigationState();
}

class _investigationState extends State<investigation> {
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
          'INVESTIGATION',
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
                  title: 'T.M.T Room', color: Color2, pagename: tmt_page()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'ECHO Room', color: Color3, pagename: echo_room()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'EEG Room', color: Color4, pagename: eeg_room()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Ultrasound', color: Color2, pagename: ultrasound()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Ultrasound (Reception)',
                  color: Color3,
                  pagename: ul_reception()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'MRI', color: Color4, pagename: mri()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'MRI (Reception)',
                  color: Color2,
                  pagename: mri_reception()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'MRD', color: Color3, pagename: mrd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'CT Brain', color: Color4, pagename: ct_brain()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Biomedical', color: Color2, pagename: biomedical()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'ECG', color: Color3, pagename: ecg()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'XRAY', color: Color4, pagename: xray()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Gastro Scopy Room',
                  color: Color2,
                  pagename: gastroscopy_room()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'TIFFA', color: Color3, pagename: tiffa_inves()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Mammogram',
                  color: Color4,
                  pagename: mammogram_inves()),
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
