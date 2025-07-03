import 'package:flutter/material.dart';
import 'package:pizza_ovenly/odeme_page.dart/odeme_ekran%C4%B1.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  List<String> languages = [
    "English",
    "Türkçe",
    "Polska",
    "Espanol",
    "Italiano",
    "Deutsch",
  ];
  Widget build(BuildContext context) {
    String? secilendeger;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset("resimler/Vector.png", height: 25, fit: BoxFit.cover),
            SizedBox(width: 3),
            Image.asset("resimler/isim.png", height: 25),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButton<String>(
                  focusColor: Colors.grey,
                  padding: EdgeInsets.only(right: 30),
                  elevation: 8,
                  hint: Text(
                    "English",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  value: secilendeger,
                  items: languages.map((String deger) {
                    return DropdownMenuItem<String>(
                      child: Text(deger),
                      value: deger,
                    );
                  }).toList(),
                  onChanged: (String? yenideger) {
                    setState(() {
                      secilendeger = yenideger;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Pizza resmi
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Container(
                width: 320,
                height: 200,
                child: Image.asset("resimler/pizza.png"),
              ),
            ),
            //Welcome to Ovenly
            Text(
              "Welcome to Ovenly",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            // Açıklama
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
              child: Text(
                "Your favorite pizzas, freshly baked and delivered to your doorstep with love and care!",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ),

            dortnokta(),
            SizedBox(height: 60),
            //ilk buton
            giris_butonu(),
            SizedBox(height: 10),
            kayit_butonu(),
          ],
        ),
      ),
    );
  }
}

class kayit_butonu extends StatelessWidget {
  const kayit_butonu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 370,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OdemeEkrani()),
          );
        },
        child: Text(
          "Sign me up ",
          style: TextStyle(
            color: const Color(0XFFB55638),
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 241, 239, 239),
        ),
      ),
    );
  }
}

class giris_butonu extends StatelessWidget {
  const giris_butonu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 370,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OdemeEkrani()),
          );
        },
        child: Text(
          "Log in",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Color(0XFFB55638)),
      ),
    );
  }
}

class dortnokta extends StatelessWidget {
  const dortnokta({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.2),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.2),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.2),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.2),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}
