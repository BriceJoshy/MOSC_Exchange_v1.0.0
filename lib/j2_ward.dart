import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class j2_ward extends StatefulWidget {
  const j2_ward({super.key});

  @override
  State<j2_ward> createState() => _j2_wardState();
}

class _j2_wardState extends State<j2_ward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('J2 WARD'),
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
                          '   Ph no: +91(484)2885100     ',
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
                                    path: "+91(484)2885100",
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