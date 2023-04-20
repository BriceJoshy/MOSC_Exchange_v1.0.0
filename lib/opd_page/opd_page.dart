import 'package:flutter/material.dart';
import 'package:hospital_app/app_theme/theme.dart';
import 'package:hospital_app/first_page.dart';
import 'package:hospital_app/opd_page/opd_call_pages/cardio_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/community_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/dental.dart';
import 'package:hospital_app/opd_page/opd_call_pages/dermat.dart';
import 'package:hospital_app/opd_page/opd_call_pages/dialysis_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/ent.dart';
import 'package:hospital_app/opd_page/opd_call_pages/forensic_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/gastro_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/gynae_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/gynee.dart';
import 'package:hospital_app/opd_page/opd_call_pages/medicine.dart';
import 'package:hospital_app/opd_page/opd_call_pages/nephro.dart';
import 'package:hospital_app/opd_page/opd_call_pages/neuro.dart';
import 'package:hospital_app/opd_page/opd_call_pages/ophthal.dart';
import 'package:hospital_app/opd_page/opd_call_pages/ortho_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/peadiatrics_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/plastic_surgery_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/psychiatry.dart';
import 'package:hospital_app/opd_page/opd_call_pages/pulmonology_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/rntcp_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/surgery_faculty.dart';
import 'package:hospital_app/opd_page/opd_call_pages/surgery_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/uro.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import 'opd_call_pages/cvts_opd.dart';

class opd_page extends StatefulWidget {
  const opd_page({super.key});

  @override
  State<opd_page> createState() => _opd_pageState();
}

class _opd_pageState extends State<opd_page> {
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
          'OPD',
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
                  title: 'Psychiatry', color: Color2, pagename: psychiatry()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Gastroenterology',
                  color: Color3,
                  pagename: gastro_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Ophthalmology', color: Color4, pagename: ophthal()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Cardiology', color: Color2, pagename: cardio_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Dermatology', color: Color3, pagename: dermat()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'ENT', color: Color4, pagename: ent()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Medicine', color: Color2, pagename: medicine()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'Dental', color: Color3, pagename: dental()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Neuromedicine', color: Color2, pagename: neuro()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Nephrology', color: Color3, pagename: nephro()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'URO', color: Color4, pagename: uro()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Gynecology', color: Color2, pagename: gynae_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'RNCTP', color: Color3, pagename: rntcp_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(title: 'CVTS', color: Color4, pagename: cvts_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'COMMUNITY', color: Color2, pagename: community_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Forensic', color: Color3, pagename: forensic_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pulmonology',
                  color: Color4,
                  pagename: pulmonology_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Orthology', color: Color2, pagename: ortho_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Peadiatrics',
                  color: Color3,
                  pagename: peadiatrics_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Surgery', color: Color4, pagename: surgery_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Dialysis', color: Color2, pagename: dialysis_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Plastic Surgery',
                  color: Color3,
                  pagename: plastic_surgery_opd()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Surgery Faculty',
                  color: Color4,
                  pagename: surgery_faculty_opd()),
            ],
          ),
        ],
      ),
    );
  }
}
