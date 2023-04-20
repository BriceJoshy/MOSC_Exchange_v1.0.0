import 'package:flutter/material.dart';

import 'hostal_req_callpages/electrical.dart';
import 'hostal_req_callpages/maintainance.dart';
import 'hostal_req_callpages/table_booking.dart';

class hostal_req_page extends StatefulWidget {
  const hostal_req_page({super.key});

  @override
  State<hostal_req_page> createState() => _hostal_req_pageState();
}

class _hostal_req_pageState extends State<hostal_req_page> {
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
          'HOSTAL REQ',
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
            color: Color.fromRGBO(222, 227, 235, 1),
          ),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 237, 242, 244)),
                child: ListTile(
                  minLeadingWidth: 10.0,
                  contentPadding: EdgeInsets.all(4),
                  leading: Container(
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                      color: Color.fromARGB(255, 245, 91, 37),
                    ),
                  ),
                  title: Text(
                    'Electrical',
                    style: TextStyle(
                        color: Color.fromARGB(255, 43, 45, 66),
                        fontFamily: "Kanit",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const electrical()));
                  },
                  shape: BeveledRectangleBorder(
                    side: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 237, 242, 244)),
                child: ListTile(
                  minLeadingWidth: 10.0,
                  contentPadding: EdgeInsets.all(4),
                  leading: Container(
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                      color: Color.fromARGB(255, 28, 192, 196),
                    ),
                  ),
                  title: Text(
                    'Maintainance',
                    style: TextStyle(
                        color: Color.fromARGB(255, 43, 45, 66),
                        fontFamily: "Kanit",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const maintainance()));
                  },
                  shape: BeveledRectangleBorder(
                    side: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 237, 242, 244)),
                child: ListTile(
                  minLeadingWidth: 10.0,
                  contentPadding: EdgeInsets.all(4),
                  leading: Container(
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                      color: Color.fromARGB(255, 48, 103, 222),
                    ),
                  ),
                  title: Text(
                    'Table Booking',
                    style: TextStyle(
                        color: Color.fromARGB(255, 43, 45, 66),
                        fontFamily: "Kanit",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const table_booking()));
                  },
                  shape: BeveledRectangleBorder(
                    side: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
