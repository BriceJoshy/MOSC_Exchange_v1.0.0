import 'package:flutter/material.dart';

import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/aircondition.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/audio_visual.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/biomedical.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/central_store.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/electrical_section.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/pump%20house.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/repair_maintenance_plumping.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../app_theme/theme.dart';

import 'hostal_req_callpages/maintainance.dart';
import 'hostal_req_callpages/table_booking.dart';

class hospital_maintenance extends StatefulWidget {
  const hospital_maintenance({super.key});

  @override
  State<hospital_maintenance> createState() => _hospital_maintenanceState();
}

class _hospital_maintenanceState extends State<hospital_maintenance> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
          'HOSPITAL MAINTENANCE',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: "Kanit",
              fontSize: width * .058,
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
                  title: 'AirCondition',
                  color: Color2,
                  pagename: aircondition()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Audio Visual',
                  color: Color3,
                  pagename: audio_visual()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Electrical Section',
                  color: Color4,
                  pagename: electrical_section()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Pump House', color: Color2, pagename: pump_house()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Plumbing',
                  color: Color3,
                  pagename: repair_maintenance_plumping()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Maintenance',
                  color: Color4,
                  pagename: maintainance()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Table Booking',
                  color: Color2,
                  pagename: table_booking()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'BioMedical', color: Color3, pagename: biomedical()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Central Store',
                  color: Color4,
                  pagename: central_store()),
            ],
          ),
        ],
      ),
    );
  }
}
