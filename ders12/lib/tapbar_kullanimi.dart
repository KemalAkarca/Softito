import 'package:ders12/sayfa1.dart';
import 'package:ders12/sayfa2.dart';
import 'package:ders12/sayfa3.dart';
import 'package:flutter/material.dart';

class TapbarKullanimi extends StatefulWidget {
  const TapbarKullanimi({super.key});

  @override
  State<TapbarKullanimi> createState() => _TapbarKullanimiState();
}

class _TapbarKullanimiState extends State<TapbarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        bottom: TabBar(
          indicatorColor: Colors.purple.shade100,//alt çizgi rengi
          indicatorWeight: 3, // alt çizgi kalınlığı
          labelColor: const Color.fromARGB(255, 193, 40, 220), // seçilen tab rengi
          unselectedLabelColor: Colors.white, //seçilmeyen tab rengi
          
          tabs: 
        [
          Tab(
          child: Icon(Icons.looks_one,),
          ),
           Tab(
          child: Icon(Icons.looks_two,),
          ),
           Tab(
          child: Icon(Icons.looks_3,),
          ),
        ]),
      ),
      body: TabBarView(children: 
      [
        Sayfa1(),
        Sayfa2(),
        Sayfa3(),
      ]),
    ));
  }
}
/* 
Tabs kullanılarak aynı ekranda birden fazla sayfayı gösterebiliriz.
Tablara tıklayaarak veya parmak hareketiyle(sağ-sol) ile sayfalar arasından geçiş yapabilirsiniz
 */