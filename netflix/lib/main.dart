import 'package:flutter/material.dart';
import 'package:netflix/desktop.dart';
import 'package:netflix/large.dart';
import 'package:netflix/screen.dart';
import 'package:netflix/tablet.dart';

import 'mobile.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const screen(),
    );
  }
}
