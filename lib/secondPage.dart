import 'package:flutter/material.dart';
import 'package:hospital_app/wards_pages/AB-T3/b_ward.dart';

import 'package:hospital_app/wards_pages/AB-T3/cd_ward.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 141, 153, 174),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 141, 153, 174),
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5), // Creates border
              color: Color.fromARGB(172, 239, 35, 60),
            ),
            labelStyle: TextStyle(fontFamily: "kanit"),
            tabs: [
              Tab(
                text: "Super Speciality",
              ),
              Tab(
                text: "Speciality",
              ),
            ],
          ),
          title: Text(
            'Our Departments',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Kanit",
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 237, 242, 244)),
            ),
            TabBarView(
              children: [
                Container(
                    child: ListView(
                  padding: EdgeInsets.all(20),
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
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(156, 192, 25, 1),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/cardiology.gif",
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        title: Text(
                          'Cardiology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/surgery.gif"),
                        title: Text(
                          'Cardiovascular And Thoracic Surgery',
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
                                  builder: (context) => const cd_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/critical_care.gif"),
                        title: Text(
                          'Critical Care',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/paediatrics.gif"),
                        title: Text(
                          'Development Paediatrics',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/gastro.gif"),
                        title: Text(
                          'Gastroenterology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/neonatology.gif"),
                        title: Text(
                          'Neonatology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/nephrology.gif"),
                        title: Text(
                          'Nephrology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/neuro_surgery.gif"),
                        title: Text(
                          'Neuro Surgery',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/neurology.gif"),
                        title: Text(
                          'Neurology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/paedia.gif"),
                        title: Text(
                          'Paediatric Surgery',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/plastic_surgery.png",
                          height: 60,
                          width: 60,
                        ),
                        title: Text(
                          'Plastic Surgery',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/urology.png",
                          height: 80,
                        ),
                        title: Text(
                          'Urology',
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
                                  builder: (context) =>
                                      const b_ward()));
                        },
                        shape: BeveledRectangleBorder(
                          side: BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                )),
                Container(
                    child: ListView(
                  padding: EdgeInsets.all(20),
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/syringe.gif"),
                        title: Text(
                          'Anesthesia',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/fans.gif"),
                        title: Text(
                          'Community Health Family',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/surgery.gif"),
                        title: Text(
                          'Dental and OMFS Departments',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/skin.gif"),
                        title: Text(
                          'Dermatology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/tablet.gif"),
                        title: Text(
                          'Emergency Medicine',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/ent.png"),
                        title: Text(
                          'ENT',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/drugs.gif"),
                        title: Text(
                          'General Medicine',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/gen_surgery.png"),
                        title: Text(
                          'General Surgery',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/pregnant.gif"),
                        title: Text(
                          'Obstetrics and Gynecology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/eye.gif"),
                        title: Text(
                          'Ophthalmology',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/bone.png"),
                        title: Text(
                          'Orthopaedics',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/neonatology.gif"),
                        title: Text(
                          'Pediatrics',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading:
                            Image.asset("assets/images/rehabilitation.png"),
                        title: Text(
                          'Physical Medicine and Rehabilitation Department',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/mental_health.gif"),
                        title: Text(
                          'Psychiatry',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/lungs.gif"),
                        title: Text(
                          'Pulmonary Medicine',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 237, 242, 244)),
                      child: ListTile(
                        leading: Image.asset("assets/images/scan.png"),
                        title: Text(
                          'Radiology and Imaging',
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
                                  builder: (context) =>
                                      const b_ward()));
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
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
