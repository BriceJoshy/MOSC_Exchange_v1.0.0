import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hospital_app/main.dart';

class a_ward extends StatefulWidget {
  const a_ward({super.key});

  @override
  State<a_ward> createState() => _a_wardState();
}

class _a_wardState extends State<a_ward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A WARD'),
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
            child: Column(
              children: [
                const Icon(
                  Icons.contact_phone_rounded,
                  size: 200,
                  color: Color.fromARGB(255, 74, 38, 135),
                ),
                Container(
                  color: const Color.fromARGB(255, 87, 0, 148),
                  child: Center(
                    child: Row(
                      children: [
                        const Text(
                          '   Ph no: +91(484)2885333     ',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.start,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 150,
                              child: ElevatedButton.icon(
                                label: const Text('Call'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 180, 29, 206)),
                                icon: const Icon(Icons.call),
                                onPressed: () async {
                                  final Uri url = Uri(
                                    scheme: 'tel',
                                    path: "+91(484)2885333",
                                  );
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  }
                                  else{
                                    print('Cannot launch this url');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
