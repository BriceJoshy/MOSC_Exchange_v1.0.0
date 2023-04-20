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
import 'package:hospital_app/Icu_page/icu_call_pages/obu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/ortho_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/ot_recovery.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/picu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/sicu_icu.dart';
import 'package:hospital_app/Icu_page/icu_call_pages/waiting_room(nacu).dart';
import 'package:hospital_app/Icu_page/icu_page.dart';
import 'package:hospital_app/about_page/about_page.dart';
import 'package:hospital_app/billing_page/billing_call_list.dart';
import 'package:hospital_app/billing_page/billing_call_pages/J3_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/insurance_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/megnu_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/nacu_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/uro_cash_billing.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_1_first_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_1_second_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_2.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_2_first_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/hostal_2_second_floor.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_call_page/intern_hostal.dart';
import 'package:hospital_app/boys_hostal_page/boys_hostal_page.dart';
import 'package:hospital_app/canteen_page/canteen_page.dart';
import 'package:hospital_app/canteen_page/cash_counter.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_green.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_nursing_station.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_old_red.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/casualty_yellow.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/faculty_casuality.dart';
import 'package:hospital_app/casuality_page/casuality_call_pages/obg_casuality.dart';
import 'package:hospital_app/feedback_page/feedback.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/eeg_room.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/gastroscopy_room.dart';
import 'package:hospital_app/investigation_page/investigation_call_pages/tmt_page.dart';
import 'package:hospital_app/lab_page/lab_call_pages/blood_bank_lab.dart';
import 'package:hospital_app/lab_page/lab_call_pages/casuality_lab.dart';
import 'package:hospital_app/lab_page/lab_call_pages/histopatholagy_lab.dart';
import 'package:hospital_app/lab_page/lab_call_pages/ip_collection_lab.dart';
import 'package:hospital_app/opd_page/opd_call_pages/community_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/cvts_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/dialysis_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/forensic_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/ortho_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/peadiatrics_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/plastic_surgery_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/pulmonology_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/surgery_faculty.dart';
import 'package:hospital_app/opd_page/opd_call_pages/surgery_opd.dart';
import 'package:hospital_app/operation_theatre/ot_page.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/central_store.dart';
import 'package:hospital_app/wards_pages/trauma_ward/q_general_ward_1.dart';
import 'package:hospital_app/wards_pages/trauma_ward/q_general_ward_2.dart';
import 'package:hospital_app/wards_pages/trauma_ward/q_private.dart';
import 'package:hospital_app/widgets/grid_container.dart';

import 'package:hospital_app/investigation_page/investigation_call_pages/invertigation_call.dart';
import 'package:hospital_app/lab_page/lab_call_pages/biochem.dart';
import 'package:hospital_app/lab_page/lab_call_pages/collection.dart';
import 'package:hospital_app/lab_page/lab_call_pages/haemato.dart';
import 'package:hospital_app/lab_page/lab_call_pages/micro_lab.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/duty_room.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/first_stage.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/labour_room_waiting_area.dart';
import 'package:hospital_app/labour_room_page/labour_room_call_pages/second_stage.dart';
import 'package:hospital_app/labour_room_page/labour_room_page.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_MC.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1%20Security.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1_first_floor.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1_second_floor.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_1_warden.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_2.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_2_annex.dart';
import 'package:hospital_app/ladies_hostal_page/ladies_hostal_callpages/hostal_2_first_floor.dart';
import 'package:hospital_app/opd_page/opd_call_pages/cardio_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/dental.dart';
import 'package:hospital_app/opd_page/opd_call_pages/dermat.dart';
import 'package:hospital_app/opd_page/opd_call_pages/ent.dart';
import 'package:hospital_app/opd_page/opd_call_pages/gastro_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/gynae_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/medicine.dart';
import 'package:hospital_app/opd_page/opd_call_pages/nephro.dart';
import 'package:hospital_app/opd_page/opd_call_pages/neuro.dart';
import 'package:hospital_app/opd_page/opd_call_pages/ophthal.dart';
import 'package:hospital_app/opd_page/opd_call_pages/psychiatry.dart';
import 'package:hospital_app/opd_page/opd_call_pages/rntcp_opd.dart';
import 'package:hospital_app/opd_page/opd_call_pages/uro.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_a.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_a_old.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_b.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_call.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_faculty.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_g.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_neuro.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_call%20pages/pharmacy_paed.dart';
import 'package:hospital_app/pharmacy_page/pharmacy_page.dart';
import 'package:hospital_app/casuality_page/casuality.dart';
import 'package:hospital_app/lab_page/lab_page.dart';
import 'package:hospital_app/opd_page/opd_page.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/biomedical.dart';
import 'package:hospital_app/pro_page/pro_call_pages/ecg.dart';
import 'package:hospital_app/pro_page/pro_call_pages/pro_callpage.dart';
import 'package:hospital_app/pro_page/pro_call_pages/pro_er.dart';
import 'package:hospital_app/pro_page/pro_call_pages/security_office.dart';
import 'package:hospital_app/pro_page/pro_call_pages/xray.dart';
import 'package:hospital_app/pro_page/pro_page.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/aircondition.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/audio_visual.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/electrical_section.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/pump%20house.dart';
import 'package:hospital_app/repair_and_maintanace/repair_and%20_maintenance_call/repair_maintenance_plumping.dart';
import 'package:hospital_app/repair_and_maintanace/hospital_maintanance.dart';
import 'package:hospital_app/wards_pages/AB-T3/f_g_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/h_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/i2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/j2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/j3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/k2_ward.dart';
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
import 'package:hospital_app/wards_pages/AB-T3/r4_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/r_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/s2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/s3_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/t1_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/t2_ward.dart';
import 'package:hospital_app/wards_pages/AB-T3/t3_ward.dart';
import 'package:hospital_app/wards_pages/wards.dart';

import 'app_theme/theme.dart';
import 'investigation_page/investigation.dart';
import 'investigation_page/investigation_call_pages/ct_brain.dart';
import 'investigation_page/investigation_call_pages/echo_room.dart';
import 'investigation_page/investigation_call_pages/mrd.dart';
import 'investigation_page/investigation_call_pages/mri.dart';
import 'investigation_page/investigation_call_pages/mri_reception.dart';
import 'investigation_page/investigation_call_pages/ultrasound.dart';
import 'investigation_page/investigation_call_pages/us_reception.dart';
import 'mosc_connect_calls/mosc_connect_calls.dart';
import 'repair_and_maintanace/hostal_req_callpages/electrical.dart';
import 'repair_and_maintanace/hostal_req_callpages/maintainance.dart';
import 'repair_and_maintanace/hostal_req_callpages/table_booking.dart';
import 'wards_pages/AB-T3/a_ward.dart';
import 'wards_pages/AB-T3/b_ward.dart';
import 'wards_pages/AB-T3/cd_ward.dart';
import 'wards_pages/AB-T3/r2_ward.dart';
import 'wards_pages/AB-T3/r3_ward.dart';
import 'wards_pages/AB-T3/s1_ward.dart';
import 'wards_pages/trauma_ward/u_ward.dart';
import 'wards_pages/trauma_ward/v1_ward.dart';
import 'wards_pages/trauma_ward/v2_ward.dart';
import 'wards_pages/trauma_ward/v4_ward.dart';

// Color5,
// Color5,
// Color5,
// Color5,
// Color5,

class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: Icon(Icons.search)),
          iconTheme: IconThemeData(),
          elevation: 0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          title: Text(
            'MOSC EXCHANGE',
            style: TextStyle(
                fontFamily: "Kanit", fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                value();
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              itemBuilder: (context) => [
                // PopupMenuItem(
                //   value: () {
                //     Dialogs.showSnackbar(context, 'Coming Soon!!');
                //   },
                //   child: Row(
                //     children: [
                //       Image.asset("assets/images/setting.gif",
                //           color: Color.fromARGB(255, 0, 0, 0), height: 22),
                //       SizedBox(
                //         width: 15,
                //       ),
                //       Text(
                //         "Setting",
                //         style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                //       ),
                //     ],
                //   ),
                // ),
                PopupMenuItem(
                  value: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const about_page()));
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/images/about.gif",
                          color: Color.fromARGB(255, 0, 0, 0), height: 22),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "About",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const feedback()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/images/feedback.gif",
                        color: Color.fromARGB(255, 0, 0, 0),
                        height: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Feedback",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.grey.shade200])),
            ),
            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              padding: EdgeInsets.all(10),
              children: [
                grid_container(
                    name: " Mosc Connect\n         Calls",
                    color: Color6,
                    image: Image.asset("assets/images/connect_calls.gif",
                        height: height * 0.06),
                    pagename: mosc_connect_calls()),
                grid_container(
                    name: "Wards",
                    color: Color7,
                    image: Image.asset("assets/images/wards2.gif",
                        height: height * 0.09),
                    pagename: wards()),
                grid_container(
                    name: "Casualty",
                    color: Color8,
                    image: Image.asset("assets/images/casualty.gif",
                        height: height * 0.08),
                    pagename: casuality()),
                grid_container(
                    name: "ICU",
                    color: Color9,
                    image: Image.asset("assets/images/icu.gif",
                        height: height * 0.09),
                    pagename: icu()),
                grid_container(
                    name: "OPD",
                    color: Color10,
                    image: Image.asset("assets/images/opd.gif",
                        height: height * 0.09),
                    pagename: opd_page()),
                grid_container(
                    name: "Lab",
                    color: Color6,
                    image: Image.asset("assets/images/lab.gif",
                        height: height * 0.08),
                    pagename: lab_page()),
                grid_container(
                    name: "Pharmacy",
                    color: Color7,
                    image: Image.asset("assets/images/pharmacy.gif",
                        height: height * 0.08),
                    pagename: pharmacy_page()),
                grid_container(
                    name: "OT",
                    color: Color8,
                    image: Image.asset("assets/images/ot.gif",
                        height: height * 0.08),
                    pagename: ot_page()),
                grid_container(
                    name: "PRO",
                    color: Color9,
                    image: Image.asset("assets/images/pro.gif",
                        height: height * 0.08),
                    pagename: pro_page()),
                grid_container(
                    name: "Billing",
                    color: Color10,
                    image: Image.asset("assets/images/billing.gif",
                        height: height * 0.08),
                    pagename: billing()),
                grid_container(
                    name: "Investigation",
                    color: Color6,
                    image: Image.asset("assets/images/investigation.gif",
                        height: height * 0.08),
                    pagename: investigation()),
                grid_container(
                    name: "Labour Room",
                    color: Color7,
                    image: Image.asset("assets/images/pregnant.gif",
                        height: height * 0.08),
                    pagename: labour_room_page()),
                grid_container(
                    name: "Boys Hostel\n        M C",
                    color: Color8,
                    image: Image.asset("assets/images/mens.gif",
                        height: height * 0.06),
                    pagename: boys_hostal_page()),
                grid_container(
                    name: "Ladies Hostel\n          M C",
                    color: Color9,
                    image: Image.asset("assets/images/ladies.gif",
                        height: height * 0.06),
                    pagename: ladies_hostal_MC()),
                grid_container(
                    name: "    Hospital\nMaintenance",
                    color: Color10,
                    image: Image.asset("assets/images/repair.gif",
                        height: height * 0.06),
                    pagename: hospital_maintenance())
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'A Ward',
    'B Ward',
    'CD Ward',
    'F & G WARD',
    'H WARD',
    'I2 WARD',
    'J2 WARD',
    'J3 WARD',
    'K2 WARD',
    'K3 WARD',
    'M1 WARD',
    'M2 WARD',
    'M3 WARD',
    'N1 WARD',
    'N3 WARD',
    'O WARD',
    'P1 WARD',
    'P2 WARD',
    'P3 WARD',
    'R WARD',
    'R2 WARD',
    'R3 WARD',
    'R4 WARD',
    'S1 WARD',
    'S2 WARD',
    'S3 WARD',
    'T1 WARD',
    'T2 WARD',
    'T3 WARD',
    'U WARD',
    'V1 WARD',
    'V2 WARD',
    'V4 WARD',
    'V5 WARD',
    'Q GENERAL WARD 1',
    'Q GENERAL WARD 2',
    'Q PRIVATE',
    'CASUALITY GREEN',
    'CASUALITY YELLOW',
    'CASUALITY OLD RED',
    'CASUALITY NURSING STATION',
    'FACULTY CASUALTY',
    'OBG CASUALTY',
    'CCU',
    'CVTS',
    'MEGNU1',
    'MEGNU',
    'ORTHO ICU',
    'NACU',
    'MEGNU WARD',
    'SICU',
    'CCICU',
    'BICU',
    'GASTRO ICU',
    'PICU',
    'OT RECOVERY',
    'NEURO WEST',
    'NEURO CENTRAL',
    'WAITING ROOM (NACU)',
    'NACU RECEPTION',
    'OBU ICU',
    'PSYCHIATRY',
    'GASTROENTEROLOGY OPD',
    'OPHTHALMOLOGY',
    'CARDIOLOGY',
    'DERMATOLOGY',
    'ENT',
    'MEDICINE',
    'DENTAL',
    'NEUROMEDICINE',
    'NEPHROLOGY',
    'URO',
    'GYNECOLOGY OPD',
    'RNCTP',
    'CVTS OPD',
    'COMMUNITY',
    'FORENSIC',
    'PULMONOLOGY',
    'ORTHOLOGY',
    'PEADIATRICS',
    'SURGERY',
    'DIALYSIS',
    'PLASTIC SURGERY',
    'SURGERY FACULTY',
    'BIO CHEM LAB',
    'MICROBIOLOGY LAB',
    'HAEMATOLOGY LAB',
    'COLLECTION LAB',
    'BLOOD BANK',
    'CASUALTY LAB',
    'HISTOPATHOLOGY',
    'IP COLLECTION',
    'PHARMACY',
    'PHARMACY A OLD',
    'PHARMACY B',
    'PHARMACY PAED',
    'PHARMACY A',
    'PHARMACY FACULTY',
    'PHARMACY G',
    'PHARMACY NEURO',
    'CANTEEN CASH COUNTER',
    'PRO',
    'PRO ER',
    'SECURITY OFFICE',
    'MEGNU BILLING',
    'J3 BILLING',
    'INSURANCE BILLING',
    'URO CASH BILLING',
    'NACU BILLING',
    'T.M.T ROOM',
    'ECHO ROOM',
    'EEG ROOM',
    'ULTRASOUND',
    'ULTRASOUND RECEPTION',
    'MRI',
    'MRI RECEPTION',
    'MRD',
    'CT BRAIN',
    'BIOMEDICAL',
    'ECG',
    'XRAY',
    'GASTRO SCOPY ROOM',
    'LABOUR DUTY ROOM',
    'LABOUR ROOM WAITING AREA',
    'SECOND STAGE LABOUR ROOM',
    'FIRST STAGE LABOUR ROOM',
    'MENS HOSTAL-I FIRST FLOOR',
    'MENS HOSTAL-I SECOND FLOOR',
    'MENS INTERNS HOSTAL',
    'MENS HOSTAL-II FIRST FLOOR',
    'MENS HOSTAL-II SECOND FLOOR',
    'MENS HOSTAL-II',
    'LADIES HOSTAL WARDEN',
    'LADEIS HOSTAL-I FIRST FLOOR',
    'LADIES HOSTAL-I SECOND FLOOR',
    'LADIES HOSTAL-I SECURITY',
    'LADIES HOSTAL-II FIRST FLOOR',
    'LADIES HOSTAL-II ANNEX',
    'LADIES HOSTAL-II',
    'AIRCONDITION(R&M)',
    'AUDIOVISUAL(R&M)',
    'ELECTRIC SECTION(R&M)',
    'PUMP HOUSE(R&M)',
    'PLUMPING(R&M)',
    'MAINTANANCE',
    'TABLE BOOKING',
    'BIOMEDICAL MAINTANENCE',
    'CENTRAL STORE',
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];

  @override
  Widget buildSuggestions(BuildContext context) {
    var mapping = {
      'A Ward': a_ward(),
      'B Ward': b_ward(),
      'CD Ward': cd_ward(),
      'F & G WARD': f_g_ward(),
      'H WARD': h_ward(),
      'I2 WARD': i2_ward(),
      'J2 WARD': j2_ward(),
      'J3 WARD': j3_ward(),
      'K2 WARD': k2_ward(),
      'K3 WARD': k3_ward(),
      'M1 WARD': m1_ward(),
      'M2 WARD': m2_ward(),
      'M3 WARD': m3_ward(),
      'N1 WARD': n1_ward(),
      'N3 WARD': n3_ward(),
      'O WARD': o_ward(),
      'P1 WARD': p1_ward(),
      'P2 WARD': p2_ward(),
      'P3 WARD': p3_ward(),
      'R WARD': r_ward(),
      'R2 WARD': r2_ward(),
      'R3 WARD': r3_ward(),
      'R4 WARD': r4_ward(),
      'S1 WARD': s1_ward(),
      'S2 WARD': s2_ward(),
      'S3 WARD': s3_ward(),
      'T1 WARD': t1_ward(),
      'T2 WARD': t2_ward(),
      'T3 WARD': t3_ward(),
      'U WARD': u_ward(),
      'V1 WARD': v1_ward(),
      'V2 WARD': v2_ward(),
      'V4 WARD': v4_ward(),
      'V5 WARD': r_ward(),
      'Q GENERAL WARD 1': q_general_ward_1(),
      'Q GENERAL WARD 2': q_general_ward_2(),
      'Q PRIVATE': q_private(),
      'CASUALITY GREEN': casualty_green(),
      'CASUALITY YELLOW': casualty_yellow(),
      'CASUALITY OLD RED': casualty_old_red(),
      'CASUALITY NURSING STATION': casualty_nursing_station(),
      'FACULTY CASUALTY': faculty_casuality(),
      'OBG CASUALTY': obg_casuality(),
      'CCU': ccu_icu(),
      'CVTS': cvts_icu(),
      'MEGNU1': megnu1_icu(),
      'MEGNU': megnu_icu(),
      'ORTHO ICU': ortho_icu(),
      'NACU': nacu_icu(),
      'MEGNU WARD': megnu_ward(),
      'SICU': sicu_icu(),
      'CCICU': ccicu_icu(),
      'BICU': bicu_icu(),
      'GASTRO ICU': gastro_icu(),
      'PICU': picu_icu(),
      'OT RECOVERY': ot_recovery(),
      'NEURO WEST': neuro_west(),
      'NEURO CENTRAL': neuro_central(),
      'WAITING ROOM (NACU)': waiting_room_nacu(),
      'NACU RECEPTION': nacu_reception(),
      'OBU ICU': obu_icu(),
      'PSYCHIATRY': psychiatry(),
      'GASTROENTEROLOGY OPD': gastro_opd(),
      'OPHTHALMOLOGY': ophthal(),
      'CARDIOLOGY': cardio_opd(),
      'DERMATOLOGY': dermat(),
      'ENT': ent(),
      'MEDICINE': medicine(),
      'DENTAL': dental(),
      'NEUROMEDICINE': neuro(),
      'NEPHROLOGY': nephro(),
      'URO': uro(),
      'GYNECOLOGY OPD': gynae_opd(),
      'RNCTP': rntcp_opd(),
      'CVTS OPD': cvts_opd(),
      'COMMUNITY': community_opd(),
      'FORENSIC': forensic_opd(),
      'PULMONOLOGY': pulmonology_opd(),
      'ORTHOLOGY': ortho_opd(),
      'PEADIATRICS': peadiatrics_opd(),
      'SURGERY': surgery_opd(),
      'DIALYSIS': dialysis_opd(),
      'PLASTIC SURGERY': plastic_surgery_opd(),
      'SURGERY FACULTY': surgery_faculty_opd(),
      'BIO CHEM LAB': biochem_lab(),
      'MICROBIOLOGY LAB': micro_lab(),
      'HAEMATOLOGY LAB': haemato_lab(),
      'COLLECTION LAB': collection_lab(),
      'BLOOD BANK': blood_bank_lab(),
      'CASUALTY LAB': casuality_lab(),
      'HISTOPATHOLOGY': histopothology_lab(),
      'IP COLLECTION': ip_collection_lab(),
      'PHARMACY': pharmacy_call(),
      'PHARMACY A OLD': pharmacy_a_old(),
      'PHARMACY B': pharmacy_b(),
      'PHARMACY PAED': pharmacy_paed(),
      'PHARMACY A': pharmacy_a(),
      'PHARMACY FACULTY': pharmacy_faculty(),
      'PHARMACY G': pharmacy_g(),
      'PHARMACY NEURO': pharmacy_neuro(),
      'CANTEEN CASH COUNTER': cash_counter(),
      'PRO': pro_callpage(),
      'PRO ER': pro_er(),
      'SECURITY OFFICE': security_office(),
      'MEGNU BILLING': megnu_billing(),
      'J3 BILLING': j3_billing(),
      'INSURANCE BILLING': insurance_billing(),
      'URO CASH BILLING': uro_cash_billing(),
      'NACU BILLING': nacu_billing(),
      'T.M.T ROOM': tmt_page(),
      'ECHO ROOM': echo_room(),
      'EEG ROOM': eeg_room(),
      'ULTRASOUND': ultrasound(),
      'ULTRASOUND RECEPTION': ul_reception(),
      'MRI': mri(),
      'MRI RECEPTION': mri_reception(),
      'MRD': mrd(),
      'CT BRAIN': ct_brain(),
      'BIOMEDICAL': biomedical(),
      'ECG': ecg(),
      'XRAY': xray(),
      'GASTRO SCOPY ROOM': gastroscopy_room(),
      'LABOUR DUTY ROOM': duty_room(),
      'LABOUR ROOM WAITING AREA': labour_room_wating_area(),
      'SECOND STAGE LABOUR ROOM': second_stage(),
      'FIRST STAGE LABOUR ROOM': first_stage(),
      'MENS HOSTAL-I FIRST FLOOR': hostal_1_first_floor(),
      'MENS HOSTAL-I SECOND FLOOR': hostal_1_second_floor(),
      'MENS INTERNS HOSTAL': intern_hostal(),
      'MENS HOSTAL-II FIRST FLOOR': hostal_2_first_floor(),
      'MENS HOSTAL-II SECOND FLOOR': hostal_2_second_floor(),
      'MENS HOSTAL-II': hostal_2(),
      'LADIES HOSTAL-I WARDEN': hostal_1_warden(),
      'LADEIS HOSTAL-I FIRST FLOOR': ladies_hostal_1_firstfloor(),
      'LADIES HOSTAL-I SECOND FLOOR': ladies_hostal_1_second_floor(),
      'LADIES HOSTAL-I SECURITY': hostal_1_security(),
      'LADIES HOSTAL-II FIRST FLOOR': ladies_hostal_2_first_floor(),
      'LADIES HOSTAL-II ANNEX': ladies_hostal_annex(),
      'LADIES HOSTAL-II': ladies_hostal_2(),
      'AIRCONDITION(R&M)': aircondition(),
      'AUDIOVISUAL(R&M)': audio_visual(),
      'ELECTRIC SECTION(R&M)': electrical_section(),
      'PUMP HOUSE(R&M)': pump_house(),
      'PLUMPING(R&M)': repair_maintenance_plumping(),
      'MAINTANANCE': maintainance(),
      'TABLE BOOKING': table_booking(),
      'BIOMEDICAL MAINTANENCE': biomedical(),
      'CENTRAL STORE': central_store(),
    };
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            var query1 = suggestion;
            var result = mapping[query1];
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => result!));
            // if (mapping[suggestion] == "AB Ward") {
            //   print("object");
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => const c_ward()));
            // } else if (mapping[suggestion] == "CD Ward") {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => const h_ward()));
            // }
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );
}
