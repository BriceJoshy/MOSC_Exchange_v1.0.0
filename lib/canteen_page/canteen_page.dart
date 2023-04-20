import 'package:flutter/material.dart';
import 'package:hospital_app/canteen_page/cash_counter.dart';
import 'package:hospital_app/first_page.dart';
import 'package:hospital_app/widgets/my_list_tile.dart';

import '../app_theme/theme.dart';

class canteen_page extends StatefulWidget {
  const canteen_page({super.key});

  @override
  State<canteen_page> createState() => _canteen_pageState();
}

class _canteen_pageState extends State<canteen_page> {
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
          'CANTEEN',
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
                  title: 'Cash Counter',
                  color: Color2,
                  pagename: cash_counter()),
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
