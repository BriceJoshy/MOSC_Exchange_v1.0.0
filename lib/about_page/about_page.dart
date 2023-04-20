import 'package:flutter/material.dart';
import 'package:hospital_app/feedback_page/feedback.dart';
import 'package:hospital_app/updates/updates.dart';
import 'package:url_launcher/url_launcher.dart';

import '../updates/test.dart';

class about_page extends StatefulWidget {
  const about_page({super.key});

  @override
  State<about_page> createState() => _about_pageState();
}

class _about_pageState extends State<about_page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 1,
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
          'About',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: "Kanit",
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide())),
            child: ExpansionTile(
              title: Text(
                'About This App',
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text('2017 Interns'),
              childrenPadding: EdgeInsets.all(10),
              children: [
                Text(
                  'This app is an initiative taken by the 2017 interns to facilitate easy communication and accessibility in MOSC Medical College hospital, Kolenchery',
                  style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide())),
            child: ExpansionTile(
              title: Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Last updated March 17,2023'),
              childrenPadding: EdgeInsets.all(10),
              children: [
                Text(
                  'This app does not process any sensitive personal infomation or recieve any infomation from third parties',
                  style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'If you have questions or comments about this, you may email me clicking the email below ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const feedback()));
                    },
                    child: Text('diablosnachos99@gmail.com'))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide())),
            child: ExpansionTile(
              title: Text(
                'Version',
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text('1.0.0'),
              childrenPadding: EdgeInsets.all(10),
              children: [
                SizedBox(
                  width: width * .7,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      _launchURL();
                    },
                    icon: Icon(Icons.upload_outlined),
                    label: Text(
                      "Check for updates",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Kanit",
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: width * .7,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20)),
                //       backgroundColor: Colors.black,
                //       textStyle: TextStyle(fontSize: 20),
                //     ),
                //     onPressed: () {
                //       _launchURL();
                //     },
                //     child: Text(
                //       "Drive Link",
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontFamily: "Kanit",
                //         fontSize: 15,
                //       ),
                //     ),
                //   ),
                // ),
                Text(
                  'Developed and maintained by DiablosNachos99',
                  style: TextStyle(
                    color: Color.fromARGB(255, 43, 45, 66),
                    fontFamily: "Kanit",
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url =
      'https://drive.google.com/drive/folders/1uJ4iusf6MgfLtGV6CIqLNd93Lhnbs1eV?usp=share_link';
  
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri,)) {
    await launchUrl(uri,mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
