import 'package:ders12/sayfa1.dart';
import 'package:ders12/sayfa2.dart';
import 'package:ders12/sayfa3.dart';
import 'package:flutter/material.dart';

class DrawerKullanimi extends StatefulWidget {
  const DrawerKullanimi({super.key});

  @override
  State<DrawerKullanimi> createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  int secilenindex = 0;
  List<Widget> sayfaListesi = [Sayfa1(), Sayfa2(), Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Kullanımı"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: sayfaListesi[secilenindex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text("Başlık",style: TextStyle(color: Colors.white,fontSize: 30),),),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                setState(() {
                  secilenindex=0;
                  Navigator.pop(context);
                });
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
              onTap: () {
                setState(() {
                  secilenindex=1;
                  Navigator.pop(context);
                });
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                setState(() {
                  secilenindex=2;
                  Navigator.pop(context);
                });
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
