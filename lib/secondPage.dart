import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_grid_button/flutter_grid_button.dart';
import 'package:hospital_app/a_ward.dart';
import 'package:hospital_app/c_ward.dart';
import 'package:hospital_app/f_g_ward.dart';
import 'package:hospital_app/h_ward.dart';
import 'package:hospital_app/i2_ward.dart';
import 'package:hospital_app/j2_ward.dart';


class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MULTICONTACTS'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(244, 107, 5, 181),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/white_waves.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 600,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const a_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('A Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const c_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('CD Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const f_g_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('F & G Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const h_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('H Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const i2_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                       child: Text('I2 Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const j2_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('J2 Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const a_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('?? Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const a_ward()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(252, 152, 57, 255),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('?? Ward',style: TextStyle(color: Colors.white, fontSize: 18),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
