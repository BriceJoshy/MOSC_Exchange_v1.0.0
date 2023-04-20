import 'package:flutter/material.dart';
import 'package:hospital_app/first_page.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/welcome.png",
            color: Color.fromRGBO(0, 0, 0, 1),
            height: 250,
          ),
          SizedBox(
            height: 120,
          ),
          Center(
            child: ElevatedButton.icon(
              label: const Text(
                'Lets Go',
                style: TextStyle(
                    color: Color.fromARGB(255, 17, 17, 17),
                    fontFamily: "Kanit",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 112.0, vertical: 10.0),
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Color.fromRGBO(156, 192, 25, 1),
                shape: const StadiumBorder(),
              ),
              icon: Image.asset(
                "assets/images/letsgo.gif",
                height: 40,
                color: Color.fromARGB(255, 17, 17, 17),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return first_page();
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            label: const Text(
              'Feedback',
              style: TextStyle(
                  color: Color.fromARGB(255, 17, 17, 17),
                  fontFamily: "Kanit",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 107.0, vertical: 15.0),
              backgroundColor: Color.fromRGBO(156, 192, 25, 1),
              shape: const StadiumBorder(),
            ),
            icon: Image.asset(
              "assets/images/feedback.gif",
              height: 30,
              width: 30,
              color: Color.fromARGB(255, 17, 17, 17),
            ),
            onPressed: () async {
              String email = Uri.encodeComponent("diablosnachos99@gmail.com");
              String subject = Uri.encodeComponent("Subject");
              String body = Uri.encodeComponent("Hi!");

              Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
              if (await launchUrl(mail)) {
                //email app opened
              } else {
                //email app is not opened
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
