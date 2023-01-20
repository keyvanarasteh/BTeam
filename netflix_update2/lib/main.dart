import 'package:flutter/material.dart';
import 'package:netflix/Pages/LoginScreen/Login_Mobile.dart';
import 'package:netflix/Pages/LoginScreen/screen_login.dart';

import 'Pages/MainPage/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const screen(),
    );
  }
}
