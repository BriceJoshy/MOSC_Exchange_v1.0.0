import 'package:flutter/material.dart';
import 'package:hospital_app/app_theme/theme.dart';
import 'package:hospital_app/wards_pages/AB-T3/j3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/k3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/m1_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/m2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/m3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/n1_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/n3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/o_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/p1_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/p2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/p3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/r3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/r4_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/r_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/s1_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/s2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/s3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/t1_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/t2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/t3_ward.dart';
import 'package:hospital_app/wards_pages/trauma_ward/oncology_ward.dart';
import 'package:hospital_app/wards_pages/trauma_ward/q_general_ward_1.dart';
import 'package:hospital_app/wards_pages/trauma_ward/q_general_ward_2.dart';
import 'package:hospital_app/wards_pages/trauma_ward/q_private.dart';
import 'package:hospital_app/wards_pages/trauma_ward/u_ward.dart';
import 'package:hospital_app/wards_pages/trauma_ward/v1_ward.dart';
import 'package:hospital_app/wards_pages/trauma_ward/v2_ward.dart';
import 'package:hospital_app/wards_pages/trauma_ward/v4_ward.dart';
import 'package:hospital_app/wards_pages/trauma_ward/v5_ward.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import 'AB-T3/a_ward.dart';
import 'AB-T3/b_ward.dart';
import 'AB-T3/cd_ward.dart';
import 'AB-T3/f_g_ward.dart';
import 'AB-T3/h_ward.dart';
import 'AB-T3/i2_ward.dart';
import 'AB-T3/j2_ward.dart';
import 'AB-T3/k2_ward.dart';
import 'AB-T3/r2_ward.dart';
import 'trauma_ward/v3_ward.dart';

class wards extends StatefulWidget {
  const wards({super.key});

  @override
  State<wards> createState() => _wardsState();
}

class _wardsState extends State<wards> {
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
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          'WARDS',
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
            padding: EdgeInsets.all(20),
            children: [
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'A Ward', color: Color2, pagename: a_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'B Ward', color: Color3, pagename: b_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'CD Ward', color: Color4, pagename: cd_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'F & G Ward', color: Color2, pagename: f_g_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'H Ward', color: Color3, pagename: h_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'I2 Ward', color: Color4, pagename: i2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'J2 Ward', color: Color2, pagename: j2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'J3 Ward', color: Color3, pagename: j3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'K2 Ward', color: Color4, pagename: k2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'K3 Ward', color: Color2, pagename: k3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'M1 Ward', color: Color3, pagename: m1_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'M2 Ward', color: Color4, pagename: m2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'M3 Ward', color: Color2, pagename: m3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'N1 Ward', color: Color3, pagename: n1_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'N3 Ward', color: Color4, pagename: n3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'O Ward', color: Color2, pagename: o_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'P1 Ward', color: Color3, pagename: p1_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'P2 Ward', color: Color4, pagename: p2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'P3 Ward', color: Color2, pagename: p3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'R Ward', color: Color3, pagename: r_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'R2 Ward', color: Color4, pagename: r2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'R3 Ward', color: Color2, pagename: r3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'R4 Ward', color: Color3, pagename: r4_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'S1 Ward', color: Color4, pagename: s1_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'S2 Ward', color: Color2, pagename: s2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'S3 Ward', color: Color3, pagename: s3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'T1 Ward', color: Color4, pagename: t1_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'T2 Ward', color: Color2, pagename: t2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'T3 Ward', color: Color3, pagename: t3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'U Ward', color: Color4, pagename: u_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'V1 Ward', color: Color2, pagename: v1_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'V2 Ward', color: Color3, pagename: v2_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'V3 Ward', color: Color4, pagename: v3_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'V4 Ward', color: Color2, pagename: v4_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'V5 Ward', color: Color3, pagename: v5_ward()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Q General Ward 1',
                  color: Color4,
                  pagename: q_general_ward_1()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Q General Ward 2',
                  color: Color2,
                  pagename: q_general_ward_2()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Q Private', color: Color3, pagename: q_private()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Oncology', color: Color4, pagename: oncology_ward()),
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
