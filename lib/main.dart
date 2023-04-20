import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'dart:ui';
//import 'package:flutter_grid_button/flutter_grid_button.dart';
import 'package:hospital_app/splash_screen.dart';
//import 'package:url_launcher/url_launcher.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:permission_handler/permission_handler.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  }); 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: firstPage());
  }
}

class firstPage extends StatelessWidget {
  firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
