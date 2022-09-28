import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_fbfirestore_crud/pages/home_page.dart';
import 'package:flutter_fbfirestore_crud/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Firestore',
      initialRoute: "/login",
      routes: {
        "/":(context) => HomePage(),
        "/login":(context) => Login(),
      },
    );
  }
}

