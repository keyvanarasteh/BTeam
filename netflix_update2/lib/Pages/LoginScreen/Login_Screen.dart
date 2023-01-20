// ignore: file_names
// ignore_for_file: prefer_const_constructors
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Pages/LoginScreen/screen_login.dart';
import 'package:netflix/Pages/MainPage/desktop.dart';
import 'package:netflix/Pages/MainPage/large.dart';
import 'package:netflix/Pages/MainPage/screen.dart';
import 'package:netflix/Pages/MainPage/tablet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

String value = 'Türkçe';
var items = ['Türkçe', 'İngilizce'];

class _LoginScreenState extends State<LoginScreen> {
  List<bool> expandeds = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            //netflix iconu
            title: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 15,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/1710/1710190.png',
                    color: Colors.red,
                    height: 15,
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/images/netflix_logo.png',
                  height: 20,
                  width: 80,
                ),
              ],
            ),
          ),
        ),
      ),
      //body
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 60, width: double.infinity),
                Container(
                    width: 450,
                    height: 540,
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Oturum Aç',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 390,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 83, 82, 82),
                                hintText: 'E-posta adresi',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 390,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 83, 82, 82),
                                hintText: 'Parola',
                              ),
                            ),
                          ),
                          // ignore: unnecessary_new

                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                minimumSize: Size(450, 50),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => screen2(),
                                  ),
                                );
                              },
                              child: Text('Oturum Aç'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 270),
                            child: Container(
                              height: 45,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ActionChip(
                                    labelPadding: EdgeInsets.all(2),
                                    avatar: CircleAvatar(
                                      backgroundColor: Colors.red,
                                    ),
                                    label: Text('Beni Hatırla'),
                                    onPressed: () => false,
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Netflix'e katılmak ister misiniz? Şimdi kaydolun.",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 211, 211, 211),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Bu sayfa robot olmadığınızı kanıtlamak için Google reCAPTCHA tarafından korunuyor. Daha fazlasını öğrenin.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 83, 82, 82),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Container(height: 60, width: double.infinity),
                Container(
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                  width: double.infinity,
                  height: 340,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Sorularınız mı var? 0850-390-7444 numaralı telefonu arayın.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 118, 118, 118),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Text(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 118, 118, 118),
                                      ),
                                      'SSS'),
                                  SizedBox(height: 10),
                                  Text(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 118, 118, 118),
                                      ),
                                      'Yatırımcı İlişkileri'),
                                  SizedBox(height: 10),
                                  Text(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 118, 118, 118),
                                      ),
                                      'Bize Ulaşın'),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      width: 125,
                                      height: 40,
                                      color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,

                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          Text(
                                            'Türkçe',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      "Netflix Türkiye"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,

                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Text(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 118, 118, 118),
                                      ),
                                      'Yardım Merkezi'),
                                  SizedBox(height: 10),
                                  Text(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 118, 118, 118),
                                      ),
                                      'Hız Testi'),
                                  SizedBox(height: 10),
                                  Text(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 118, 118, 118),
                                      ),
                                      "Sadece Netflix'te"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
