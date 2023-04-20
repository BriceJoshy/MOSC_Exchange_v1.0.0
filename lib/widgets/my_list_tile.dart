import 'package:flutter/material.dart';

class my_list_tile extends StatelessWidget {
  final String title;
  final Color color;
  final pagename;
  const my_list_tile(
      {super.key, required this.title, required this.color, required this.pagename});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(255, 255, 255, 1)),
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
              color: color),
        ),
        title: Text(
          title,
          style: TextStyle(
              color: Color.fromARGB(255, 43, 45, 66),
              fontFamily: "Kanit",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pagename));
        },
        shape: BeveledRectangleBorder(
          side: BorderSide(width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
