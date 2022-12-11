// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: AppBar(
            shadowColor: Color.fromARGB(0, 255, 255, 255),
            backgroundColor: Color.fromARGB(115, 255, 255, 255),
            //netflix iconu
            title: Image.asset(
              'assets/images/netflix_logo.png',
              height: 20,
              width: 80,
            ),
            actions: [
              //türkçe seçim
              Container(
                width: 120,
                height: 10,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                  shape: BoxShape.rectangle,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Text(
                      'Türkçe',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              //Oturum aç
              ElevatedButton(
                onPressed: () {},
                child: Text('Oturum Aç'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      //body
      body: SingleChildScrollView(
        child: Column(
          children: [
            //ana ekran
            Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sınırsız film, dizi ve çok daha fazlası.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'İstediğiniz yerde izleyin. İstediğiniz zaman iptal edin.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'İzlemeye hazır mısınız? Üyelik oluşturmak veya üyeliğinize erişmek için e‑posta adresinizi girin.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'E-posta adresi',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Başlayın'),
                          Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(255, 31, 30, 30),
              width: double.infinity,
              height: 7,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: double.infinity,
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Televizyonunuzda izleyebilirsiniz.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 46,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Akıllı TV, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray oynatıcılar ve daha fazlasında seyredin.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 800,
                    height: 600,
                    child: Image.asset("assets/images/tv_2.png"),
                  ),
                )
              ],
            ),

            Container(
              color: Color.fromARGB(255, 31, 30, 30),
              width: double.infinity,
              height: 7,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 800,
                    height: 600,
                    child: Image.asset("assets/images/str.jpg"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: double.infinity,
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Çevrimdışı izlemek için içerikleri indirin.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 46,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'En sevdiğiniz içerikleri kolayca kaydedin ve her zaman izleyecek bir şeyleriniz olsun.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Color.fromARGB(255, 31, 30, 30),
              width: double.infinity,
              height: 7,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: double.infinity,
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'İstediğiniz her yerde izleyin.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 46,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Ekstra ücret ödemeden telefonda, tablette, bilgisayarda, televizyonda sınırsız film ve dizi izleyin.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 800,
                    height: 600,
                    child: Image.asset("assets/images/pc.png"),
                  ),
                )
              ],
            ),

            Container(
              color: Color.fromARGB(255, 31, 30, 30),
              width: double.infinity,
              height: 7,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 800,
                    height: 600,
                    child: Image.asset("assets/images/child.png"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: double.infinity,
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Çocuklarınız için profiller oluşturun.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 46,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Üyeliğinize dâhil olan bu ücretsiz deneyim sayesinde çocuklarınız, sadece onlara özel bir alanda en sevdikleri karakterlerle maceralara atılabilir.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Color.fromARGB(255, 31, 30, 30),
              width: double.infinity,
              height: 7,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 50,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 620,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Sıkça Sorulan Sorular',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    color: Color.fromARGB(255, 59, 57, 57),
                    height: 50,
                    width: 390,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Netflix Nedir?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 218,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Color.fromARGB(255, 59, 57, 57),
                    height: 50,
                    width: 390,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Netflix'in maliyeti nedir?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 136,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Color.fromARGB(255, 59, 57, 57),
                    height: 50,
                    width: 390,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Nerede izleyebilirim?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 159,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Color.fromARGB(255, 59, 57, 57),
                    height: 50,
                    width: 390,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Nasıl iptal ederim?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 177,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Color.fromARGB(255, 59, 57, 57),
                    height: 50,
                    width: 390,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Netflix'te ne izleyebilirim?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 124,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Color.fromARGB(255, 59, 57, 57),
                    height: 50,
                    width: 390,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Netflix çocuklar için uygun mudur?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 51,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'İzlemeye hazır mısınız? Üyelik oluşturmak veya üyeliğinize erişmek için e‑posta adresinizi girin.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 390,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        hintText: 'E-posta adresi',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Başlayın'),
                          Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(255, 31, 30, 30),
              width: double.infinity,
              height: 7,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 50,
            ),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
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
                                height: 120,
                              ),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'SSS'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Hesap'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Yatırımcı İlişkileri'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Hediye Kartı Kullan'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Kullanım Koşulları'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Çerez Tercihleri'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Bize Ulaşın'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Yasal Hükümler'),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: 125,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    Text(
                                      'Türkçe',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
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
                                height: 120,
                              ),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Yardım Merkezi'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Medya Merkezi'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'İş İmkanları'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'İzleme Yolları'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Gizlilik'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Kurumsal Bilgiler'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
                                  ),
                                  'Hız Testi'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 118, 118, 118),
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
    );
  }
}
