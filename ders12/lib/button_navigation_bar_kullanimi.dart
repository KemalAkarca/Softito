import 'package:ders12/sayfa1.dart';
import 'package:ders12/sayfa2.dart';
import 'package:ders12/sayfa3.dart';
import 'package:flutter/material.dart';

class ButtonNavigationBarKullanimi extends StatefulWidget {
  const ButtonNavigationBarKullanimi({super.key});

  @override
  State<ButtonNavigationBarKullanimi> createState() =>
      _ButtonNavigationBarKullanimiState();
}

class _ButtonNavigationBarKullanimiState
    extends State<ButtonNavigationBarKullanimi> {
  //State özelliği olan seçilne bottomnavigationbar için index takip edilen değişken
  int secilenindex = 0;
  //Ekranda göstermek için istediğimiz sayfaların Listesi
  List<Widget> sayfaListesi = [Sayfa1(), Sayfa2(), Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.teal.shade300,
        foregroundColor: Colors.teal.shade50,
      ),
      body: sayfaListesi[secilenindex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: secilenindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
        selectedItemColor: Colors.teal.shade900,
        unselectedItemColor: Colors.teal,
        backgroundColor: Colors.teal.shade100,
        onTap: (index) {
          setState(() {
            secilenindex = index;
          });
        },
      ),
    );
  }
}
