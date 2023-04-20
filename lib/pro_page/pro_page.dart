import 'package:flutter/material.dart';
import 'package:hospital_app/first_page.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/biomedical.dart';
import 'package:hospital_app/pro_page/pro_call_pages/ecg.dart';

import 'package:hospital_app/pro_page/pro_call_pages/pro_callpage.dart';
import 'package:hospital_app/pro_page/pro_call_pages/pro_er.dart';
import 'package:hospital_app/pro_page/pro_call_pages/security_office.dart';
import 'package:hospital_app/pro_page/pro_call_pages/xray.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../app_theme/theme.dart';

class pro_page extends StatefulWidget {
  const pro_page({super.key});

  @override
  State<pro_page> createState() => _pro_pageState();
}

class _pro_pageState extends State<pro_page> {
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
          'PRO',
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
                  title: 'PRO', color: Color2, pagename: pro_callpage()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'PRO ER', color: Color3, pagename: pro_er()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Security Office',
                  color: Color4,
                  pagename: security_office())
            ],
          ),
        ],
      ),
    );
  }
}
