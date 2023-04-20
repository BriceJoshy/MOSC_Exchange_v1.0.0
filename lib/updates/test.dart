import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:hospital_app/updates/downloads/error_page.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'dart:isolate';
import 'dart:ui'; // for  communication between two isolates

class testing extends StatefulWidget {
  const testing({super.key});

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
  final ReceivePort _port = ReceivePort();
  // the result is type future
  late Future<ListResult> futureFiles;
  @override
  void initState() {
    super.initState();
    // loading the files using the firebase storage package
    // result future is saves in out state
    futureFiles = FirebaseStorage.instance.ref('/files').listAll();
  }

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
        backgroundColor: Color(0xffEFF1F3),
        title: Text(
          'Updates',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: "Kanit",
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<ListResult>(
        // future of the loaded fles go inside
        future: futureFiles,
        builder: (context, snapshot) {
          // if some data is loaded successfully then take data from firebase
          if (snapshot.hasData) {
            final files = snapshot.data!.items;

            // display these items in the list view
            return ListView.builder(
              itemCount: files.length,
              padding: EdgeInsets.only(top: 10),
              itemBuilder: (context, index) {
                final file = files[index];

                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.grey.shade100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 0.5,
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: CircleAvatar(child: Text(index.toString())),
                      title: Text(
                        file.name,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: "Kanit",
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () => downloadFile(file),
                          icon: const Icon(Icons.download)),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error Occurred'),
            );
          } else {
            return error_page();
          }
        },
      ),
    );
  }

  // referencing the file stored in firebase
  Future downloadFile(Reference ref) async {}
}


// if (list.isNotEmpty) {
//                 return ListView.builder(
//                   itemCount: list.length,
//                   padding: EdgeInsets.only(top: mq.height * .01),
//                   physics: const BouncingScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     // returning the chat user card
//                     return Chat_User_Card(user: list[index]);
//                   },
//                 );
//               }
//               else {
//                 return const Center(child: Text('No Connection Found',style: TextStyle(fontSize: 20),));
//               }