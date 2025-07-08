import 'package:burc_yorumlari/pages/burc_listesi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3:
            false, //iosta theme data uygulanbilmesi için bunun tanımlanabilmesi için false olmalı.
      ),
      home: BurcListesi(),
    );
  }
}
