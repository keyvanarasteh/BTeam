import 'package:flutter/material.dart';

List<String> imagesrow1 = [
  'assets/images/top10/t1.jpg',
  'assets/images/top10/t2.jpg',
  'assets/images/top10/t3.jpg',
  'assets/images/top10/t4.jpg',
  'assets/images/top10/t5.jpg',
  'assets/images/top10/t6.jpg',
  'assets/images/top10/t7.jpg',
  'assets/images/top10/t8.jpg',
  'assets/images/top10/t9.jpg',
  'assets/images/top10/t10.jpg',
];
List<String> imagesrow2 = [
  'assets/images/film/film1.png',
  'assets/images/film/film2.png',
  'assets/images/film/film3.png',
  'assets/images/film/film4.png',
  'assets/images/film/film5.png',
  'assets/images/film/film6.png',
  'assets/images/film/film7.png',
  'assets/images/film/film8.png',
  'assets/images/film/film9.png',
  'assets/images/film/film10.png',
];
List<String> imagesrow3 = [
  'assets/images/dizi/bbad.jpg',
  'assets/images/dizi/casa.jpg',
  'assets/images/dizi/crown.jpg',
  'assets/images/dizi/emily.jpg',
  'assets/images/dizi/friends.jpg',
  'assets/images/dizi/kardespayi.jpg',
  'assets/images/dizi/lucifer.jpg',
  'assets/images/dizi/queen.jpg',
  'assets/images/dizi/rick.jpg',
  'assets/images/dizi/stngs.jpg',
  'assets/images/dizi/wednesday.jpg',
];

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  String value = 'Göz at';
  var items = [
    'Göz at',
    'Diziler',
    'Filmler',
    'Yeni ve Popüler',
    'Listem',
    'Dile Göz At'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Image.asset(
                  'assets/images/netflix_logo.png',
                  height: 20,
                  width: 80,
                ),
                SizedBox(width: 20),
                DropdownButton(
                  underline: SizedBox(),
                  value: value,
                  //icon: ,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? new_value) {
                    setState(() {
                      value = new_value!;
                    });
                  },
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/f/f7/Reuni%C3%A3o_com_o_ator_norte-americano_Keanu_Reeves_cropped_2_%2846806576944%29_%28cropped%29.jpg',
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/dark_dizi.jpg'),
                  fit: BoxFit.fill,
                  opacity: .6,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BARBIE LIFE IN THE DREAMHOUSE',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Bu animasyon web dizisiyle, sarışın ikon Barbie ve büyüleyici arkadaşlarının kamera arkasındaki maceralarına katılın.',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.play_arrow_outlined),
                                    Text(' Oynat'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.info_outline),
                                    Text(' Bilgi'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.replay_outlined),
                          ),
                          Text('+18'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Netflix'te Popüler",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imagesrow1.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      child: Image.asset(imagesrow1[index]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Filmler',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imagesrow2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      child: Image.asset(imagesrow2[index]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Diziler',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imagesrow3.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      child: Image.asset(imagesrow3[index]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25),
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
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 125,
                                  height: 40,
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
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
