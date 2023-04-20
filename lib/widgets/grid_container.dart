import 'package:flutter/material.dart';

class grid_container extends StatelessWidget {
  final String name;
  final Color color;
  final Image image;
  final pagename;
  const grid_container(
      {super.key,
      required this.name,
      required this.color,
      required this.image,
      required this.pagename});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pagename));
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 1.0,
            spreadRadius: 0.09,
            offset: Offset(1, 2),
          )
        
        ], borderRadius: BorderRadius.circular(20), color: color),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              image,
              Text(
                name,
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: width * .045,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
