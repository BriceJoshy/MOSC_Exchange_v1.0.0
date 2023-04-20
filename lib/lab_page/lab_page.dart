import 'package:flutter/material.dart';
import 'package:hospital_app/first_page.dart';
import 'package:hospital_app/lab_page/lab_call_pages/biochem.dart';
import 'package:hospital_app/lab_page/lab_call_pages/blood_bank_lab.dart';
import 'package:hospital_app/lab_page/lab_call_pages/casuality_lab.dart';
import 'package:hospital_app/lab_page/lab_call_pages/collection.dart';
import 'package:hospital_app/lab_page/lab_call_pages/haemato.dart';
import 'package:hospital_app/lab_page/lab_call_pages/histopatholagy_lab.dart';
import 'package:hospital_app/lab_page/lab_call_pages/ip_collection_lab.dart';
import 'package:hospital_app/lab_page/lab_call_pages/micro_lab.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../app_theme/theme.dart';

class lab_page extends StatefulWidget {
  const lab_page({super.key});

  @override
  State<lab_page> createState() => _lab_pageState();
}

class _lab_pageState extends State<lab_page> {
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
          'LAB',
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
                  title: 'Biochemistry',
                  color: Color2,
                  pagename: biochem_lab()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Microbiology', color: Color3, pagename: micro_lab()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Haematology', color: Color4, pagename: haemato_lab()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Collection',
                  color: Color2,
                  pagename: collection_lab()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Blood Bank',
                  color: Color3,
                  pagename: blood_bank_lab()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Casualty', color: Color4, pagename: casuality_lab()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Histopathology',
                  color: Color2,
                  pagename: histopothology_lab()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'IP Collection',
                  color: Color3,
                  pagename: ip_collection_lab()),
            ],
          ),
        ],
      ),
    );
  }
}
