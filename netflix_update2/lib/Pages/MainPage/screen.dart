import 'package:flutter/material.dart';
import 'package:netflix/Pages/MainPage/desktop.dart';
import 'package:netflix/Pages/MainPage/mobile.dart';
import 'package:netflix/Pages/MainPage/large.dart';
import 'package:netflix/Pages/MainPage/tablet.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  String ekranTanimla(double screen) {
    if (screen <= 576) {
      return "mobile";
    } else if (screen <= 768) {
      return "tablet";
    } else if (screen <= 992) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWith = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWith);

    Widget screenType() {
      if (device == "mobile") {
        return mobile();
      } else if (device == "tablet") {
        return tablet();
      } else if (device == "desktop") {
        return large();
      } else {
        return DesktopPage();
      }
    }

    return screenType();
  }
}
